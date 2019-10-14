package com.deere.dsfj.jdorderspringmvcweb.controller;

import java.util.ArrayList; 
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.deere.dsfj.jdorderspringmvcweb.domain.Contact;
import com.deere.dsfj.jdorderspringmvcweb.form.ContactForm;
import com.deere.dsfj.jdorderspringmvcweb.service.ContactService;

/** UpdateDatabaseController class handles the requests to display on the UpdateDatabase page
* 	@author Ethan Jenkins
* 	@date 7/20/2015
*/
@Controller
public class UpdateDatabaseController{

	/**Injecting contactService, this variable will be used to call ContactServiceImpl methods*/
	//@Autowired
    //private ContactService  contactService;

    /** This method loads the default admin page used to update a database's details
     * @call getEnvFilter, getPlatFilter
     */
    @RequestMapping(value = {"/UpdateDatabase"}, method=RequestMethod.GET)
    public String defaultSearchContacts(Model model, HttpServletRequest request){
    	
    	//ArrayList<String> environmentFilter = contactService.getEnvFilter();
    	//ArrayList<String> platformFilter = contactService.getPlatFilter();
    	//model.addAttribute("environmentFilter",environmentFilter);
    	//model.addAttribute("platformFilter",platformFilter);
    	//model.addAttribute("contactForm",contactForm);
        return "UpdateDatabase";
    }

    /** This method generates a list of databases on the admin page used to update a database's details
     * @call getEnvFilter, getPlatFilter
     */
    @RequestMapping(value = {"/UpdateDatabase"}, params="userAction=search" , method=RequestMethod.POST)
    public String viewContacts(@ModelAttribute("contactForm") ContactForm contactForm,BindingResult bindingResult, Model model, HttpServletRequest request){
    	//model.addAttribute("dbList",dbList);
    	//model.addAttribute("contactForm",contactForm);
        return "UpdateDatabase";
    }
    
    /** This method updates a database's details and reloads the page
     * @call updateDatabase
     * @return contactForm
     */
    @RequestMapping(value = {"/UpdateDatabase"},  params="userAction=update",method=RequestMethod.POST)
    public String updateDatabase(@ModelAttribute("contactForm")ContactForm contactForm, Model model,HttpServletRequest  request){
        return "UpdateDatabase";
        
    }
}
