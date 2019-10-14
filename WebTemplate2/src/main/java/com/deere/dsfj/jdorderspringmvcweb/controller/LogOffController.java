package com.deere.dsfj.jdorderspringmvcweb.controller;

import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**LogOffController is responsible to invalidate the user session*/

@Controller
public class LogOffController{

    /**
     * logOff method will invalidate the user session and then it will display the LogOff.htm
     * @param request
     * @param response
     * @param session
     * @return
     */
    @RequestMapping(value = {"/LogOff"}, method=RequestMethod.GET)
    public String logOff(HttpServletRequest  request, HttpServletResponse response, HttpSession session){
        session.invalidate();
        String redirectURL = request.getParameter("redirectUrl");
        return "redirect:/LoggedOff.htm";     
    }
    
}
