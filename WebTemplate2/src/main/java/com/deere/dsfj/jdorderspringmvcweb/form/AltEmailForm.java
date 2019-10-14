package com.deere.dsfj.jdorderspringmvcweb.form;

/** This is the classes that outlines the AltEmailForm object. It is used to get and set variables from a spring form embedded in a web page.
 * @author Ethan Jenkins
 * @date 7/17/2015
 * */

public class AltEmailForm{
	
	private Integer EmailID = null;
	private Integer DatabaseContactID = null;
	private String SamAccountName = null;
	private String EmailAddress = null;
	private String Message = null;
	private Integer ReturnCode = null;
	
	public Integer getEmailID() {
		return EmailID;
	}
	public void setEmailID(Integer emailID) {
		EmailID = emailID;
	}
	public Integer getDatabaseContactID() {
		return DatabaseContactID;
	}
	public void setDatabaseContactID(Integer databaseContactID) {
		DatabaseContactID = databaseContactID;
	}
	public String getEmailAddress() {
		return EmailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		EmailAddress = emailAddress;
	}
	public String getMessage() {
		return Message;
	}
	public void setMessage(String message) {
		Message = message;
	}
	public Integer getReturnCode() {
		return ReturnCode;
	}
	public void setReturnCode(Integer returnCode) {
		ReturnCode = returnCode;
	}
	public String getSamAccountName() {
		return SamAccountName;
	}
	public void setSamAccountName(String samAccountName) {
		SamAccountName = samAccountName;
	}

}