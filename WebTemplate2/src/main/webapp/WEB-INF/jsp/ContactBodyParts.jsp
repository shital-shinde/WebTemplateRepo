<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>				
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<jsp:include page="Flash.jsp" flush="true"/>
<spring:url var="emailPlusUrl" value="/images/AddEmail.png" />
<spring:url var="contactActionURL" value="/web/Contact" />
<spring:url var="supportUrl" value="/web/Support" />

<c:if test="${transferForm.getDatabaseName() == null || transferForm.getHostInstance() == null}">
	<form:form name="frm" method="post" modelAttribute="contactForm" action="${contactActionURL}">
		<input type="hidden" name="userAction" value="" >
		<form:hidden name="idPlaceholder" path="DBConID" value=""/>
					<div class="row"> 
						<div class="text-center">
							<h2 class="pagesubheader">My Databases &nbsp;&nbsp;<a title="Help" class="myinfo" data-toggle="collapse" href="#collapseInfo" aria-expanded="false" aria-controls="collapseInfo"><span class="glyphicon glyphicon-question-sign"></span></a></h2>
							
							<h4 class="errorcode"> ${contactForm.getMessage()} </h4>
						</div>
					</div>
					<div class="collapse" id="collapseInfo">
					<div class="row"> 
						<div class="col-xs-7 col-md-offset-3">
							<p>This is the list of databases for which you are registered as a contact. Please review them and verify at the bottom. <br> 
							You also can: </p>
							<ul>
							  <li>Add databases to your list by going to the 'Database Finder' tab above.</li>
							  <li>Remove or transfer a database by clicking &nbsp; <a class="danger"><span class="glyphicon glyphicon-remove"></span></a>&nbsp; or &nbsp;<a class="primary"><span class="glyphicon glyphicon-share-alt"></span></a>
							  <li>Add alternate email addresses by clicking &nbsp; <img class="tinted-image" src="${emailPlusUrl}" alt="Add Email" />
							</ul>
							<p>Please keep this list up-to-date to ensure accurate communication. </p>
						</div>
					</div>	
					</div>
		
		<c:if test="${!empty contactList}">
			<div class="row"> 
				<div class="text-center">
					<h4 class="green"> Please verify that you are a current contact for the following databases: </h4>
				</div>
			</div>	
		
			<div class="row searchResult">
				<div class="col-xs-10 col-md-offset-1  table-responsive" >
					<table class="table table-bordered table-striped text-center" id="contactTable">
						<thead>
								<tr>
									<th>Platform</th>
									<th>Environment</th>
									<th>Server</th>
									<th>Database Name</th>
									<th>Last Verified</th>
									<th>Contact Type </th>
								</tr>
						</thead>
						<tbody>
					
						<c:forEach items="${contactList}" var="contact">
							<tr>
								<td>${contact.getDatabasePlatform()}</td>
								<td>${contact.getEnvironment()}</td>
								<td>${contact.getHostInstance()}</td>
								<td>${contact.getDatabaseName()}</td>
								<td>${contact.getVerifiedDate()}</td>
								<td>${contact.getContactType()}</td>
								<td>
								<c:choose>
							      <c:when test="${contact.getNeedsReplacement()==(true)}">
									<a class="primary clickable" onclick="transfer(this)" id="${contact.getDBConID()}" data-toggle="tooltip" data-placement="top" title="Transfer"><span class="glyphicon glyphicon-share-alt"></span></a>	
							      </c:when>
							      <c:otherwise>				
									<a onclick="return confirmove(this)" id="${contact.getDBConID()}" class="danger clickable" data-toggle="tooltip" data-placement="top" title="Remove"><span class="glyphicon glyphicon-remove"></span></a>
							      </c:otherwise>
								</c:choose>
								</td>
									<td>
										<spring:url var="AltEmailUrl" value="/web/AltEmail?ID={id}" >
										<spring:param name="id" value="${contact.getDBConID()}" />
										</spring:url>
										<a class="green" href="${AltEmailUrl}" data-toggle="tooltip" data-placement="top" title="Alternate Addresses">
											<img class="tinted-image" src="${emailPlusUrl}" alt="Alternate Addresses" />
										</a>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			
		<div class="row dataRow">
				<input type="hidden" name="userAction" value="">
					<div class="form-group text-center">
							<button type="button" class="btn btn-success " onclick="verify()"><span class="glyphicon glyphicon-ok"></span>&nbsp;&nbsp; Verify All Databases</button>
					</div>
		</div>
		</c:if>	
	</form:form>
</c:if>
<c:if test="${transferForm.getDatabaseName()!= null || transferForm.getHostInstance()!= null}">
	<form:form name="frm" method="post" modelAttribute="transferForm" action="${contactActionURL}">
		<input type="hidden" name="userAction" value="" >
		<div class="row"> <!-- Page Title Row -->
			<div class="text-center">
				<h2 class="pagesubheader">Transfer Contact</h2>
				<h4 class="errorcode"> ${transferForm.getMessage()} </h4>
			</div>
		</div>	<!-- End of page title row -->
		<div class="row">
			<jsp:include page="Flash.jsp" flush="true"/>
		</div>
		
		<div>
	    
	    <div class="row"> 
			<div class="text-center">
				<div class="col-md-8 col-md-offset-2 text-left" >
					<p>This is used to assign someone else as the contact for this database. You will no longer be a contact for this database and the person you reference will become the new contact after verifying.</p>
				</div>
			</div>
		</div>	
	    
	    <div class="row dataRow">
			<input type="hidden" name="userAction" value="">
			<form:hidden path="DBConID" />
	 			<div class="row">
	 				<div class="col-sm-6 col-sm-offset-3">
		 				<table class="table table-bordered table-striped" id="contactTable">
		 					<tbody>
								<tr>
									<th class="left">Platform</th>
									<td class="left">${transferForm.getDatabasePlatform()}</td>
								</tr>
								<tr>
									<th class="left">Environment</th>
									<td class="left">${transferForm.getEnvironment()}</td>
								</tr>
								<tr>
									<th class="left">Server</th>
									<td class="left">${transferForm.getHostInstance()}</td>
								</tr>
								<tr>
									<th class="left">Database Name</th>
									<td class="left">${transferForm.getDatabaseName()}</td>
								</tr>
							</tbody>
		 				</table>
					</div>
				</div>
					
				<div class="row text-center">
	 				<h5 class="imp">New Contact's JohnDeere.com Email Address:</h5>
				</div>
				<div class="row text-center">
					<div class="form-group">
		   				<div class="col-sm-6 col-sm-offset-3">
		      				<form:input type="text" class="form-control" id="EmailAddress" path="EmailAddress"></form:input>
		   				</div>
					</div>
				</div>
				<div class="row pad">
					<div class="col-sm-3 col-sm-offset-3">
						<button type="submit" name="submitButton"  class="btn btn-success" onclick="return update()"><span class="glyphicon glyphicon-ok"></span>&nbsp;&nbsp; Submit Transfer</button>
					</div>
					<div class="col-sm-3">
						<button type="button" class="btn btn-primary right" onclick="cancel()"> <span class="glyphicon glyphicon-remove"></span>&nbsp;&nbsp; Cancel</button>
					</div>
				</div>
				<div class="row text-center">
					<p>Don't know who the new contact is? <a href="${supportUrl}"> Click Here </a></p> 
				</div>
			</div>
		</div>
	</form:form>
</c:if>

