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
          + "WHERE\n"
          + "    circuit_id ='05/KEFN/102871/TWCS'\n"
          + "ORDER BY\n"
          + "    ma_m_id,\n"
          + "    aa_a_id,\n"
          + "    tap_id";

  private final static String RESOURCES_SQL = " select distinct circuit_id, uuid from circuit_alert ";

  public static void main(String[] args) throws SQLException {
    Connection conn = null;
    Statement stmt = null;
    try {

      System.out.println("Connecting to database...");
      conn = Db.createConnection();

      stmt = conn.createStatement();
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
    } catch (SQLException se) {
      se.printStackTrace();
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      stmt.close();
      conn.close();
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
}
