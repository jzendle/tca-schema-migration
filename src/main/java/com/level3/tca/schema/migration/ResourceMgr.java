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
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.collections.keyvalue.MultiKey;

/**
 *
 * @author zendle.joe
 */
public final class ResourceMgr {

	public final static String CIRCUIT = "circuit";
	public final static String VCIRCUIT = "vcircuit";
	public final static String CLLI = "clli";
	public final static String GUID = "guid";

	Map<MultiKey, String> resources = new HashMap<>();

	public ResourceMgr(Connection conn) {
		try (ResultSet rs = Db.getResources(conn)) {
			while (rs.next()) {
				String circuitId = rs.getString("circuit_id");
				String uuid = rs.getString("uuid");
				resources.put(makeResourceKey(circuitId, uuid), Util.uuidFromSeed());
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public String toString() {
		return "ResourceMgr{" + "resources=" + resources.toString() + '}';
	}

	public MultiKey makeResourceKey(String circuit, String concatField) {

		String clli = null;
		String vcircuit = null;
		String[] fields = concatField.split("::");
		if (fields.length > 1) {
			clli = fields[1];
		}
		if (fields.length > 2) {
			vcircuit = fields[2];
		}

		return new MultiKey(circuit, vcircuit, clli);
	}

	public Map<String, String> makeResourceMap(String circuit, String concatField) {
		Map<String, String> map = new HashMap<>();
		MultiKey key = makeResourceKey(circuit, concatField);

		String uuid = resources.get(key);
		map.put(CIRCUIT, (String) key.getKey(0));
		map.put(VCIRCUIT, (String) key.getKey(1));
		map.put(CLLI, (String) key.getKey(2));
		map.put(GUID, uuid);
		return map;

	}

	public String lookupResource(String circuit, String concatField) {
		return resources.get(makeResourceKey(circuit, concatField));
	}


	public String makeInserts() throws SQLException {

		StringBuilder buf = new StringBuilder();
		for (Map.Entry pair : resources.entrySet()) {
			System.out.println(pair.getKey() + " = " + pair.getValue());
			MultiKey key = (MultiKey) pair.getKey();
			
			buf.append("insert into resource ( guid, circuit, virtual_circuit, bclli, rgroup ) values ( "
				+ Util.stringize(pair.getValue())
				+ Util.stringize((String) key.getKey(0))
				+ Util.stringize((String) key.getKey(1))
				+ Util.stringize((String) key.getKey(2))
				+ Util.stringize("", false) // groupId not used
				+ " );\n");

			buf.append("-- DELETE from resource where guid = " + Util.stringize(pair.getKey(), false) + ";\n");
		}

		return buf.toString();
	}

}
