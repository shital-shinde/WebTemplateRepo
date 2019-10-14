package com.deere.dsfj.jdorderspringmvcweb.controller;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpSession;

@RunWith(MockitoJUnitRunner.class)
public class LogOffControllerTest {

	@Mock private MockHttpServletRequest request;
	@Mock private MockHttpSession session;
	
	@InjectMocks	
	private LogOffController logOffController = new LogOffController();
	
	private static final String REDIRCT_URL = "redirectUrl";
	private static final String REDIRCT_LOGEDOFF = "redirect:/LoggedOff.htm";
	private static final String SOME_URL = "someUrl";
	
	@Test
	public void testLogOffWithNullRedirectUrl(){
		when(request.getParameter(REDIRCT_URL)).thenReturn(null);
		
		String returnView = logOffController.logOff(request, null, session);
		
		verify(request, times(1)).getParameter(REDIRCT_URL);
		assertEquals("Reurned view should be " + REDIRCT_LOGEDOFF, REDIRCT_LOGEDOFF, returnView);
	}
	
	@Test
	public void testLogOffWithEmptyRedirectUrl(){
		when(request.getParameter(REDIRCT_URL)).thenReturn("");
		
		String returnView = logOffController.logOff(request, null, session);
		
		verify(request, times(1)).getParameter(REDIRCT_URL);
		assertEquals("Reurned view should be " + REDIRCT_LOGEDOFF, REDIRCT_LOGEDOFF, returnView);
	}

	@Test
	public void testLogOff(){
		when(request.getParameter(REDIRCT_URL)).thenReturn(SOME_URL);
		
		String returnView = logOffController.logOff(request, null, session);
		
		String expected = "redirect:" + SOME_URL;		
		verify(request, times(1)).getParameter(REDIRCT_URL);
		assertEquals("Reurned view should be " + expected, expected, returnView);
	}

}
