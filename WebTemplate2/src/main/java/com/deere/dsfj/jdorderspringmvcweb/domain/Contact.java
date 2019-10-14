package com.deere.dsfj.jdorderspringmvcweb.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/** This is an Contact domain object. It is used to get and set variables within an object 
 * @author Ethan Jenkins
 * @date 7/17/2015
 * */
@Entity
@Table
public class Contact {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id = null;     
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

	public Boolean getNeedsReplacement() {
		return NeedsReplacement;
	}

	public void setNeedsReplacement(Boolean needsReplacement) {
		NeedsReplacement = needsReplacement;
	}

	public Boolean getIsRegistered() {
		return IsRegistered;
	}

	public void setIsRegistered(Boolean isRegistered) {
		IsRegistered = isRegistered;
	}

}
