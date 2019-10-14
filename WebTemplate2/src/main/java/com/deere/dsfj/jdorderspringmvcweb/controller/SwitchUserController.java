package com.deere.dsfj.jdorderspringmvcweb.controller;   

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/** Used to simulate another user.*/
@Controller
public class SwitchUserController{
	
    // This gets called to switch to a different user
	@RequestMapping(value = {"/SwitchUser"}, method=RequestMethod.GET)
    public String switchUser(@RequestParam(value="SU", required=false) String userswitch, HttpServletRequest request, Model model){
    	return "redirect:Contact";
    }
	
	// This gets called to exit switch user
		@RequestMapping(value = {"/SwitchUserExit"}, method=RequestMethod.GET)
	    public String switchUserExit( HttpServletRequest request, Model model){
	    	return "redirect:Contact";
	    }   
}
