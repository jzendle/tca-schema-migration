/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.level3.tca.schema.migration;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;

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

   Long prevMetricId = null;
   Long prevActionAlertId = null;
   Long prevThresholdActinParameterId = null; // BUSINESS_HRS, America/Chicago , etc
   Long prevActionAlertParameterId = null; // BUSINESS_HRS, America/Chicago , etc

   private ResourceMgr resources = null;

   public static void main(String[] args) throws SQLException, ClassNotFoundException {

      Main main = new Main();
      main.doit(args);
   }

   public void doit(String[] args) throws ClassNotFoundException {

      try (Connection conn = Db.createConnection()) {

         resources = new ResourceMgr(conn);

         try (ResultSet rs = Db.getAllTcas(conn)) {

            Map<String, String> alertParms = new HashMap<>();

            while (rs.next()) {
               Long metricId = rs.getLong("ma_m_id");
               Long actionAlertId = rs.getLong("aa_a_id");
               int thresholdActinParameterId = rs.getInt("tap_id");
               if (!Objects.equals(metricId, prevMetricId)) { // maps to new TCA
                  prevMetricId = metricId;
               }
               if (!Objects.equals(actionAlertId, prevActionAlertId)) { // maps to action
                  prevActionAlertId = actionAlertId;
               }

               // collect name and value as these are the only variants across metric id and action alert id
               String tapName = rs.getString("tap_name");
               String aapValue = rs.getString("aap_value");
               alertParms.put(tapName, aapValue);

               if (thresholdActinParameterId == 2) {
                  String sql = createEmailTcaInserts(alertParms, rs);
                  System.out.println("-- EMAIL TCA for metric id: " + 
                          metricId + " + actionAlertId id: " + actionAlertId + " parms: " + alertParms.toString());
                  System.out.println(sql);
               }
               if (thresholdActinParameterId == 8) {
                  String sql = createDCTcaInserts(alertParms, rs);
                  System.out.println("-- DC TCA for metric id: " + 
                          metricId + " + actionAlertId id: " + actionAlertId + " parms: " + alertParms.toString());
                  System.out.println(sql);
               }
            }
         }
      } catch (Exception e) {
         e.printStackTrace();
      }

   }

   private String insertTcaInstance(UUID tcaUuid, UUID resUuid, UUID metricUuid, ResultSet rs) throws SQLException {

      StringBuilder buf = new StringBuilder();
      buf.append("insert into tca_instance ( guid, resource, metric, qos, owner, created_on, modified_by, modified_on) values ( "
              + Util.stringize(tcaUuid)
              + Util.stringize(resUuid)
              + Util.stringize(metricUuid)
              + Util.integerize(rs.getString("ma_qos"))
              + Util.stringize(rs.getString("create_email"))
              + Util.epochize(rs.getTimestamp("create_date"))
              + Util.stringize(rs.getString("update_email"))
              + Util.epochize(rs.getTimestamp("update_date"), false)
              + " ); \n");
      return buf.toString();
   }

   private String insertResource(ResultSet rs) throws SQLException {

      Map map = resources.makeResourceMap(rs.getString("circuit_id"), rs.getString("uuid"));
      StringBuilder buf = new StringBuilder();
      buf.append("insert into resource ( guid, circuit, virtual_circuit, bclli, rgroup ) values ( "
              + Util.stringize(map.get(ResourceMgr.GUID))
              + Util.stringize(map.get(ResourceMgr.CIRCUIT))
              + Util.stringize(map.get(ResourceMgr.VCIRCUIT))
              + Util.stringize(map.get(ResourceMgr.CLLI))
              + Util.stringize("", false) // groupId not used
              + " );\n");
      return buf.toString();
   }

   private String insertMetric(UUID metricUUID, Integer level, Float threshold, ResultSet rs) throws SQLException {

      String metricName = rs.getString("tm_name");

      StringBuilder buf = new StringBuilder();
      buf.append("INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ( "
              + Util.stringize(metricUUID)
              + Util.integerize(Util.metricToId(metricName)) // 501-504
              + Util.integerize("1") // ABOVE
              + Util.stringize(Util.thresholdToString(metricName, threshold)) // stringized value of threshold 200X 3.0, etc
              + Util.integerize(level, false)
              + " );\n");

      return buf.toString();
   }

   private String insertAlert(UUID alertUUID, UUID metricUUID, Map<String, String> alertParms, ResultSet rs) {
      StringBuilder buf = new StringBuilder();

      buf.append("INSERT INTO alert (guid, metric, timezone, period) VALUES ( "
              + Util.stringize(alertUUID)
              + Util.stringize(metricUUID)
              + Util.integerize(Util.tzToInt(alertParms.get(TIMEZONE_PARM_KEY))) // 2001-2006
              + Util.integerize(Util.periodToInt(alertParms.get(PERIOD_PARM_KEY)), false) // 1001-1003 
              + " );\n");

      return buf.toString();
   }

   private String insertAction(UUID actionUUID, UUID alertUUID, int action) {
      StringBuilder buf = new StringBuilder();

      buf.append("INSERT INTO action (guid, alert, action_type) VALUES ( "
              + Util.stringize(actionUUID)
              + Util.stringize(alertUUID)
              + Util.integerize(action, false) // EMAIL or DC
              + " );\n");

      return buf.toString();
   }

   private String insertParameter(UUID actionUUID, int type, String value) {
      StringBuilder buf = new StringBuilder();

      buf.append("INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ( "
              + Util.stringize(actionUUID)
              + Util.integerize(type)
              + Util.stringize(value, false)
              + " );\n");

      return buf.toString();
   }

   private String createEmailTcaInserts(Map<String, String> alertParms, ResultSet rs) throws SQLException {

      StringBuilder ret = new StringBuilder();
      // create 2 seperate tca's one for WARNING and WATCH
      String circuitId = rs.getString("circuit_id");
      String uuid = rs.getString("uuid");

      UUID resUUID = resources.lookupResource(circuitId, uuid);

      // value < 0  --> do not create
      List<Float> values = new ArrayList<>();
      List<Integer> levels = new ArrayList<>();
      values.add(rs.getFloat("ma_warn"));
      levels.add(WATCH_WARN);
      values.add(rs.getFloat("ma_fail"));
      levels.add(WARN_FAIL);

      for (int i = 0; i < values.size(); i++) {

         Float value = values.get(i);
         Integer level = levels.get(i);

         if (value < 0) {
            continue;
         }

         UUID tcaUUID = UUID.randomUUID();
         UUID metricUUID = UUID.randomUUID();
         UUID alertUUID = UUID.randomUUID();
         UUID actionUUID = UUID.randomUUID();
         ret.append(insertTcaInstance(tcaUUID, resUUID, metricUUID, rs));

         ret.append(insertMetric(metricUUID, level, value, rs));
         ret.append(insertAlert(alertUUID, metricUUID, alertParms, rs));

         ret.append(insertAction(actionUUID, alertUUID, EMAIL_ALERT));
         ret.append(insertParameter(actionUUID, 21, rs.getString("aa_value")));

      }

      return ret.toString();
   }

   private String createDCTcaInserts(Map<String, String> alertParms, ResultSet rs) throws SQLException {
      // create 2 seperate tca's one for WARNING and WATCH
      String circuitId = rs.getString("circuit_id");
      String uuid = rs.getString("uuid");
      String upgradeValue = rs.getString("aa_value"); // should be AUTO or numeric 
      UUID resUUID = resources.lookupResource(circuitId, uuid);

      StringBuilder ret = new StringBuilder();

      // value < 0  --> do not create
      List<Float> values = new ArrayList<>();
      List<Integer> levels = new ArrayList<>();
      values.add(rs.getFloat("ma_warn"));
      levels.add(WATCH_WARN);
      values.add(rs.getFloat("ma_fail"));
      levels.add(WARN_FAIL);

      for (int i = 0; i < values.size(); i++) {

         Float value = values.get(i);
         Integer level = levels.get(i);

         if (value < 0) { // 
            continue;
         }

         UUID tcaUUID = UUID.randomUUID();
         UUID metricUUID = UUID.randomUUID();
         UUID alertUUID = UUID.randomUUID();
         UUID actionUUID = UUID.randomUUID();
         ret.append(insertTcaInstance(tcaUUID, resUUID, metricUUID, rs));

         ret.append(insertMetric(metricUUID, level, value, rs));
         ret.append(insertAlert(alertUUID, metricUUID, alertParms, rs)); // timezone/period are extracted here

         ret.append(insertAction(actionUUID, alertUUID, DC_ALERT));

         String emailNotify = alertParms.get(EMAIL_PARM_KEY); // who to send the alert to
         List<String> rates = Util.strToBandwidthRates(alertParms.get(RATE_PARM_KEY));
         String two_x = rates.get(1);
         String three_x = two_x;
         if (rates.size() > 2) {
            three_x = rates.get(3);
         }

         ret.append(insertParameter(actionUUID, BANDWIDTH_UPGRADE_PARM, upgradeValue));
         if ("AUTO".equals(upgradeValue)) {
            // other action paramaters must contain both name = "rate_2x" and name == "rate_3x"
            ret.append(insertParameter(actionUUID, RATE_2X_PARM, two_x));
            ret.append(insertParameter(actionUUID, RATE_3X_PARM, three_x));
         } else {
            // other action paramaters must contain both name = "rate_2x" and name == "rate_3x"
            ret.append(insertParameter(actionUUID, RATE_2X_PARM, two_x));
         }
         if ( emailNotify != null && !emailNotify.isEmpty())
            ret.append(insertParameter(actionUUID, NOTIFY_PARM, emailNotify));

      }

      return ret.toString();
   }
}
