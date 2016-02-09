/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.level3.tca.schema.migration;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.Map;

/**
 *
 * @author zendle.joe
 */
public class Db {

	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	// static final String JDBC_DRIVER = "com.vertica.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost/npm_dba";
	// static final String DB_URL = "jdbc:vertica://invertidcplp301.twtelecom.com:5433/NPMP";

	//  Database credentials
	static final String USER = "jzendle";
	// static final String USER = "npm_batch";
	static final String PASS = "jzendle";
	// static final String PASS = "batch3";

	static final String GET_EM_ALL_SQL
		= "SELECT DISTINCT\n"
		+ "    MA.m_id      AS ma_m_id,\n"
		+ "    MA.c_id      AS ma_c_id,\n"
		+ "    MA.metric_id AS ma_met_id,\n"
		+ "    C.circuit_id AS circuit_id,\n"
		+ "    C.uuid,\n"
		+ "    C.c_id,\n"
		+ "    C.create_date,\n"
		+ "    C.create_email,\n"
		+ "    C.update_date,\n"
		+ "    C.update_email,\n"
		+ "    AA.a_id          AS aa_a_id,\n"
		+ "    AA.action_id     AS aa_action_id,\n"
		+ "    AA.level         AS aa_level,\n"
		+ "    AA.value         AS aa_value,\n"
		+ "    AAP.parameter_id AS aap_parameter_id,\n"
		+ "    AAP.value        AS aap_value,\n"
		+ "    TAP.id           AS tap_id,\n"
		+ "    TAP.name         AS tap_name,\n"
		+ "    TAP.unit         AS tap_unit,\n"
		+ "    TM.name          AS tm_name,\n"
		+ "    MA.qos           AS ma_qos,\n"
		+ "    MA.warn          AS ma_warn,\n"
		+ "    MA.fail          AS ma_fail,\n"
		+ "    TM.display_name  AS tm_display_name,\n"
		+ "    TM.unit          AS tm_unit,\n"
		+ "    TA.name          AS ta_name,\n"
		+ "    TA.unit          AS ta_unit\n"
		+ "FROM npm_dba.circuit_alert C\n"
		+ "JOIN npm_dba.metric_alert MA ON MA.c_id = C.c_id\n"
		+ "JOIN npm_dba.threshold_metric TM ON TM.id = MA.metric_id\n"
		+ "JOIN npm_dba.action_alert AA ON MA.m_id = AA.m_id\n"
		+ "JOIN npm_dba.action_alert_parameter AAP ON AAP.a_id = AA.a_id\n"
		+ "JOIN npm_dba.threshold_action TA ON TA.id = AA.action_id\n"
		+ "JOIN npm_dba.threshold_action_parameter TAP ON TAP.id = AAP.parameter_id\n"
		+ "    -- where aa.action_id = 2\n"
		+ "    -- WHERE\n"
		+ "    -- circuit_id = '16/KFFN/110325/TWCS'\n"
		+ "    -- circuit_id ='44/KEFN/112036/TWCS'\n"
		+ "    -- circuit_id ='41/KEFN/105668/TWCS'\n"
		+ "ORDER BY\n"
		+ "    ma_m_id,\n"
		+ "    aa_a_id,\n"
		+ "    tap_id";

	private final static String RESOURCES_SQL = " select distinct circuit_id, uuid from circuit_alert ";

	public static void main(String[] args) throws SQLException, ClassNotFoundException {

		try (Connection conn = Db.createConnection()) {

			System.out.println("Connecting to database...");

			try (Statement stmt = conn.createStatement()) {
				String sql;
				sql = GET_EM_ALL_SQL;
				try (ResultSet rs = stmt.executeQuery(sql)) {
					ResultSetMetaData rsmd = rs.getMetaData();
					int columnsNumber = rsmd.getColumnCount();

					while (rs.next()) {
						for (int i = 1; i <= columnsNumber; i++) {
							if (i > 1) {
								System.out.print(",  ");
							}
							String columnValue = rs.getString(i);
							System.out.print(columnValue + " " + rsmd.getColumnName(i));
						}
						System.out.println("");
					}
				}
			}
		}
	}

	static Connection createConnection() throws ClassNotFoundException, SQLException {
		Class.forName(JDBC_DRIVER);
		return DriverManager.getConnection(DB_URL, USER, PASS);

	}

	static ResultSet getAllTcas(Connection conn) throws ClassNotFoundException, SQLException {
		Statement stmt = conn.createStatement();
		return stmt.executeQuery(GET_EM_ALL_SQL);
	}

	static ResultSet getResources(Connection conn) throws SQLException {
		Statement stmt = conn.createStatement();
		return stmt.executeQuery(RESOURCES_SQL);
	}

	public static String insertAction(String actionUUID, String alertUUID, int action) {
		StringBuilder buf = new StringBuilder();
		buf.append("INSERT INTO action (guid, alert, action_type) VALUES ( " + Util.stringize(actionUUID) + Util.stringize(alertUUID) + Util.integerize(action, false) // EMAIL or DC
		 + " );\n");
		buf.append("-- DELETE from  action where guid = " + Util.stringize(actionUUID, false) + ";\n");
		return buf.toString();
	}

	public static String insertTcaInstance(String tcaUuid, String resUuid, String metricUuid, ResultSet rs) throws SQLException {
		StringBuilder buf = new StringBuilder();
		buf.append("INSERT INTO tca_instance ( guid, resource, metric, qos, owner, created_on, modified_by, modified_on) values ( " + Util.stringize(tcaUuid) + Util.stringize(resUuid) + Util.stringize(metricUuid) + Util.integerize(rs.getString("ma_qos")) + Util.stringize(rs.getString("create_email")) + Util.epochize(rs.getTimestamp("create_date")) + Util.stringize(rs.getString("update_email")) + Util.epochize(rs.getTimestamp("update_date"), false) + " ); \n");
		buf.append("-- DELETE from tca_instance where guid = " + Util.stringize(tcaUuid, false) + ";\n");
		return buf.toString();
	}

	public static String insertMetric(String metricUUID, Integer level, Float threshold, ResultSet rs) throws SQLException {
		String metricName = rs.getString("tm_name");
		StringBuilder buf = new StringBuilder();
		buf.append("INSERT INTO metric (guid, metric, threshold_type, threshold, level) VALUES ( " + Util.stringize(metricUUID) + Util.integerize(Util.metricToId(metricName)) // 501-504
		 + Util.integerize("1") // ABOVE
		 + Util.stringize(Util.thresholdToString(metricName, threshold)) // stringized value of threshold 200X 3.0, etc
		 + Util.integerize(level, false) + " );\n");
		buf.append("-- DELETE from  metric where guid = " + Util.stringize(metricUUID, false) + ";\n");
		return buf.toString();
	}

	public static String insertParameter(String actionUUID, int type, String value) {
		StringBuilder buf = new StringBuilder();
		buf.append("INSERT INTO alert_action_parameter (action, action_parameter, value) VALUES ( " + Util.stringize(actionUUID) + Util.integerize(type) + Util.stringize(value, false) + " );\n");
		buf.append("-- DELETE from  alert_action_parameter where action = " + Util.stringize(actionUUID, false) + ";\n");
		return buf.toString();
	}

	public static String insertAlert(String alertUUID, String metricUUID, Map<String, String> alertParms, ResultSet rs) {
		StringBuilder buf = new StringBuilder();
		buf.append("INSERT INTO alert (guid, metric, timezone, period) VALUES ( " + Util.stringize(alertUUID) + Util.stringize(metricUUID) + Util.integerize(Util.tzToInt(alertParms.get(Main.TIMEZONE_PARM_KEY))) // 2001-2006
		 + Util.integerize(Util.periodToInt(alertParms.get(Main.PERIOD_PARM_KEY)), false) // 1001-1003
		 + " );\n");
		buf.append("-- DELETE from  alert where guid = " + Util.stringize(alertUUID, false) + ";\n");
		return buf.toString();
	}
}
