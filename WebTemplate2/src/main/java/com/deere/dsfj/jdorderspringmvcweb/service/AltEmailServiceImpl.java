package com.deere.dsfj.jdorderspringmvcweb.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.deere.dsfj.jdorderspringmvcweb.dao.AltEmailDao;
import com.deere.dsfj.jdorderspringmvcweb.domain.AltEmail;
import com.deere.dsfj.jdorderspringmvcweb.form.AltEmailForm;

/**This class has all the service implementations for altemail operations.
 * The transaction boundary for all altemail related database operations starts from this class.
 * @Transactional annotation will do the transaction management.
 * @author Ethan Jenkins
 * @date 7/17/2015
 */
@Service
public class AltEmailServiceImpl implements AltEmailService{

	/**Injected contactDao, this variable is used to call contactDaoImpl methods*/
    @Autowired
    private AltEmailDao altEmailDao;   
	
    /** This method is used to get all alternate email addresses for a registration  
     * @call allAltEmail
     * @return altEmailList
     */
    @Transactional(value="transactionManager",readOnly=true, propagation=Propagation.REQUIRED)
    public List<AltEmail> allAltEmail(AltEmailForm altEmailForm) {
    	List<AltEmail> altEmailList = null; //altEmailDao.allAltEmail(altEmailForm);
    	return altEmailList;
    }

    /** This method is used to add alternate email addresses   
     * @call addAltEmail
     * @return altEmailForm
     */
    @Transactional(value="transactionManager",readOnly=false, propagation=Propagation.REQUIRED)
    public AltEmailForm addAltEmail(AltEmailForm altEmailForm){
    	AltEmailForm altEmailForm2 = null; //altEmailDao.addAltEmail(altEmailForm);
    	return altEmailForm2;
    }
 
    /** This method is used to remove alternate email addresses   
     * @call removeAltEmail
     * @return altEmailForm
     */
    @Transactional(value="transactionManager",readOnly=false, propagation=Propagation.REQUIRED)
    public AltEmailForm removeAltEmail(AltEmailForm altEmailForm){
    	AltEmailForm altEmailForm2 = null; //altEmailDao.removeAltEmail(altEmailForm);
    	return altEmailForm2;
    }
        
}