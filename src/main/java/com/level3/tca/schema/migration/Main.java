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
import java.util.Map;
import java.util.Objects;
import java.util.UUID;

/**
 *
 * @author zendle.joe
 */
public class Main {

  Long prevCircuitId = null;
  Long prevMetricId = null;
  Long prevActionAlertId = null;
  Long prevThresholdActinParameterId = null; // BUSINESS_HRS, America/Chicago , etc

  UUID resUUID, tcaUUID, metricUUID, alertUUID, actionUUID, alertActionParamUUID = null;

  private ResourceMgr resources = new ResourceMgr();

  public static void main(String[] args) throws SQLException, ClassNotFoundException {

    Main main = new Main();
    main.doit(args);
  }

  public void doit(String[] args) throws ClassNotFoundException, SQLException {

    Connection conn = Db.createConnection();
    ResultSet rs = Db.getEmAll(conn);

    while (rs.next()) {
      Long circuitId = rs.getLong("ma_c_id");
      Long metricId = rs.getLong("ma_m_id");
      Long actionAlertId = rs.getLong("aa_a_id");
      Long thresholdActinParameterId = rs.getLong("tap_id");

      if (!Objects.equals(circuitId, prevCircuitId)) {
        prevCircuitId = circuitId;
        tcaUUID = UUID.randomUUID();
        resUUID = resources.addResource(rs.getString("circuit_id"), rs.getString("uuid"));
        metricUUID = UUID.randomUUID();

        insertTcaInstance(rs);
      }
      if (!Objects.equals(metricId, prevMetricId)) { // maps to metric
        prevMetricId = metricId;
        insertMetric(rs);
      }
      if (!Objects.equals(actionAlertId, prevActionAlertId)) { // maps to action
        prevActionAlertId = actionAlertId;
        insertAction(rs);
      }
      if (!Objects.equals(thresholdActinParameterId, prevThresholdActinParameterId)) {
        prevThresholdActinParameterId = thresholdActinParameterId;
        newThresholdActionParameter(rs);
      }

    }

  }

  private String insertTcaInstance(ResultSet rs) throws SQLException {

    StringBuffer buf = new StringBuffer();
    buf.append("insert into tca_instance ( guid, resource, metric, qos, owner, created_on, modified_by, modified_on) values ( "
            + stringize(tcaUUID)
            + stringize(resUUID)
            + stringize(metricUUID)
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
            + stringize(resUUID)
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

  String stringize(Object obj, Boolean ... comma) {
    Boolean ret = true;
    if ( comma.length > 0 )ret = (Boolean) comma[0];
    return "'" + obj.toString() + "'" + (ret == true ? "," : "");
  }

  String toEpoch(String timestamp, Boolean comma) {
    return "(SELECT EXTRACT(EPOCH FROM TIMESTAMP '" + timestamp + "') " + (comma == true ? "," : "");
  }

}
