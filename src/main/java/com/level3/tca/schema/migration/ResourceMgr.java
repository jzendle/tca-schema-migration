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
import java.util.UUID;
import org.apache.commons.collections.keyvalue.MultiKey;

/**
 *
 * @author zendle.joe
 */
public class ResourceMgr {

  Map<MultiKey, UUID> resources = new HashMap<>();

  public ResourceMgr(Connection conn) {
    try (ResultSet rs = Db.getResources(conn)) {
      while (rs.next()) {
        String circuitId = rs.getString("circuit_id");
        String uuid = rs.getString("uuid");
        String vcircuitId = null;
        String bclli = null;
        String[] fields = uuid.split("::");
        if (fields.length > 1) {
          bclli = fields[1];
        }
        if (fields.length > 2) {
          vcircuitId = fields[2];
        }
        MultiKey key = new MultiKey(circuitId,vcircuitId,bclli);
        resources.put(key, UUID.randomUUID());
      }

    } catch (SQLException e) {
      e.printStackTrace();
    }

  }

  @Override
  public String toString() {
    return "ResourceMgr{" + "resources=" + resources.toString() + '}';
  }

  public Map<String, String> makeResourceMap(String circuit, String concatField) {

    HashMap<String, String> ret = new HashMap<>();
    ret.put("circuit", circuit);

    String clli = null;
    String vcircuit = null;
    String[] fields = concatField.split("::");
    if (fields.length > 1) {
      ret.put("clli", fields[1]);
    }
    if (fields.length > 2) {
      ret.put("vcircuit", fields[2]);
    }

    return ret;
  }

  public String makeResourceKey(String circuit, String concatField) {

    String clli = null;
    String vcircuit = null;
    String[] fields = concatField.split("::");
    if (fields.length > 1) {
      clli = fields[1];
    }
    if (fields.length > 2) {
      vcircuit = fields[2];
    }

    return circuit + "::" + clli + "::" + vcircuit;
  }
}
