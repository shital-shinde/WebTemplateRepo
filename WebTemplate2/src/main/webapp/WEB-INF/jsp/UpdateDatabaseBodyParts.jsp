<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>				
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

	<div class="row"> <!-- Page Title Row -->
		<div class="text-center">
			<h2 class="pagesubheader">Update Database Data</h2>	
			<h4 class="errorcode"> ${contactForm.getMessage()} </h4>
		</div>
	</div>	<!-- End of page title row -->

	<div class="row">
		<jsp:include page="Flash.jsp" flush="true"/>
	</div>
	
	<div class="row"> 
		<div class="col-md-8 col-md-offset-2">
			<p class="red"> This tool is only here as a backup option. DO NOT USE unless the automated method is no longer working. </p>
		</div>
	</div>	
	<form:form name="getDatabase" method="post" modelAttribute="contactForm">
		
	<c:if test="${!empty dbList}">

		<input type="hidden" name="userAction" value="" >
		<form:hidden path="SamAccountName" />
		<form:hidden path="DatabasePlatform" />
		
		<div class="row pad">
			<spring:url var="backUrl" value="/web/UpdateDatabase" />
			<div class="col-xs-5 col-md-offset-1">
   				<a type="button" class="btn btn-success" href="${backUrl}">Back</a>
			</div>
   			<div class="col-xs-5">
   				<button type="button" class="btn btn-success right" onclick="update()">Update Selected</button>
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
									
								</th>
							</tr>
					</thead>
					<tbody>
				
					<c:forEach items="${dbList}" var="contact">
						<tr>
							<td><form:input type="text" class="form-control" value="${contact.getDatabasePlatform()}" id="DatabasePlatform" path="DatabasePlatform" disabled="true" ></form:input></td>
							<td><form:input type="text" class="${contact.getDBID()} form-control" value="${contact.getEnvironment()}" id="Environment" path="Environment" disabled="true" ></form:input></td>							
							<td><form:input type="text" class="${contact.getDBID()} form-control" value="${contact.getHostInstance()}" id="HostInstance" path="HostInstance" disabled="true" ></form:input></td>
							<td><form:input type="text" class="${contact.getDBID()} form-control" value="${contact.getDatabaseName()}" id="DatabaseName" path="DatabaseName" disabled="true" ></form:input></td>
							<td class="set39">
								<form:radiobutton class="radio" name="DBID" onclick="disable(this)" value="${contact.getDBID()}" path="DBID" />
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

	</c:if>
	<c:if test="${empty dbList}">
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
									<form:input path="databaseName" type="text" class="form-control input-lg" id="databaseName" placeholder="Search by Server or Database Name"/> 
										<span
										class="input-group-btn serachButtonGroup">
										<button type="submit" name="submitButton" class="btn btn-success input-lg" onclick="search()">
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
		

