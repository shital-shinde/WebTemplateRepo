package com.deere.dsfj.jdorderspringmvcweb.service;

import java.util.List;

import com.deere.dsfj.jdorderspringmvcweb.domain.AltEmail;
import com.deere.dsfj.jdorderspringmvcweb.form.AltEmailForm;

/**This is an interface for AltEmailServiceImpl
 * @author Ethan Jenkins
 * @date 7/17/2015
 */
public interface AltEmailService{

    public List<AltEmail> allAltEmail(AltEmailForm altEmailForm);
    
	public AltEmailForm addAltEmail(AltEmailForm altEmailForm);
	
	public AltEmailForm removeAltEmail(AltEmailForm altEmailForm);
	
}
