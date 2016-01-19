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

  static final String GET_EM_ALL
          = "SELECT "
          + "   DISTINCT "
          + "   C.circuit_id as circuit_id, "
          + "   C.uuid, "
          + "   --C.c_id, "
          + "   C.create_date, "
          + "   --C.create_email, "
          + "   --C.update_date, "
          + "   --C.update_email, "
          + "   MA.c_id as ma_c_id, "
          + "   MA.m_id as ma_m_id, "
          + "   TM.name as metric_name, "
          + "   MA.qos, "
          + "   MA.warn, "
          + "   MA.fail, "
          + "   TM.display_name as display_name, "
          + "   TM.unit, "
          + "   AA.a_id as aa_a_id, "
          + "   AA.action_id, "
          + "   AA.level, "
          + "   AA.value as action_value, "
          + "   TA.name as action_name, "
          + "   TA.unit as action_unit, "
          + "   AAP.a_id as aap_a_id, "
          + "   AAP.parameter_id, "
          + "   TAP.id as tap_id, "
          + "   AAP.value as param_value, "
          + "   TAP.name as param_name, "
          + "   TAP.unit as param_unit "
          + "FROM "
          + "   npm_dba.circuit_alert C "
          + "   join npm_dba.metric_alert MA on  MA.c_id = C.c_id "
          + "   join npm_dba.threshold_metric TM on TM.id = MA.metric_id "
          + "   LEFT JOIN npm_dba.action_alert AA ON MA.m_id = AA.m_id "
          + "   LEFT JOIN npm_dba.action_alert_parameter AAP ON AAP.a_id = AA.a_id "
          + "   LEFT JOIN npm_dba.threshold_action TA ON  TA.id = AA.action_id "
          + "   LEFT JOIN npm_dba.threshold_action_parameter TAP ON  TAP.id = AAP.parameter_id "
          + "   where circuit_id ='05/KEFN/102871/TWCS' "
          + "ORDER BY ma_c_id, ma_m_id, aa_a_id, aap_a_id, tap_id ";

  public static void main(String[] args) throws SQLException {
    Connection conn = null;
    Statement stmt = null;
    try {

      //STEP 3: Open a connection
      System.out.println("Connecting to database...");
      conn = Db.createConnection();

      //STEP 4: Execute a query
      System.out.println("Creating statement...");
      stmt = conn.createStatement();
      String sql;
      sql = GET_EM_ALL;
      //STEP 5: Extract data from result set
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
        //STEP 6: Clean-up environment
      }
      stmt.close();
      conn.close();
    } catch (SQLException se) {
      //Handle errors for JDBC
      se.printStackTrace();
    } catch (Exception e) {
      //Handle errors for Class.forName
      e.printStackTrace();
    } finally {
      conn.close();
    }
  }

  static Connection createConnection() throws ClassNotFoundException, SQLException {
    Class.forName(JDBC_DRIVER);
    return DriverManager.getConnection(DB_URL, USER, PASS);

  }

  static ResultSet getEmAll(Connection conn) throws ClassNotFoundException, SQLException {
    Statement stmt = conn.createStatement();
    return stmt.executeQuery(GET_EM_ALL);
  }
}
