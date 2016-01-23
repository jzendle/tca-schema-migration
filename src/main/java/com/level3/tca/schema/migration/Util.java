/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.level3.tca.schema.migration;

import java.sql.Timestamp;

/**
 *
 * @author zendle.joe
 */
public class Util {

  public static String integerize(Object obj, Boolean... comma) {
    Boolean ret = true;
    if (comma.length > 0) {
      ret = (Boolean) comma[0];
    }
    return (obj == null ? "-1"  : obj.toString()) +  (ret == true ? "," : "");
  }
  public static String epochize(Timestamp obj, Boolean... comma) {
    Boolean ret = true;
    if (comma.length > 0) {
      ret = (Boolean) comma[0];
    }
    return (obj == null ? "0"  : obj.getTime() / 1000) +  (ret == true ? "," : "");
  }
  public static String stringize(Object obj, Boolean... comma) {
    Boolean ret = true;
    if (comma.length > 0) {
      ret = (Boolean) comma[0];
    }
    return "'" + obj.toString() + "'" + (ret == true ? "," : "");
  }

  public static String toEpoch(String timestamp, Boolean comma) {
    return "(SELECT EXTRACT(EPOCH FROM TIMESTAMP '" + timestamp + "') " + (comma == true ? "," : "");
  }

  public static int metricToId (String metric) {
    switch (metric) {
      case "LowCPEPacketDelivery":
        return 504;
      case "HighCPEJitter":
        return 503;
      case "HighCPELatency":
        return 502;
      case "HighUtilization":
        return 501;
      default:
        throw new IllegalArgumentException(metric);
    }
  }
  
}
