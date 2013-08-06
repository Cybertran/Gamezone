/**
 * 
 */
package com.optimus.common;

import java.util.ArrayList;

/**
 * @author jitendra
 *
 */
public class PageRenderer {
	ArrayList<String> scriptLinks=new ArrayList<String>();
	ArrayList<String> cssLinks=new ArrayList<String>();
	
	 PageRenderer(){
		 scriptLinks.add("resources/bootstrap/js/jquery.js");
		 scriptLinks.add("resources/bootstrap/js/bootstrap.min.js");
		 cssLinks.add("resources/bootstrap/css/bootstrap.min.css");
		 cssLinks.add("resources/bootstrap/css/base.css");
	 }

	public ArrayList<String> getScriptList() {
		return scriptLinks;
	}

	public void setScriptList(ArrayList<String> scriptList) {
		this.scriptLinks = scriptList;
	}

	public ArrayList<String> getCssList() {
		return cssLinks;
	}

	public void setCssList(ArrayList<String> cssList) {
		this.cssLinks = cssList;
	}
	 
	 
}
