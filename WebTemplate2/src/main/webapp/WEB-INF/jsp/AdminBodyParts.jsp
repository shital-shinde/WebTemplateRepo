<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>				
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<form:form name="frm" method="post" modelAttribute="contactForm">
	<input type="hidden" name="userAction" value="" >
	
<div class="row">
	<jsp:include page="Flash.jsp" flush="true"/>
</div>	
	
<c:if test="${empty dbListEmail && empty dbList && empty missingList && empty pastList && empty supportList && empty emailList}">		
	<div class="row"> 
		<div class="text-center">
			<h2 class="pagesubheader">Admin Tools and Reports</h2>	
			<h4 class="errorcode"> ${contactForm.getMessage()} </h4>	
		</div>
	</div>	
	<div class="row">	
		<div class="col-md-10 col-md-offset-1">
			<div class="btn-group btn-group-justified" role="group">
			  <div class="btn-group" role="group">
			  <button type="button"  id="email" class="btn btn-default">Email List</button>
			  </div>
			  <div class="btn-group" role="group">
			  <button type="button"  id="detail" class="btn btn-default">Database Details</button>
			  </div>
			  <div class="btn-group" role="group">
			  <button type="button"  id="miss" class="btn btn-default">Missing Contacts</button>
			  </div>
			  <div class="btn-group" role="group">
			  <button type="button"  id="past" class="btn btn-default">Overdue Verification</button>
			  </div>
			  <div class="btn-group" role="group">
				  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
				    Updating Tools <span class="caret"></span>
				  </button>
				  <spring:url var="removeDatabaseContactUrl" value="/web/RemoveContact" />
				  <spring:url var="updateDatabaseUrl" value="/web/UpdateDatabase" />
				  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
				    <li><a href="${removeDatabaseContactUrl}">Remove Contact Registration</a></li>
				    <li role="separator" class="divider"></li>
				    <li><a href="${updateDatabaseUrl}">Manually Update a Database</a></li>
				  </ul>
				 </div>
			</div>
		</div>
	</div>
	
				
	
	<div class="row">
	<div class="col-sm-offset-1 pad">
		<div class="form-group Filter">
				<label for="DatabasePlatform" class="col-sm-1 control-label">Platform:</label>
	    		<div class="col-sm-2">
	    		<form:select class="form-control clickable" id="DatabasePlatform" path="DatabasePlatform">
	    			<form:option value="%" label="All"/>
	    			<c:forEach items="${platformFilter}" var="platform">
						<form:option value="${platform}" label="${platform}"/>
					</c:forEach>
				</form:select>
	    		</div>
	 	</div>
	 	<div class="form-group Filter">
				<label for="Environment" class="col-sm-1 control-label">Environment:</label>
	    		<div class="col-sm-2">
	    		<form:select class="form-control clickable" id="Environment" path="Environment">
	    			<form:option value="%" label="All"/>
	    			<c:forEach items="${environmentFilter}" var="environment">
						<form:option value="${environment}" label="${environment}"/>
					</c:forEach>
				</form:select>
	    		</div>
	 	</div>
	 	<div class="form-group contactFilter">
				<label for="ContactType" class="col-sm-2 control-label">Contact Type:</label>
	    		<div class="col-sm-2">
	    		<form:select class="form-control clickable" id="ContactType" path="ContactType">
	    			<form:option value="%" label="All"/>
	    			<c:forEach items="${contactTypeList}" var="typelist">
						<form:option value="${typelist.getContactType()}" label="${typelist.getContactType()}"/>
					</c:forEach>
				</form:select>
	    		</div>
	 	</div>
	</div>
	</div>
</c:if>
<div class="row searchBox pad">	             
<div class="col-md-8 col-md-offset-2" >
	<div class="input-group">
		<form:input path="databaseName" type="text" class="form-control input-lg" id="databaseName" placeholder="Search by Server or Database Name"/> 
		<span class="input-group-btn serachButtonGroup">
		<button type="submit" name="submitButton" class="btn btn-success subbutton input-lg" onclick="">
			<span class="glyphicon glyphicon-search"></span>
		</button>
		</span>
    </div>    
</div>
</div>

<div class="row pad">	
	<div class="col-md-2 col-md-offset-9">
		<button id="missButton" type="button" class="btn btn-success subut right" onclick="submitMissing()">Get Missing</button>
		<button id="pastButton" type="button" class="btn btn-success subut right" onclick="submitPast()">Get Overdue</button>
	</div>
</div>

<c:if test="${!empty dbListEmail}">	
	<div class="row"> 
			<div class="text-center">
				<h3 class="green">Select Databases to get Email List</h3>	
			</div>
	</div>
	<div class="row pad">
		<div class="form-group">
			<spring:url var="backUrl" value="/web/Admin" />
			<div class="col-xs-4 col-md-offset-1">
   				<a type="button" class="btn btn-success" href="${backUrl}">Back</a>
			</div>
			<div class="col-sm-2">
				<label for="ContactType" class="control-label biggreen right">Get Email Addresses:</label>
    		</div>
    			<div class="col-sm-3">
    			<form:select class="form-control" id="ContactType" path="ContactType">
    				<form:option value="%" label="All"/>
    				<c:forEach items="${contactTypeList}" var="typelist">
						<form:option value="${typelist.getContactType()}" label="${typelist.getContactType()}"/>
					</c:forEach>
				</form:select>
    			</div>
    			<div class="col-sm-1">
    				<button id="emailButton" type="button" class="btn btn-success right" onclick="submitEmail()">Get List</button>
 				</div>
 		</div>
	</div>
	<div class="row searchResult pad">
			<div class="col-xs-10 col-md-offset-1  table-responsive" >
					<table class="table table-bordered table-striped text-center" id="contactTable">
							<thead>
										<tr>
											<th>Platform</th>
											<th>Environment</th>											
											<th class="limit200">Server</th>
											<th class="limit300">Database Name</th>
											<th class="set39">
												<input type="checkbox" id="selecctall"/>
											</th>
										</tr>
							</thead>
							<tbody>
									<c:forEach items="${dbListEmail}" var="contact">
										<tr>
											<td>${contact.getDatabasePlatform()}</td>
											<td>${contact.getEnvironment()}</td>											
											<td class="limit200">${contact.getHostInstance()}</td>
											<td class="limit300">${contact.getDatabaseName()}</td>
											<td class="set39">
												<form:checkbox class="checkboxes" value="${contact.getDBID()}" path="DBIDs" />
											</td>
										</tr>
									</c:forEach>
							</tbody>
					</table>
			</div>
	</div>
</c:if>
				
		
<c:if test="${!empty dbList}">	
	<div class="row"> 
			<div class="text-center">
				<h3 class="green">Select Databases for Details Report</h3>	
			</div>
	</div>	
	<div class="row">
		<spring:url var="backUrl" value="/web/Admin" />
		<div class="col-xs-5 col-md-offset-1">
  			<a type="button" class="btn btn-success" href="${backUrl}">Back</a>
		</div>	
		<div class="col-md-5">
			<button id="userButton" type="button" class="btn btn-success right" onclick="submitDetails()">Get Details</button>
		</div>
	</div>	
	<div class="row searchResult pad">
			<div class="col-xs-10 col-md-offset-1  table-responsive" >
					<table class="table table-bordered table-striped text-center" id="contactTable">
							<thead>
										<tr>
											<th>Platform</th>
											<th>Environment</th>											
											<th class="limit200">Server</th>
											<th class="limit300">Database Name</th>
											<th class="set39">
												<input type="checkbox" id="selecctall"/>
											</th>
										</tr>
							</thead>
							<tbody>
									<c:forEach items="${dbList}" var="contact">
										<tr>
											<td>${contact.getDatabasePlatform()}</td>
											<td>${contact.getEnvironment()}</td>											
											<td class="limit200">${contact.getHostInstance()}</td>
											<td class="limit300">${contact.getDatabaseName()}</td>
											<td class="set39">
												<form:checkbox class="checkboxes" value="${contact.getDBID()}" path="DBIDs" />
											</td>
										</tr>
									</c:forEach>
							</tbody>
					</table>
			</div>
	</div>
</c:if>

<c:if test="${!empty emailList}">
		<div class="row"> 
			<div class="text-center">
				<h3 class="green">Email List</h3>	
			</div>
		</div>	
		
		<div class="row"> 
		<spring:url var="backUrl" value="/web/Admin" />
		<div class="col-xs-1 col-md-offset-1">
  			<a type="button" class="btn btn-success" href="${backUrl}">Back</a>
		</div>	

			<div class="form-horizontal col-md-8" >
				<div class="form-group">
					 <textarea class="form-control" rows="5" id="Emails"><c:forEach items="${emailList}" var="email">${email}; &nbsp;</c:forEach></textarea>
				</div>
			</div>
		</div>
</c:if>

<c:if test="${!empty supportList}">

<div class="row"> 
	<div class="text-center">
		<h3 class="green">Database Details Report</h3>	
	</div>
</div>	
<div class="row"> 
	<spring:url var="backUrl" value="/web/Admin" />
	<div class="col-xs-5 col-md-offset-1">
 			<a type="button" class="btn btn-success" href="${backUrl}">Back</a>
	</div>	
</div>
<div class="col-xs-10 col-md-offset-1">
	<div class="row pad"> 
		<c:forEach items="${databaseList}" var="database">
		<div class="well">
			<div class="row"> 
				<div class="text-center">
					<h4 class="green">${database.getDatabaseName()}</h4>	
				</div>
			</div>	
			<table class="table table-bordered table-striped text-center" id="contactTable">
				<thead>
							<tr>											
								<th>Platform</th>
								<th>Environment</th>
								<th>Server</th>
							</tr>
				</thead>
				<thead>
							<tr>											
								<td>${database.getDatabasePlatform()}</td>
								<td>${database.getEnvironment()}</td>
								<td>${database.getHostInstance()}</td>
							</tr>
				</thead>
				<thead>
							<tr>											
								<th>Contact Status</th>
								<th>Name (RACF ID)</th>
								<th>Email Address</th>
							</tr>
				</thead>
				<tbody>
						<c:forEach items="${supportList}" var="contact">
							<c:if test="${contact.getDBID() == database.getDBID()}">
								<tr>
									<td>${contact.getContactType()}</td>
									<td>${contact.getDisplayName()}</td>											
									<td>${contact.getEmailAddress()}</td>
								</tr>
							</c:if>
						</c:forEach>
				</tbody>
			</table>
		</div>
		</c:forEach>
	</div>
</div>
</c:if>

<c:if test="${!empty missingList}">
	<div class="row"> 
			<div class="text-center">
				<h3 class="green">Missing Contacts Report</h3>	
			</div>
	</div>	
	<div class="row"> 
		<spring:url var="backUrl" value="/web/Admin" />
		<div class="col-xs-5 col-md-offset-1">
  			<a type="button" class="btn btn-success" href="${backUrl}">Back</a>
		</div>	
		<div class="col-xs-2 col-md-offset-3">
  			<h4 class="imp right">Total: ${missingList.size()}</h4>
		</div>	
	</div>
	<div class="row searchResult pad">
			<div class="col-xs-10 col-md-offset-1  table-responsive" >
					<table class="table table-bordered table-striped text-center" id="contactTable">
							<thead>
										<tr>											
											<th>Platform</th>
											<th>Environment</th>											
											<th class="limit200">Server</th>
											<th class="limit300">Database Name</th>
										</tr>
							</thead>
							<tbody>
									<c:forEach items="${missingList}" var="contact">
										<tr>
											<td>${contact.getDatabasePlatform()}</td>
											<td>${contact.getEnvironment()}</td>											
											<td class="limit200">${contact.getHostInstance()}</td>
											<td class="limit300">${contact.getDatabaseName()}</td>
										</tr>
									</c:forEach>
							</tbody>
					</table>
			</div>
	</div>
</c:if>

<c:if test="${!empty pastList}">
	<div class="row"> 
			<div class="text-center">
				<h3 class="green">Overdue Verification Report</h3>	
			</div>
	</div>	
	<div class="row"> 
		<spring:url var="backUrl" value="/web/Admin" />
		<div class="col-xs-5 col-md-offset-1">
  			<a type="button" class="btn btn-success" href="${backUrl}">Back</a>
		</div>
		<div class="col-xs-2 col-md-offset-3">
  			<h4 class="imp right">Total: ${pastList.size()}</h4>
		</div>		
	</div>
	<div class="row searchResult pad">
			<div class="col-xs-10 col-md-offset-1  table-responsive" >
					<table class="table table-bordered table-striped text-center" id="contactTable">
							<thead>
										<tr>
											<th>Platform</th>
											<th>Environment</th>											
											<th class="limit200">Server</th>
											<th class="limit300">Database Name</th>
											<th>Name (RACF ID)</th>
											<th>Date Verified</th>
										</tr>
							</thead>
							<tbody>
									<c:forEach items="${pastList}" var="contact">
										<tr>
											<td>${contact.getDatabasePlatform()}</td>
											<td>${contact.getEnvironment()}</td>											
											<td class="limit200">${contact.getHostInstance()}</td>
											<td class="limit300">${contact.getDatabaseName()}</td>
											<td>${contact.getDisplayName()}</td>
											<td>${contact.getVerifiedDate()}</td>
										</tr>
									</c:forEach>
							</tbody>
					</table>
			</div>
	</div>
</c:if>
		
</form:form>


