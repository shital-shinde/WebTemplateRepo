package com.deere.dsfj.jdorderspringmvcweb.service;

import java.util.ArrayList;
import java.util.List;

import com.deere.dsfj.jdorderspringmvcweb.domain.Contact;
import com.deere.dsfj.jdorderspringmvcweb.form.ContactForm;

/**This is an interface for ContactServiceImpl
 * @author Ethan Jenkins
 * @date 7/17/2015
 */

public interface ContactService{
	
    public List<Contact> getRegisteredDatabases(ContactForm contactSearchCriteria);
    
    public List<Contact> findDatabases(ContactForm dbsearch);
    
    public ContactForm registerDatabase(ContactForm contactForm);
    
    public ContactForm transferRegistration(ContactForm contactForm);
    
    public ContactForm updateDatabase(ContactForm contactForm); 
    
    public ContactForm userRemoveRegistration(ContactForm contactForm);
    
    public ContactForm removeRegistration(ContactForm contactForm);
    
    public List<Contact> getConType();
	
	public ArrayList<String> getEmailAddresses(ContactForm contactForm);
	
	public List<Contact> getSupportContacts(ContactForm contactForm);
	
	public List<Contact> getMissingContacts(ContactForm contactForm);
	
	public List<Contact> getPastContacts(ContactForm contactForm);
	
	public ArrayList<String> getEnvFilter();
	
	public ArrayList<String> getPlatFilter();
	
	public ContactForm DBConDetails(ContactForm contactForm);
	
	public ContactForm verify(List<Contact> contactList);
	
	public Boolean checkAdmin(String userId);
	
}
