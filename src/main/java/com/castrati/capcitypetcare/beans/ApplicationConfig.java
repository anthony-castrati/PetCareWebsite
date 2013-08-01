package com.castrati.capcitypetcare.beans;

public class ApplicationConfig {
	String url;
	String siteName;
	String administratorEmail;
	String test;
	String projectName;
	
	
	
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getTest() {
		return test;
	}
	public void setTest(String test) {
		this.test = test;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getSiteName() {
		return siteName;
	}
	public void setSiteName(String siteName) {
		this.siteName = siteName;
	}
	public String getAdministratorEmail() {
		return administratorEmail;
	}
	public void setAdministratorEmail(String administratorEmail) {
		this.administratorEmail = administratorEmail;
	}

}
