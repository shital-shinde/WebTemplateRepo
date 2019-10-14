package com.deere.dsfj.jdorderspringmvcweb.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.deere.dsfj.jdorderspringmvcweb.domain.AltEmail;
import com.deere.dsfj.jdorderspringmvcweb.form.AltEmailForm;

/**This is an interface for AltEmailImplDao
 * @author Ethan Jenkins
 * @date 7/17/2015
 */
public interface AltEmailDao extends CrudRepository<AltEmail, Integer>{

	
}
