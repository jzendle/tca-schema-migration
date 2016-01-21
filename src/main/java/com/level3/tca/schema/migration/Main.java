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

	Boolean firstAAP = null;
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
			// Long circuitId = rs.getLong("ma_c_id");
			Long metricId = rs.getLong("ma_m_id");
			Long actionAlertId = rs.getLong("aa_a_id");
			Long actionAlertParameterId = rs.getLong("aap_a_id");
			Long thresholdActinParameterId = rs.getLong("tap_id");

//      if (!metricId.equals(prevMetricId)) {
//        prevMetricId = metricId;
//        tcaUUID = UUID.randomUUID();
//        resUUID = resources.addResource(rs.getString("circuit_id"), rs.getString("uuid"));
//        metricUUID = UUID.randomUUID();
//
//		  System.out.println("new metric id: " + metricId);
//        // insertTcaInstance(rs);
//      }
			if (!Objects.equals(metricId, prevMetricId)) { // maps to metric
				prevMetricId = metricId;
				firstAAP = false;
				System.out.println("new metric id: " + metricId + " CREATE TCA AND METRIC");
//        insertMetric(rs);
			}
//			if (!Objects.equals(actionAlertId, prevActionAlertId)) { // maps to action
//				prevActionAlertId = actionAlertId;
//				System.out.println("   new actionAlertId id: " + actionAlertId);
//
////        insertAction(rs);
//			}
			if (!Objects.equals(actionAlertParameterId, prevActionAlertParameterId)) { // maps to action
				prevActionAlertParameterId = actionAlertParameterId;
				firstAAP =true;
				System.out.println("      new actionAlertParameterId id: " + actionAlertParameterId + " CREATE ALERT");

//        insertAction(rs);
			}

			if ( firstAAP == true) {
				firstAAP = false;
				System.out.println("         CREATE ACTION");
			}
			System.out.println("         thresholdActinParameterId: " + thresholdActinParameterId + " CREATE ALERT_ACTION_PARAMETER");
			/*		switch(thresholdActinParameterId) {
			case (1):
				break;
			case 2:
				break;
			case 3:
				break;
			default:
				System.out.println("      ");
				break
				
		}
      if (!Objects.equals(thresholdActinParameterId, prevThresholdActinParameterId)) {
        prevThresholdActinParameterId = thresholdActinParameterId;
        newThresholdActionParameter(rs);
      }
			 */
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

}
