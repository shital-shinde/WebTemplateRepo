package com.deere.dsfj.jdorderspringmvcweb.mapper;


import ma.glasnost.orika.MapperFactory;


/**
 * Mapping MDP Model and domain
 */
public class MDPModelDomainMapper {

	private MapperFactory mdpModelDomainFactory = null;

	/**
	 * Include mapping method in constructor
	 */
	public MDPModelDomainMapper(MapperFactory mapperFactory){
		this.mdpModelDomainFactory = mapperFactory;
		/**mapCustomerModelAndCustomer();
	}

	
	 * CustomerModel and Customer Domain mapping
	
	private void mapCustomerModelAndCustomer(){
		mdpModelDomainFactory.classMap(CustomerForm.class, Customer.class)
					 		 .field("stateCode", "state.code")
					 		 .field("stateName", "state.name")
					 		 .field("countryCode", "state.country.code")
					 		 .field("countryName", "state.country.name")
					 		 .byDefault()
					 		 .register(); */
	}


}
