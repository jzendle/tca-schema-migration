/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.level3.tca.schema.migration;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author zendle.joe
 */
public class Main {

  Long prevMetricId = null;
  Long prevActionAlertId = null;
  Long prevThresholdActinParameterId = null; // BUSINESS_HRS, America/Chicago , etc
  Long prevActionAlertParameterId = null; // BUSINESS_HRS, America/Chicago , etc

  // Boolean firstAAP = null;
  //UUID resUUID, tcaUUID, metricUUID, alertUUID, actionUUID, alertActionParamUUID = null;
  private ResourceMgr resources = null;

  public static void main(String[] args) throws SQLException, ClassNotFoundException {

    Main main = new Main();
    main.doit(args);
  }

  public void doit(String[] args) throws ClassNotFoundException {

    ResultSet rs = null;
    try ( Connection conn = Db.createConnection()) {
      
      resources = new ResourceMgr(conn);

      System.out.println(resources);
      
      rs = Db.getAllTcas(conn);

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
          System.out.println("EMAIL metric id: " + metricId + " + actionAlertId id: " + actionAlertId + " parms: " + alertParms.toString());
          createTcaInserts(rs);
        }
        if (thresholdActinParameterId == 8) {
          System.out.println("DC metric id: " + metricId + " + actionAlertId id: " + actionAlertId + " parms: " + alertParms.toString());
        }
      }
    } catch (Exception e) {
      e.printStackTrace();
    }

  }

  private String insertTcaInstance(UUID tcaUuid, UUID resUuid, UUID metricUuid, ResultSet rs) throws SQLException {

    StringBuffer buf = new StringBuffer();
    buf.append("insert into tca_instance ( guid, resource, metric, qos, owner, created_on, modified_by, modified_on) values ( "
            + stringize(tcaUuid)
            + stringize(resUuid)
            + stringize(metricUuid)
            + stringize(rs.getString("qos"))
            + stringize(rs.getString("create_email"))
            + rs.getTimestamp("create_date").getTime()
            + stringize(rs.getString("update_email"))
            + rs.getTimestamp("update_date").getTime()
            + " ) ");
    return buf.toString();
  }

  private String insertResource(ResultSet rs) throws SQLException {

    Map map = resources.makeResourceMap(rs.getString("circuit_id"), rs.getString("uuid"));
    StringBuffer buf = new StringBuffer();
    buf.append("insert into resource ( guid, circuit, virtual_circuit, bclli, rgroup ) values ( "
            + stringize(map.get("uuid"))
            + stringize(map.get("circuit"))
            + stringize(map.get("vcircuit"))
            + stringize(map.get("clli"))
            + stringize("")
            + " ) ");
    return buf.toString();
  }

  private void insertMetric(ResultSet rs) {
    StringBuffer buf = new StringBuffer();
    buf.append("INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ( " + "");
    // + '', 0, 0, '', 0);

    throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
  }

  private void insertAction(ResultSet rs) {
    throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
  }

  private void newThresholdActionParameter(ResultSet rs) {
    throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
  }

  String stringize(Object obj, Boolean... comma) {
    Boolean ret = true;
    if (comma.length > 0) {
      ret = (Boolean) comma[0];
    }
    return "'" + obj.toString() + "'" + (ret == true ? "," : "");
  }

  String toEpoch(String timestamp, Boolean comma) {
    return "(SELECT EXTRACT(EPOCH FROM TIMESTAMP '" + timestamp + "') " + (comma == true ? "," : "");
  }

  private void createTcaInserts(ResultSet rs) throws SQLException {
    UUID tcaUUID = UUID.randomUUID();
    UUID metricUUID = UUID.randomUUID();
    UUID alertUUID = UUID.randomUUID();
    UUID actionUUID = UUID.randomUUID();
    UUID alertActionParamUUID = UUID.randomUUID();

    String res = insertResource(rs);

    System.out.println("res");

  }

}
