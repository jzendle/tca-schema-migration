/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.level3.tca.schema.migration;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 *
 * @author zendle.joe
 */
public class ResourceMgr {
  
  Map<String, UUID> resources = new HashMap<>();
  
  public Map<String,String> makeResourceMap(String circuit,String concatField) {

    HashMap<String,String> ret = new HashMap<>();
    ret.put("circuit", circuit);
    
    String clli = null;
    String vcircuit = null;
    String[] fields = concatField.split("::");
    if ( fields.length > 1) ret.put("clli",fields[1]);
    if ( fields.length > 2) ret.put("vcircuit",fields[2]);
   
    return ret;
  }
  
  public String makeResourceKey(String circuit,String concatField) {
    
    String clli = null;
    String vcircuit = null;
    String[] fields = concatField.split("::");
    if ( fields.length > 1) clli = fields[1];
    if ( fields.length > 2) vcircuit = fields[2];
    
    return circuit + "::" + clli + "::" + vcircuit;
  }
  
  
  UUID addResource(String res) {
    
    UUID uuid = null;
    uuid = resources.get(res);
    
    if ( uuid == null) {
      uuid = UUID.randomUUID();
      resources.put(res, uuid);
    }

    return uuid;

  }
  
  UUID addResource(String circuit, String concatField) {
    String str = makeResourceKey(circuit, concatField);
    
    return ResourceMgr.this.addResource(str);
    
  }
}
