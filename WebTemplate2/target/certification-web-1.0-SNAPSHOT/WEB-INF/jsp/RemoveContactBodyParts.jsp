<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>				
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<jsp:include page="Flash.jsp" flush="true"/>
<spring:url var="emailPlusUrl" value="/images/AddEmail.png" />
				<div class="row"> 
					<div class="text-center">
						<h2 class="pagesubheader">Remove Contact Registration</h2>
						
						<h4 class="errorcode"> ${contactForm.getMessage()} </h4>
					</div>
				</div>
<form:form name="checkbox" method="post" modelAttribute="contactForm">	

	<c:if test="${!empty contactList}">
		<input type="hidden" name="userAction" value="" >			
		<form:hidden path="SamAccountName" />	
	
		<div class="row"> 
			<div class="text-center">
				<h4 class="green"> Only remove contact database registrations if you have informed the user or the user is no longer with Deere. </h4>
			</div>
		</div>
			
		<div class="row"> 
			<spring:url var="backUrl" value="/web/RemoveContact" />
			<div class="col-xs-5 col-md-offset-1">
   				<a type="button" class="btn btn-success" href="${backUrl}">Back</a>
			</div>
			<div class="col-xs-5">
	    				<button type="button" class="btn btn-success right" onclick="removeContact()">Remove Selected</button>
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
								<th class="set39">
									<input type="checkbox" id="selecctall"/>
								</th>
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
								<td class="set39">
									<form:checkbox class="checkboxes" value="${contact.getDBConID()}" path="DBIDs" />
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</c:if>	
	<c:if test="${empty contactList}">
	<input type="hidden" name="userAction" value="" >
	
		<div class="row">	
					<div>
						<form>
							<div class="col-md-8 col-md-offset-2 searchBox" >
								<div class="input-group">
									<form:input path="SamAccountName" type="text" class="form-control input-lg" id="SamAccountName" placeholder="Enter User's RACF ID"/> 
									<span class="input-group-btn serachButtonGroup">
										<button type="submit" name="submitButton" class="btn btn-success input-lg" onclick="return getUser()">
											<span class="glyphicon glyphicon-search"></span>
										</button>
									</span>
								</div>
							</div>
						</form>	
				</div>
		</div>
	</c:if>	
</form:form>

