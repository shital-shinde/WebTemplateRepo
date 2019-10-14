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

/** DatabaseSearchController class handles the requests to display the Databases within the desired Search 
 */
@Controller
public class DatabaseFinderController{

	/**Injecting contactService, this variable will be used to call ContactServiceImpl methods*/
	//@Autowired
    //private ContactService  contactService ;

    /** This method generates the default search page with the filter parameters 
     * @call getEnvFilter, getPlatFilter
     */
    @RequestMapping(value = {"/DatabaseFinder"}, method=RequestMethod.GET)
    public String defaultSearchContacts(Model model, HttpServletRequest request){
        return "DatabaseFinder";
    }

    /** This method generates a list of databases that matched the search criteria and display it in the view  
     * @call findDatabases, getEnvFilter, getPlatFilter
     */
    @RequestMapping(value = {"/DatabaseFinder"}, params="userAction=search" , method=RequestMethod.POST)
    public String viewContacts(@ModelAttribute("contactForm") ContactForm contactForm,BindingResult bindingResult, Model model, HttpServletRequest request){
            return "DatabaseFinder";
    }
    
    /** This method registers the selected databases to the user
    * @call findDatabases, getEnvFilter, getPlatFilter
     */
    @RequestMapping(value = {"/DatabaseFinder"},  params="userAction=add",method=RequestMethod.POST)
    public String registerDatabase(@ModelAttribute("contactForm")ContactForm contactForm, Model model,HttpServletRequest  request){
        return "DatabaseFinder";
        
    }
}
