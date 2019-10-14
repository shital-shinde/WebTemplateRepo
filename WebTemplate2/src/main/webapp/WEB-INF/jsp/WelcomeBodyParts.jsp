<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>				
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<spring:url var="contactUrl" value="/web/Contact" />
<spring:url var="databaseSearchUrl" value="/web/DatabaseFinder" />
<jsp:include page="Flash.jsp" flush="true"/>
	<div class="row"> 
		<div class="text-center">
			<h2 class="pagesubheader">Welcome to Contact Verification</h2>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-10 col-md-offset-1">
			<div class="row">
			<p>This application allows you to register any and all databases for which you are an Business Owner, Application Support Owner or an user. 
			By registering, you will receive important information and notices concerning that database.  For example, if a database will 
			be down for a scheduled maintenance, everyone registered to that database will be informed by email. Please be sure to register 
			correctly for all databases that concern you. </p>
			<br>
			<h4 class="green">Quick Guide:</h4>
			<p class="imp">Find the databases for which you are registered at the <a href="${contactUrl}">My Databases</a> tab. Here you can:</p>
			<ul>
				<li>Review and verify registered databases.</li>
				<li>Transfer a registered database that no longer belongs to you.<span class="green">*</span></li>
				<li>Add alternate email addresses such as PDLs or external contacts.</li>
			</ul>
			<p class="imp"> Register for databases at the <a href="${databaseSearchUrl}">Database Finder</a> tab. Here you can: </p>
			<ul>
				<li>Search for databases by server or database name.</li>
				<li>Register as a certain contact type for all selected databases.<span class="green">**</span></li>
			</ul>
			</div>
			<br>
			<div class="row">
				<p class="fineprint"><span class="green">*</span> &nbsp;For the purpose of maintaining database
				 contact data, all business owner and application support owner contacts will be required transfer 
				 registration to the next owner. All alternate email addresses you have included will also be transfered.</p>
				<p class="fineprint"><span class="green">**</span> &nbsp; Please be sure to register as the correct 
				contact type, as this will determine the notifications you will receive. The default contact type is 'user' 
				and should be used if you are not one of the other contact types. Business Owners and Application Support Owners will receive information that relates to their position. </p>
			</div>
			<br>
			<div class="row">
 				<p>We will periodically send an email requesting that you return to this site and verify your registered databases. This contact data is maintained by you, the users, so please keep your database contact information correct and up-to-date.  Thank you.</p>
			</div>
		</div>
	</div>
				
	


