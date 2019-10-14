package com.deere.dsfj.jdorderspringmvcweb.controller;

import java.util.List; 
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.deere.dsfj.jdorderspringmvcweb.domain.Contact;
import com.deere.dsfj.jdorderspringmvcweb.form.ContactForm;
import com.deere.dsfj.jdorderspringmvcweb.service.ContactService;

/** RemoveContactController class handles the requests to display the RemoveContact page 
 * @author Ethan Jenkins
 * @date 7/20/2015
 *  */
@Controller
public class RemoveContactController{

	/**Injecting contactService, this variable will be used to call ContactServiceImpl methods*/
	//@Autowired
    //private ContactService  contactService ;

    /** This method loads the default remove contact admin page
     * @call removeRegistration
     */
    @RequestMapping(value = {"/RemoveContact"}, method=RequestMethod.GET)
    public String defaultSearchContacts(Model model, HttpServletRequest request){
    	return "RemoveContact";
    }
    
    /** This method is used by admins to get all registered databases for a certain user
     * @call removeRegistration
     */
    @RequestMapping(value = {"/RemoveContact"}, params="userAction=getUser" , method=RequestMethod.POST)
    public String getUser(@ModelAttribute("contactForm") ContactForm contactForm, Model model, HttpServletRequest request){
        return "RemoveContact";
    }
    
    /** This method is used by admins to remove any number of registrations from a user
     * @call removeRegistration
     */
    @RequestMapping(value = {"/RemoveContact"}, params="userAction=removeContact" , method=RequestMethod.POST)
    public String removeRegistration(@ModelAttribute("contactForm") ContactForm contactForm, Model model, HttpServletRequest request){
        return "RemoveContact";
    }
    

}
