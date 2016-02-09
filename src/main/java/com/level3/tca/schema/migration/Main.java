/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.level3.tca.schema.migration;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/**
 *
 * @author zendle.joe
 */
public class Main {

   public static final Integer WATCH_WARN = 501;
   public static final Integer WARN_FAIL = 502;
   public static final Integer EMAIL_ALERT = 1003;
   public static final Integer DC_ALERT = 1001;

// alert_action_paramater id element name              
// -- ------- ----------------- 
// 1  1001    bandwidth_upgrade 
// 2  1001    rate_2x           
// 3  1001    rate_3x           
// 4  1001    notify            
// 21 1003    email_id          
   public static final Integer BANDWIDTH_UPGRADE_PARM = 1;
   public static final Integer RATE_2X_PARM = 2;
   public static final Integer RATE_3X_PARM = 3;
   public static final Integer NOTIFY_PARM = 4;
   public static final Integer EMAIL_PARM = 21;

   public static final String EMAIL_PARM_KEY = "notify";
   public static final String PERIOD_PARM_KEY = "notification_period";
   public static final String TIMEZONE_PARM_KEY = "timezone";
   public static final String RATE_PARM_KEY = "rate";

   private ResourceMgr resources = null;

   public static void main(String[] args) throws SQLException, ClassNotFoundException, IOException {

      if (args.length < 1) {
         System.err.println("usage " + Main.class.getCanonicalName() + " outputFile.name");
         return;
      }
      try (PrintWriter pw = new PrintWriter(new FileWriter(args[0]))) {

         Main main = new Main();
         main.doit(pw);
 
      }
   }


   public void doit(PrintWriter pw) throws ClassNotFoundException {

      try (Connection conn = Db.createConnection()) {

         resources = new ResourceMgr(conn);

         pw.println(resources.makeInserts());

         try (ResultSet rs = Db.getAllTcas(conn)) {

            Map<String, String> alertParms = new HashMap<>();
            while (rs.next()) {
               Long metricId = rs.getLong("ma_m_id");
               Long actionAlertId = rs.getLong("aa_a_id");
               int thresholdActionParameterId = rs.getInt("tap_id");

               // collect name and value as these are the only variants across metric id and action alert id
               String tapName = rs.getString("tap_name");
               String aapValue = rs.getString("aap_value");
               alertParms.put(tapName, aapValue);

               if (thresholdActionParameterId == 2) {
                  String sql = createEmailTcaInserts(alertParms, rs);
                  pw.println("-- EMAIL TCA for metric id: "
                          + metricId + " + actionAlertId id: " + actionAlertId + " parms: " + alertParms.toString());
                  pw.println(sql);
               }
               if (thresholdActionParameterId == 8) {
                  String sql = createDCTcaInserts(alertParms, rs);
                  pw.println("-- DC TCA for metric id: "
                          + metricId + " + actionAlertId id: " + actionAlertId + " parms: " + alertParms.toString());
                  pw.println(sql);
               }
            }
         }
      } catch (Exception e) {
         e.printStackTrace();
      }

   }


   private String createEmailTcaInserts(Map<String, String> alertParms, ResultSet rs) throws SQLException {

      StringBuilder ret = new StringBuilder();
      String circuitId = rs.getString("circuit_id");
      String uuid = rs.getString("uuid");
      String levelString = rs.getString("aa_level"); // WARN or FAIL
//      String emailAddress = rs.getString("aa_value");
      String emailAddress = "alexander.metelkin@level3.com";
      String resUUID = resources.lookupResource(circuitId, uuid);

      Float value = rs.getFloat("ma_fail");
      Integer level = WARN_FAIL;

      if ("WARN".equals(levelString)) {
         value = rs.getFloat("ma_warn");
         level = WATCH_WARN;

      }

      if (value < 0) {
         return "-- WARNING invalid level: " + level + "=" + value;
      }

      String tcaUUID = Util.uuidFromSeed();
      String metricUUID = Util.uuidFromSeed();
      String alertUUID = Util.uuidFromSeed();
      String actionUUID = Util.uuidFromSeed();
      ret.append(Db.insertTcaInstance(tcaUUID, resUUID, metricUUID, rs));

      ret.append(Db.insertMetric(metricUUID, level, value, rs));
      ret.append(Db.insertAlert(alertUUID, metricUUID, alertParms, rs));

      ret.append(Db.insertAction(actionUUID, alertUUID, EMAIL_ALERT));
      ret.append(Db.insertParameter(actionUUID, 21, emailAddress));

      return ret.toString();
   }

   private String createDCTcaInserts(Map<String, String> alertParms, ResultSet rs) throws SQLException {
      // create 2 seperate tca's one for WARNING and WATCH
      String circuitId = rs.getString("circuit_id");
      String uuid = rs.getString("uuid");
      String upgradeValue = rs.getString("aa_value"); // should be AUTO or numeric 
      String levelString = rs.getString("aa_level"); // WARN or FAIL
//      String emailAddress = rs.getString("aa_value");
//         String emailNotify = alertParms.get(EMAIL_PARM_KEY); // who to send the alert to
      String emailNotify = "alexander.metelkin@level3.com";
      String resUUID = resources.lookupResource(circuitId, uuid);

      StringBuilder ret = new StringBuilder();

      Float value = rs.getFloat("ma_fail");
      Integer level = WARN_FAIL;

      if ("WARN".equals(levelString)) {
         value = rs.getFloat("ma_warn");
         level = WATCH_WARN;

      }

      if (value < 0) {
         return "-- WARNING invalid level: " + level + "=" + value;
      }

      String tcaUUID = Util.uuidFromSeed();
      String metricUUID = Util.uuidFromSeed();
      String alertUUID = Util.uuidFromSeed();
      String actionUUID = Util.uuidFromSeed();
      ret.append(Db.insertTcaInstance(tcaUUID, resUUID, metricUUID, rs));

      ret.append(Db.insertMetric(metricUUID, level, value, rs));
      ret.append(Db.insertAlert(alertUUID, metricUUID, alertParms, rs)); // timezone/period are extracted here

      ret.append(Db.insertAction(actionUUID, alertUUID, DC_ALERT));

      List<String> rates = Util.strToBandwidthRates(alertParms.get(RATE_PARM_KEY));
      String two_x = rates.get(1);
      String three_x = two_x;
      if (rates.size() > 2) {
         three_x = rates.get(3);
      }

      ret.append(Db.insertParameter(actionUUID, BANDWIDTH_UPGRADE_PARM, upgradeValue));
      if ("AUTO".equals(upgradeValue)) {
         // other action paramaters must contain both name = "rate_2x" and name == "rate_3x"
         ret.append(Db.insertParameter(actionUUID, RATE_2X_PARM, two_x));
         ret.append(Db.insertParameter(actionUUID, RATE_3X_PARM, three_x));
      } else {
         // other action paramaters must contain both name = "rate_2x" and name == "rate_3x"
         ret.append(Db.insertParameter(actionUUID, RATE_2X_PARM, two_x));
      }
      if (emailNotify != null && !emailNotify.isEmpty()) {
         ret.append(Db.insertParameter(actionUUID, NOTIFY_PARM, emailNotify));
      }

      return ret.toString();
   }
}
