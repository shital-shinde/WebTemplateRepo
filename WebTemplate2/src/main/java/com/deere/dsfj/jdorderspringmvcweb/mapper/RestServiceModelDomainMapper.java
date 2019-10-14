package com.deere.dsfj.jdorderspringmvcweb.mapper;

import ma.glasnost.orika.MapperFactory;


/**
 * Mapping Rest Model and domain
 */
public class RestServiceModelDomainMapper {

	private MapperFactory restServiceModelDomainFactory = null;

	/**
	 * Include mapping method in constructor
	 */
	public RestServiceModelDomainMapper(MapperFactory mapperFactory){
		this.restServiceModelDomainFactory = mapperFactory;
		/**mapCustomerModelAndCustomer();
	}

   
	* Mapping CustomerModel and Customer Domain
	
	private void mapCustomerModelAndCustomer(){
		restServiceModelDomainFactory.classMap(com.deere.dsfj.jdorder.restservice.model.CustomerDto.class, Customer.class)
									 .field("stateCode", "state.code")
									 .field("stateName", "state.name")
									 .field("countryCode", "state.country.code")
									 .field("countryName", "state.country.name")
									 .byDefault()
									 .register();*/
	}



}
