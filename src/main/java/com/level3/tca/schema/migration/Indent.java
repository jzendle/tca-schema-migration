/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.level3.tca.schema.migration;

/**
 *
 * @author jzendle
 */
public class Indent {
	
	String indent = "";
	
	public String inc() {
		indent += "   ";
		return indent;
	}
	
	public String dec() {
		int len = indent.length();
		if (len > 0)
		   indent = indent.substring(0, len);
		return indent;
	}
	
	public String reset() {
		indent = "";
		return indent;
	}
	
	@Override
	public String toString() {
		return indent;
	}
	
}
