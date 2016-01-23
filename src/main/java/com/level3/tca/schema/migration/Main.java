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
            + Util.stringize(tcaUuid)
            + Util.stringize(resUuid)
            + Util.stringize(metricUuid)
            + Util.integerize(rs.getString("ma_qos"))
            + Util.stringize(rs.getString("create_email"))
            + Util.epochize(rs.getTimestamp("create_date"))
            + Util.stringize(rs.getString("update_email"))
            + Util.epochize(rs.getTimestamp("update_date"),false)
            + " ) ");
    return buf.toString();
  }

  private String insertResource(ResultSet rs) throws SQLException {

    Map map = resources.makeResourceMap(rs.getString("circuit_id"), rs.getString("uuid"));
    StringBuffer buf = new StringBuffer();
    buf.append("insert into resource ( guid, circuit, virtual_circuit, bclli, rgroup ) values ( "
            + Util.stringize(map.get(ResourceMgr.GUID))
            + Util.stringize(map.get(ResourceMgr.CIRCUIT))
            + Util.stringize(map.get(ResourceMgr.VCIRCUIT))
            + Util.stringize(map.get(ResourceMgr.CLLI))
            + Util.stringize("")
            + " ) ");
    return buf.toString();
  }

  private void insertMetric(UUID metricUUID, ResultSet rs) throws SQLException {
    StringBuffer buf = new StringBuffer();
    buf.append("INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ( " 
            + Util.stringize(metricUUID)
            + Util.integerize(rs.getString("tm_name"))
            + Util.integerize("1")   // ABOVE
     + " ) " ); // + '', 0, 0, '', 0);

    throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
  }

  private void insertAction(ResultSet rs) {
    throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
  }

  private void newThresholdActionParameter(ResultSet rs) {
    throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
  }

  private void createTcaInserts(ResultSet rs) throws SQLException {
    UUID tcaUUID = UUID.randomUUID();
    UUID metricUUID = UUID.randomUUID();
    UUID alertUUID = UUID.randomUUID();
    UUID actionUUID = UUID.randomUUID();
    UUID alertActionParamUUID = UUID.randomUUID();

    String circuitId = rs.getString("circuit_id");
    String uuid = rs.getString("uuid");

    UUID resUUID = resources.lookupResource(circuitId, uuid);
    
    String res = insertTcaInstance(tcaUUID, resUUID, metricUUID, rs);

    System.out.println(res);

  }

}
