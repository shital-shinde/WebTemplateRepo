package com.deere.dsfj.jdorderspringmvcweb.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/** This is an AltEmail domain object. It is used to get and set variables within an object 
 * @author Ethan Jenkins
 * @date 7/17/2015
 *  */
@Entity
@Table
public class AltEmail {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id = null;
	private Integer EmailID = null;
	private Integer DatabaseContactID = null;
	private String EmailAddress = null;
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
	public Integer getReturnCode() {
		return ReturnCode;
	}
	public void setReturnCode(Integer returnCode) {
		ReturnCode = returnCode;
	}
	
	
}