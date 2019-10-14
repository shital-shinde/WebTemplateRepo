package com.deere.dsfj.jdorderspringmvcweb.controller;

import java.util.List; 

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.deere.dsfj.jdorderspringmvcweb.domain.Contact;
import com.deere.dsfj.jdorderspringmvcweb.form.ContactForm;
import com.deere.dsfj.jdorderspringmvcweb.service.ContactService;

/** ContactController class handles the requests to display the Contact Database List  
 */
@Controller
public class ContactController{

	/**Injecting contactService, this variable will be used to call ContactServiceImpl methods*/
	//@Autowired
    //private ContactService  contactService ;

    /** This default method generates a list of databases that are registered to the user and displays it in the view
     * @call getRegisteredDatabases
     */
    @RequestMapping(value = {"/Contact"}, method=RequestMethod.GET)
    public String viewContacts(Model model, HttpServletRequest request){
        return "Contact";
    }
    
    /** This method verifies the registered databases and refreshes the list of databases that are registered to the user and displays it in the view
     * @call verify, getRegisteredDatabases
     */
    @RequestMapping(value = {"/Contact"}, params="userAction=verify" , method=RequestMethod.POST)
    public String verifyContacts(@ModelAttribute("contactForm") ContactForm contactForm, Model model, HttpServletRequest request){
            return "Contact";

    }
    
    /** This method removes a registered database from the user's contact list and refreshes the list and displays it in the view
     * @call userRemoveRegistration, getRegisteredDatabases
     */
    @RequestMapping(value = {"/Contact"}, params="userAction=removeCon" , method=RequestMethod.POST)
    public String userRemoveRegistration(@ModelAttribute("contactForm") ContactForm contactForm, Model model, HttpServletRequest request){
        return "Contact";
    }
    
    /** This method loads the transfer form for a registered database and displays it in the view
     * @call DBConDetails
     */
    @RequestMapping(value = {"/Contact"}, params="userAction=transfer" , method=RequestMethod.POST)
    public String displayEditContact(@ModelAttribute("contactForm") ContactForm contactForm, Model model, HttpServletRequest request){
        return "Contact";
    } 

    /** This method transfers a registered database from the user and refreshes the list and displays it in the view
     * @call transferRegistration, getRegisteredDatabases
     */
    @RequestMapping(value = {"/Contact"},  params="userAction=update",method=RequestMethod.POST)
    public String transferRegistration(@ModelAttribute("transferForm")ContactForm transferForm, 
                               Model model,HttpServletRequest  request){
		return "Contact";
    }
    
    /** This method refreshes the the contact page
     */
    @RequestMapping(value = {"/Contact"},  params="userAction=cancel",method=RequestMethod.POST)
    public String cancelOrder(@ModelAttribute("contactForm")ContactForm contactForm, HttpServletRequest request,Model model){
    	return "redirect:Contact";
    }

}
