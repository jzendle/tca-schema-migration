/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.level3.tca.schema.migration;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

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
		return (obj == null ? "-1" : obj.toString()) + (ret == true ? "," : "");
	}

	public static String epochize(Timestamp obj, Boolean... comma) {
		Boolean ret = true;
		if (comma.length > 0) {
			ret = (Boolean) comma[0];
		}
		return (obj == null ? "0" : obj.getTime() / 1000) + (ret == true ? "," : "");
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

	public static int metricToId(String metric) {
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

	static String thresholdToString(String metricName, Float threshold) {
		String ret;
		if (metricName.equals("HighCPELatency")) {
			ret = Math.round(threshold) + "X";
		} else {
			ret = threshold.toString();
		}

		return ret;

	}

	static int tzToInt(String tz) {

		System.out.println("tz: " + tz);
		switch (tz) {
			case "America/Los_Angeles":
				return 2006;
			case "America/Denver":
				return 2005;
			case "America/Chicago":
				return 2002;
			case "America/Phoenix":
				return 2001;
			case "Pacific/Honolulu":
				return 2004;
			case "America/New_York":
				return 2003;
			default:
				throw new IllegalArgumentException(tz);

		}

	}

	static int periodToInt(String period) {

		switch (period) {
			case "24_BY_7":
				return 1003;
			case "BUSINESS_HRS":
				return 1001;
			case "OFF_HRS":
				return 1002;
			default:
				throw new IllegalArgumentException(period);

		}
	}

	static List<String> strToBandwidthRates(String in) {
		// possible patterns:
		// "100000000::7.34;150000000::14.67"
		// "100000000::7.53"
		List<String> ret = new ArrayList<>();
		String [] pairs = in.split(";");
		if (pairs.length > 0) {
			String [] vals = pairs[0].split("::");
			if ( vals.length != 2) throw new IllegalArgumentException(in);
			ret.add(vals[0]);
			ret.add(vals[1]);
		}
		if (pairs.length > 1) {
			String [] vals = pairs[0].split("::");
			if ( vals.length != 2) throw new IllegalArgumentException(in);
			ret.add(vals[0]);
			ret.add(vals[1]);
		}
		return ret;
	}
}
