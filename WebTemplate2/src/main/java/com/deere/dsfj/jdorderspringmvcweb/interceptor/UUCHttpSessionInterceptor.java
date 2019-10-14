package com.deere.dsfj.jdorderspringmvcweb.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**This interceptor will intercept all request and response for a controller.*/
@Component(value="uucHttpSessionInterceptor")
public class UUCHttpSessionInterceptor extends HandlerInterceptorAdapter{

	/** logger object used to log the messages for this class */
	private final static Logger logger = LoggerFactory.getLogger(UUCHttpSessionInterceptor.class);
    
/**This method will be called each time before any controller method is called.This method checks if user is present in session,if not then it 
     * calls the UnifiedUserService to get the user object and puts in session.*/
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
    	return true;
    }
    
    /**This method will be called each time after the execution of any method in a controller.*/
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
    	
    }
}
