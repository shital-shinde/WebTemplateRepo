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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.deere.dsfj.jdorderspringmvcweb.domain.AltEmail;
import com.deere.dsfj.jdorderspringmvcweb.form.AltEmailForm;
import com.deere.dsfj.jdorderspringmvcweb.form.ContactForm;
import com.deere.dsfj.jdorderspringmvcweb.service.AltEmailService;

/**
 * AltEmailController class will handle all AltEmail Contact requests. 
 */
@Controller
public class AltEmailController{
 
	/**Injecting ContactService, this variable will be used to call ContactServiceImpl methods*/
	//@Autowired
    //private AltEmailService  altEmailService ;
    
	/** This method is used to get all alternate email addresses for a registration  
	 * @throws Exception 
     * @call allAltEmail
     */
    @RequestMapping(value = {"/AltEmail"}, method=RequestMethod.GET)
    public String displayAltEmail(@RequestParam(value="ID", required=false) Integer DBConID,
    		HttpServletRequest  request, Model model, RedirectAttributes redirectAttributes) throws Exception{
        return "AltEmail";
    } 
    
    /** This method is used to redirect to the Contact page
     */
    @RequestMapping(value = {"/AltEmail"},  params="userAction=cancel",method=RequestMethod.POST)
    public String cancel(){
    	return "redirect:Contact";
    }
    
    /** This method is used to add alternate email addresses   
     * @call addAltEmail
     */
    @RequestMapping(value = {"/AltEmail"},  params="userAction=addAltEmail",method=RequestMethod.POST)
    public String addAltEmail(@ModelAttribute("altEmailForm")AltEmailForm altEmailForm, Model model,HttpServletRequest  request){
        return "AltEmail";
    }
    
    /** This method is used to remove alternate email addresses   
     * @call removeAltEmail
     */
    @RequestMapping(value = {"/AltEmail"}, params="userAction=removeAltEmail",method=RequestMethod.POST)
    public String removeAltEmail(@ModelAttribute("altEmailForm")AltEmailForm altEmailForm, Model model,HttpServletRequest  request){
        return "AltEmail";
    }

}
