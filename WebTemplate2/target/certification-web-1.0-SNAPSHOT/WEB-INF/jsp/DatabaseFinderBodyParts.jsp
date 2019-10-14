<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>				
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<spring:url var="supportUrl" value="/web/Support" />
	<div class="row"> <!-- Page Title Row -->
		<div class="text-center">
			<h2 class="pagesubheader">Database Finder</h2>	
			<h4 class="errorcode"> ${contactForm.getMessage()} </h4>
			<c:if test="${!empty contactForm.getMessages()}">
				<h4 class="errorcode"> ${contactForm.getMessages()} </h4>	
			</c:if>	
		</div>
	</div>	<!-- End of page title row -->

	<div class="row">
		<jsp:include page="Flash.jsp" flush="true"/>
	</div>

	<form:form name="checkbox" method="post" modelAttribute="contactForm">

	<c:if test="${!empty dbList}">
		<div class="row"> 
			<div class="col-md-8 col-md-offset-2">
				<p class="imp">Contact associations are managed by you, the contacts.  To preserve the quality of the data, please be sure to register using the correct contact type.   
				</p>
			</div>
		</div>	
		<input type="hidden" name="userAction" value="" >
		<form:hidden path="SamAccountName" />
		
		<div class="row pad">
		<div class="form-group">
			<div class="col-sm-2 col-sm-offset-5">
				<label for="ConID" class="control-label biggreen right">Register As:</label>
    		</div>
    			<div class="col-sm-3">
    			<form:select class="form-control" id="ConID" path="ConID">
    				<c:forEach items="${contactTypeList}" var="typelist">
						<form:option value="${typelist.getConID()}" label="${typelist.getContactType()}"/>
					</c:forEach>
				</form:select>
    			</div>
    			<div class="col-sm-1">
    				<button type="button" class="btn btn-success right" onclick="add()">Add Selected</button>
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
								<th>Server</th>
								<th>Database Name</th>
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
							<td>${contact.getHostInstance()}</td>
							<td>${contact.getDatabaseName()}</td>
							
							<td class="set39">
								<c:choose>
							      <c:when test="${contact.getIsRegistered()==(true)}">
									<span class="glyphicon glyphicon-ok green"></span>
							      </c:when>
							
							      <c:otherwise>
									<form:checkbox class="checkboxes" value="${contact.getDBID()}" path="DBIDs" />
							      </c:otherwise>
								</c:choose>
							</td>
							
							
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

	</c:if>

	<div class="row"> 
		<div class="col-md-8 col-md-offset-2">
			<p> Find the database(s) for which you would like to be notified. 
			Simply type in the name of the server or database and click the search button.
			</p>
		</div>
	</div>	
	
	<div class="row">
	 <div class="col-sm-offset-2 pad">
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
	 </div>
	</div>
	
	<input type="hidden" name="userAction" value="" >

				<div class="row">	
					<div>
						<form>
							<div class="col-md-8 col-md-offset-2 searchBox" >
								<div class="input-group">
									<form:input path="databaseName" type="text" class="form-control input-lg" id="databaseName"  placeholder="Search by Server or Database Name"/> 
										<span
										class="input-group-btn serachButtonGroup">
										<button type="submit" name="submitButton" class="btn btn-success input-lg" onclick="return search()">
											<span class="glyphicon glyphicon-search"></span>
										</button>
									</span>
								</div>
							</div>
						</form>	
				</div>
		</div>	
		
		<div class="row text-center">
			<p>Can't find a database? <a href="${supportUrl}"> Click Here </a></p> 
		</div>
				
	</form:form>	
	<c:if test="${!empty egg}">
		<div align="center">
			<canvas id="q" class="col-md-8 col-md-offset-2" height="500">Sorry Browser Won't Support</canvas><br/><br/>
		</div>
	</c:if>		

