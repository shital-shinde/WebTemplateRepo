package com.deere.dsfj.jdorderspringmvcweb.mapper;

import ma.glasnost.orika.MapperFactory;


/**
 * Mapping webservice Model and domain
 */
public class WebServiceModelDomainMapper {

	private MapperFactory webServiceModelDomainFactory = null;

	/**
	 * Include mapping method in constructor
	 */
	public WebServiceModelDomainMapper(MapperFactory mapperFactory){
		this.webServiceModelDomainFactory = mapperFactory;
		/**	mapCustomerModelAndCustomer();
	}

	
	 * CustomerModel and Customer Domain mapping
     
	private void mapCustomerModelAndCustomer(){
		webServiceModelDomainFactory.classMap(com.deere.dsfj.jdorder.webservice.model.Customer.class, Customer.class)
									 .field("stateCode", "state.code")
									 .field("stateName", "state.name")
									 .field("countryCode", "state.country.code")
									 .field("countryName", "state.country.name")
									 .byDefault()
									 .register();*/
	}


}


