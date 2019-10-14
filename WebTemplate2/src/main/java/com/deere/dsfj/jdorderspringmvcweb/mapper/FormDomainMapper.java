package com.deere.dsfj.jdorderspringmvcweb.mapper;

import java.util.ArrayList; 
import java.util.List;

import ma.glasnost.orika.MapperFacade;
import ma.glasnost.orika.MapperFactory;
import ma.glasnost.orika.impl.DefaultMapperFactory;



/**
 * Mapping Form and domain
 */

public class FormDomainMapper {

	private MapperFactory formDomainMapperFactory = null;

	/**
	 * Include mapping method in constructor
	 */
	public FormDomainMapper(MapperFactory mapperFactory){
		this.formDomainMapperFactory = mapperFactory;
		/**mapCustomerFormAndCustomer();
		mapLineItemFormAndLineItem();
		mapOrderFormAndOrder();
	}


	/**
	 * Mapping CustomerForm and Customer
	
	private void mapCustomerFormAndCustomer(){
					formDomainMapperFactory.classMap(CustomerForm.class, Customer.class)
											.field("stateCode", "state.code")
											.field("stateName", "state.name")
											.field("countryCode", "state.country.code")
											.field("countryName", "state.country.name")
											.byDefault()
											.register();

	}

	/**
	 * Mapping OrderForm and Order domain class

	private void mapOrderFormAndOrder(){

		formDomainMapperFactory.classMap(OrderForm.class, Order.class)
								.field("orderStatus", "orderStatus.code" )
								.field("orderStatusDescription", "orderStatus.description")
								.fieldBToA("lineItems", "lineItemFormList")
								.byDefault()
								.register();
	}


	/**
	 * Mapping LineItemForm and LineItem domain class
	
	private void mapLineItemFormAndLineItem(){
		formDomainMapperFactory.classMap(LineItemForm.class, LineItem.class)
								.field("orderNumber", "lineItemId.orderNumber")
								.field("itemNumber", "lineItemId.itemNumber")
								.fieldBToA("inventory.description", "description")
								.fieldBToA("inventory.price", "price" )
								.fieldBToA("inventory.itemNumber", "itemNumber" )
								.byDefault()
								.register(); */
	}





}



