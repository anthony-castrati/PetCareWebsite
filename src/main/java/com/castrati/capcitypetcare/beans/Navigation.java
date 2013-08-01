package com.castrati.capcitypetcare.beans;

import java.util.HashMap;
import java.util.Map;

public class Navigation {
	Map<String, String> navItems;
	
	Navigation(){
		navItems = new HashMap<String,String>();
	}

	public Map<String, String> getNavItems() {
		return navItems;
	}

	public void setNavItems(Map<String, String> navItems) {
		this.navItems = navItems;
	}
	
	
}
