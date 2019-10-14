package com.deere.dsfj.jdorderspringmvcweb.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/** SupportController class handles the requests to display the support page */
@Controller
public class SupportController{

    /**
     * Method used to load support page
     */
    @RequestMapping(value = {"/Support"}, method=RequestMethod.GET)
    public String support(Model model, HttpServletRequest request){

        return "Support";
    }

}
