package com.deere.dsfj.jdorderspringmvcweb.controller;

import java.util.ArrayList;  
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.deere.dsfj.jdorderspringmvcweb.form.ContactForm;

/** AdminController class handles the request to display the Admin Tools and Reports
 * @author Ethan Jenkins
 * @date 7/20/2015
 */
@Controller
public class AdminController{

    /** This method is used to generate the default view for the admin page, including all the search parameters
     * @call getConType, getEnvFilter, getPlatFilter
     */
    @RequestMapping(value = {"/Admin"}, method=RequestMethod.GET)
    public String defaultSearchContacts(Model model, HttpServletRequest request){
    	
    	//model.addAttribute("contactForm",contactForm);
    	//model.addAttribute("contactTypeList",contactTypeList);
    	//model.addAttribute("environmentFilter",environmentFilter);
    	//model.addAttribute("platformFilter",platformFilter);
        return "Admin";
    }

    /** This method is used to generate a list of databases that matched the search criteria and display it in the view  
     * @call findDatabases
     */
    @RequestMapping(value = {"/Admin"}, params="userAction=search" , method=RequestMethod.POST)
    public String getDatabaseList(@ModelAttribute("contactForm") ContactForm contactForm, Model model, HttpServletRequest request){
            return "Admin";
    }
    
    /** This method is used to generate a list of databases that matched the search criteria and display it in the view  
     * @call findDatabases, getConType
     */
    @RequestMapping(value = {"/Admin"}, params="userAction=emailSearch" , method=RequestMethod.POST)
    public String getDatabaseListEmail(@ModelAttribute("contactForm") ContactForm contactForm, Model model, HttpServletRequest request){
            return "Admin";
    }
    
    /** This method is used to generate a list of email addresses for multiple databases and display it in the view 
     * @call getEmailAddresses
     */
    @RequestMapping(value = {"/Admin"}, params="userAction=getEmail" , method=RequestMethod.POST)
    public String viewEmailList(@ModelAttribute("contactForm")ContactForm contactForm, Model model, HttpServletRequest request){
    	return "Admin";
    }
    
    /** This method is used to generate a list of contacts for a given database and display it in the view 
     * @call getSupportContacts
     */
    @RequestMapping(value = {"/Admin"}, params="userAction=getDetails" , method=RequestMethod.POST)
    public String viewSupportDetails(@ModelAttribute("contactForm")ContactForm contactForm, Model model, HttpServletRequest request){
    	return "Admin";
    }
    
    /** This method is used to generate a list of databases that are missing a contact of a certain type and display it in the view 
     * @call getMissingContacts
     */
    @RequestMapping(value = {"/Admin"}, params="userAction=getMissing" , method=RequestMethod.POST)
    public String viewMissingContacts(@ModelAttribute("contactForm")ContactForm contactForm, Model model, HttpServletRequest request){
    	return "Admin";
    }
    
    /** This method is used to generate a list of Contacts overdue for verifying their databases and display it in the view 
     * @call getPastContacts
     */
    @RequestMapping(value = {"/Admin"}, params="userAction=getPast" , method=RequestMethod.POST)
    public String viewPastVerification(@ModelAttribute("contactForm") ContactForm contactForm, Model model, HttpServletRequest request){
    	return "Admin";
    }

}
