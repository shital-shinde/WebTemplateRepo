package com.deere.dsfj.jdorderspringmvcweb.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import ma.glasnost.orika.MapperFacade;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.deere.dsfj.jdorderspringmvcweb.dao.ContactDao;
import com.deere.dsfj.jdorderspringmvcweb.domain.Contact;
import com.deere.dsfj.jdorderspringmvcweb.form.ContactForm;

/**This class has all the service implementations for contact operations.
 * The transaction boundary for all contact related database operations starts from this class.
 * @Transactional annotation will do the transaction management.
 * @author Ethan Jenkins
 * @date 7/17/2015
 */
@Service
public class ContactServiceImpl implements ContactService{

	/**Injected contactDao, this variable is used to call contactDaoImpl methods*/
	@Autowired
    private ContactDao contactDao;   
    
    /** dozerBeanMapping variable is used for mapping between OrderForm and Order */
	//@Resource(name="formDomainMapperFacade")
	//@Autowired
	//private MapperFacade formDomainMapperFacade;

    /** This method is used generate a list of databases that are registered to the user
     * @call getRegisteredDatabases
     * @return contactList
     */
    @Transactional(value="transactionManager",readOnly=true, propagation=Propagation.REQUIRED)
    public List<Contact> getRegisteredDatabases(ContactForm contactSearchCriteria) {
    	List<Contact> contactList = null; //contactDao.getRegisteredDatabases(contactSearchCriteria.getSamAccountName());
    	return contactList;
    }
    
    /** This method is used generate a list of databases that matched the search criteria 
     * @call findDatabases
     * @return dbList
     */
    @Transactional(value="transactionManager",readOnly=true, propagation=Propagation.REQUIRED)
    public List<Contact> findDatabases(ContactForm dbsearch) {
    	List<Contact> dbList = null; // contactDao.findDatabases(dbsearch);
    	return dbList;
    }
    
    /** This method is used to register any number of databases to the user as a certain type of contact
     * @call registerDatabase
     * @return contactForm
     */
    @Transactional(value="transactionManager",readOnly=true, propagation=Propagation.REQUIRED)
    public ContactForm registerDatabase(ContactForm contactForm){
    	ContactForm contactForm2 = null; // contactDao.registerDatabase(contactForm);
    	return contactForm2;
    }
    
    /** This method is used by the user to transfer a registration to another user
     * @call transferRegistration
     * @return contactForm
     */
    @Transactional(value="transactionManager",readOnly=true, propagation=Propagation.REQUIRED)
    public ContactForm transferRegistration(ContactForm contactForm){
    	ContactForm contactForm2 = null; // contactDao.transferRegistration(contactForm);
    	return contactForm2;
    }
    
    /** This method is used by the admins to update a database's details
     * @call updateDatabase
     * @return contactForm
     */
    @Transactional(value="transactionManager",readOnly=true, propagation=Propagation.REQUIRED)
    public ContactForm updateDatabase(ContactForm contactForm){
    	ContactForm contactForm2 = null; // contactDao.updateDatabase(contactForm);
    	return contactForm2;
    }
    
    /** This method is used by the user to remove a registration from a user
     * @call userRemoveRegistration
     * @return contactForm
     */
    @Transactional(value="transactionManager",readOnly=true, propagation=Propagation.REQUIRED)
    public ContactForm userRemoveRegistration(ContactForm contactForm){
    	ContactForm contactForm2 = null; // contactDao.userRemoveRegistration(contactForm);
    	return contactForm2;
    }
    
    /** This method is used by admins to remove any number of registrations from a user
     * @call removeRegistration
     * @return contactForm
     */
    @Transactional(value="transactionManager",readOnly=true, propagation=Propagation.REQUIRED)
    public ContactForm removeRegistration(ContactForm contactForm){
    	ContactForm contactForm2 = null; // contactDao.removeRegistration(contactForm);
    	return contactForm2;
    }
    
    /** This method is used to return a list of contact types to filter by or register for
     * @call getConType
     * @return contactTypeList
     */
    @Transactional(value="transactionManager",readOnly=true, propagation=Propagation.REQUIRED)
    public List<Contact> getConType() {
    	List<Contact> contactTypeList = null; // contactDao.getConType();
        return contactTypeList;
    }
    
    /** This method is used to returns a list of email addresses for multiple databases 
     * @call getEmailAddresses
     * @return emailList
     */
    @Transactional(value="transactionManager",readOnly=true, propagation=Propagation.REQUIRED)
    public ArrayList<String> getEmailAddresses(ContactForm contactForm) {
    	ArrayList<String> emailList = null; // contactDao.getEmailAddresses(contactForm);
        return emailList;
    }
    
    /** This method is used to returns a list of contacts for a given database 
     * @call getSupportContacts
     * @return supportList
     */
    @Transactional(value="transactionManager",readOnly=true, propagation=Propagation.REQUIRED)
    public List<Contact> getSupportContacts(ContactForm contactForm) {
    	List<Contact> supportList = null; // contactDao.getSupportContacts(contactForm);
        return supportList;
    }
    
    /** This method is used to returns a list of databases that are missing a contact of a certain type 
     * @call getMissingContacts
     * @return missingList
     */
    @Transactional(value="transactionManager",readOnly=true, propagation=Propagation.REQUIRED)
    public List<Contact> getMissingContacts(ContactForm contactForm) {
	List<Contact> missingList = null; // contactDao.getMissingContacts(contactForm);
    return missingList;
	}

    /** This method is used to returns a list of Contacts overdue for verifying their databases 
     * @call getPastContacts
     * @return pastList
     */
    @Transactional(value="transactionManager",readOnly=true, propagation=Propagation.REQUIRED)
    public List<Contact> getPastContacts(ContactForm contactForm) {
	List<Contact> pastList = null; // contactDao.getPastContacts(contactForm);
    return pastList;
	}
	
    /** This method is used to returns a list of environment to filter by 
     * @call getEnvFilter
     * @return envList
     */
    @Transactional(value="transactionManager",readOnly=true, propagation=Propagation.REQUIRED)
    public ArrayList<String> getEnvFilter() {
    	ArrayList<String> envList = null; // contactDao.getEnvFilter();
        return envList;
    }
    
    /** This method is used to return a list of Platforms to filter by 
     * @call getPlatFilter
     * @return platList
     */
    @Transactional(value="transactionManager",readOnly=true, propagation=Propagation.REQUIRED)
    public ArrayList<String> getPlatFilter() {
    	ArrayList<String> platList = null; // contactDao.getPlatFilter();
        return platList;
    }
    
    /** This method is used to return a form to populate the data for the Transfer Contact section   
     * @call DBConDetails
     * @return contactForm
     */
    @Transactional(value="transactionManager",readOnly=true, propagation=Propagation.REQUIRED)
    public ContactForm DBConDetails(ContactForm contactForm){
    	ContactForm contactForm2 = null; // contactDao.DBConDetails(contactForm);
    	return contactForm2;
    }
    
    /** This method is used to verify the list of databases registered to the user   
     * @call verify
     * @return contactForm
     */
    @Transactional(value="transactionManager",readOnly=true, propagation=Propagation.REQUIRED)
    public ContactForm verify(List<Contact> contactList){
    	ContactForm contactForm2 = null; // contactDao.verify(contactList);
    	return contactForm2;
    }
    
    /** This method is used to authenticate admins and returns a true or false if the user is a admin or not   
     * @call checkAdmin
     * @return isAdminUser
     */
    @Transactional(value="transactionManager",readOnly=true, propagation=Propagation.REQUIRED)
    public Boolean checkAdmin(String userId) {
    Boolean isAdminUser = null; // contactDao.checkAdmin(userId);
	return isAdminUser;
}
}
