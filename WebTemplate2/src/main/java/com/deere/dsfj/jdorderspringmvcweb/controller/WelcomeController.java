package com.deere.dsfj.jdorderspringmvcweb.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/** WelcomeController class handles the requests to display the Welcome page */
@Controller
public class WelcomeController{

    /**
     * Method used to load welcome page
     */
    @RequestMapping(value = {"/Welcome"}, method=RequestMethod.GET)
    public String welcome(Model model, HttpServletRequest request){
        return "Welcome";
    }

}
