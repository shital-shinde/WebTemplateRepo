package com.deere.dsfj.jdorderspringmvcweb.form;

import java.util.ArrayList;
import java.util.Date;

/** This is the classes that outlines the ContactForm object. It is used to get and set variables from a spring form embedded in a web page.
 * @author Ethan Jenkins
 * @date 7/17/2015
 * */

public class ContactForm{
    
	private Integer ConID = null;
	private Integer DBID = null;
	private Integer DBConID = null;
    private String HostInstance = null;
    private String Environment = null;
    private String DatabaseName = null;
    private String DatabasePlatform = null;
    private String SamAccountName = null;
    private String EmailAddress = null;
    private String DisplayName = null;
    private String FirstName = null;
    private String MiddleInitial = null;
    private String LastName = null;
    private String ContactType = null;
    private Date ContactEndDate = null;
    private Date VerifiedDate = null;
    private Boolean NeedsReplacement = false;
    private Boolean IsRegistered = false;
    private Boolean IsAdminUser = false;
    private String Message = null;
    private ArrayList<String> Messages = null;
    private Integer ReturnCode = null;
    private Integer [] DBIDs = null;
    
	public Integer getConID() {
		return ConID;
	}

	public void setConID(Integer conID) {
		ConID = conID;
	}
	
	public Integer getDBID() {
		return DBID;
	}

	public void setDBID(Integer dBID) {
		DBID = dBID;
	}
    
    public Integer getDBConID() {
		return DBConID;
	}

	public void setDBConID(Integer dBConID) {
		DBConID = dBConID;
	}
	  
	public String getHostInstance() {
		return HostInstance;
	}

	public void setHostInstance(String hostInstance) {
		HostInstance = hostInstance;
	}

	public String getEnvironment() {
		return Environment;
	}

	public void setEnvironment(String environment) {
		Environment = environment;
	}
	
	public String getDatabaseName() {
		return DatabaseName;
	}

	public void setDatabaseName(String databaseName) {
		DatabaseName = databaseName;
	}
	
	public String getDatabasePlatform() {
		return DatabasePlatform;
	}

	public void setDatabasePlatform(String databasePlatform) {
		DatabasePlatform = databasePlatform;
	}

	public String getSamAccountName() {
		return SamAccountName;
	}

	public void setSamAccountName(String samAccountName) {
		SamAccountName = samAccountName;
	}

	public String getEmailAddress() {
		return EmailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		EmailAddress = emailAddress;
	}

	public String getDisplayName() {
		return DisplayName;
	}

	public void setDisplayName(String displayName) {
		DisplayName = displayName;
	}

	public String getFirstName() {
		return FirstName;
	}

	public void setFirstName(String firstName) {
		FirstName = firstName;
	}

	public String getMiddleInitial() {
		return MiddleInitial;
	}

	public void setMiddleInitial(String middleInitial) {
		MiddleInitial = middleInitial;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	public String getContactType() {
		return ContactType;
	}

	public void setContactType(String contactType) {
		ContactType = contactType;
	}

	public Date getContactEndDate() {
		return ContactEndDate;
	}

	public void setContactEndDate(Date contactEndDate) {
		ContactEndDate = contactEndDate;
	}

	public Date getVerifiedDate() {
		return VerifiedDate;
	}

	public void setVerifiedDate(Date verifiedDate) {
		VerifiedDate = verifiedDate;
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

	public Boolean getNeedsReplacement() {
		return NeedsReplacement;
	}

	public void setNeedsReplacement(Boolean needsReplacement) {
		NeedsReplacement = needsReplacement;
	}

	public Integer [] getDBIDs() {
		return DBIDs;
	}

	public void setDBIDs(Integer [] dBIDs) {
		DBIDs = dBIDs;
	}

	public Boolean getIsRegistered() {
		return IsRegistered;
	}

	public void setIsRegistered(Boolean isRegistered) {
		IsRegistered = isRegistered;
	}

	public ArrayList<String> getMessages() {
		return Messages;
	}

	public void setMessages(ArrayList<String> messages) {
		Messages = messages;
	}

	public Boolean getIsAdminUser() {
		return IsAdminUser;
	}

	public void setIsAdminUser(Boolean isAdminUser) {
		IsAdminUser = isAdminUser;
	}



}


