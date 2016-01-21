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

    static final String GET_EM_ALL =

  "SELECT \n" +
"             DISTINCT \n" +
"             \n" +
"             -- C.c_id, \n" +
"             -- C.create_date, \n" +
"             -- C.create_email, \n" +
"             -- C.update_date, \n" +
"             -- C.update_email, \n" +
"             MA.m_id as ma_m_id,\n" +
"             MA.c_id as ma_c_id, \n" +
"             MA.metric_id as ma_met_id,\n" +
"             C.circuit_id as circuit_id, \n" +
"             -- C.uuid,\n" +
"             AA.a_id as aa_a_id, \n" +
"             AA.action_id as aa_action_id, \n" +
"             AA.level as aa_level, \n" +
"             AA.value as aa_value, \n" +
"             AAP.a_id as aap_a_id, \n" +
"             AAP.value as aap_value, \n" +
"             TAP.id as tap_id, \n" +
"             TAP.name as tap_name, \n" +
"             TAP.unit as tap_unit,\n" +
"             TM.name as tm_name, \n" +
"             MA.qos as ma_qos, \n" +
"             MA.warn as ma_warn, \n" +
"             MA.fail as ma_fail, \n" +
"             TM.display_name as tm_display_name, \n" +
"             TM.unit as tm_unit, \n" +
"             TA.name as ta_name, \n" +
"             TA.unit as ta_unit\n" +
"          FROM \n" +
"             npm_dba.circuit_alert C \n" +
"             join npm_dba.metric_alert MA on  MA.c_id = C.c_id \n" +
"             join npm_dba.threshold_metric TM on TM.id = MA.metric_id \n" +
"             JOIN npm_dba.action_alert AA ON MA.m_id = AA.m_id \n" +
"             JOIN npm_dba.action_alert_parameter AAP ON AAP.a_id = AA.a_id \n" +
"             JOIN npm_dba.threshold_action TA ON  TA.id = AA.action_id \n" +
"             JOIN npm_dba.threshold_action_parameter TAP ON  TAP.id = AAP.parameter_id \n" +
"             where circuit_id ='05/KEFN/102871/TWCS' \n" +
"          ORDER BY ma_m_id, aa_a_id, aap_a_id, tap_id";
 
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
