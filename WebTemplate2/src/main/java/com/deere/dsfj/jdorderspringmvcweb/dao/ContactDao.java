package com.deere.dsfj.jdorderspringmvcweb.dao;

import org.springframework.data.repository.CrudRepository;

import com.deere.dsfj.jdorderspringmvcweb.domain.Contact;

/**This is an interface for ContactDaoImpl
 * @author Ethan Jenkins
 * @date 7/17/2015
 */
public interface ContactDao extends CrudRepository<Contact, Integer>{
 
	 
}
