<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

	<div class="row"> <!-- Page Title Row -->
		<div class="text-center">
			<h2 class="pagesubheader">Add and Review Alternate Email Addresses</h2>
			<h4 class="errorcode"> ${contactForm.getMessage()} </h4>
			<h4 class="errorcode"> ${altEmailForm.getMessage()} </h4>
		</div>
	</div>	<!-- End of page title row -->
	<div class="row">
		<jsp:include page="Flash.jsp" flush="true"/>
	</div>
 
	<div class="row"> 
		<div class="text-center">
			<div class="col-md-8 col-md-offset-2 text-left" >
				<p>Please specify any PDLs or external email addresses to also be notified concerning this database. Please validate each email addresses before adding.</p>
			</div>
		</div>
	</div>
	<spring:url var="altEmailActionURL" value="/web/AltEmail" />
	<form:form class="form-horizontal" name="frm" method="post" modelAttribute="altEmailForm" action="${altEmailActionURL}">
			<input type="hidden" name="userAction" value="">
			<form:hidden path="SamAccountName"/>
			<form:hidden path="DatabaseContactID"/>
			<form:hidden name="EmailID" path="EmailID" value=""/>

	<c:if test="${!empty altEmailList}">
		<div class="row dataRow col-md-6 col-md-offset-3">
			<div class="form-horizontal" >
				<table class="table table-bordered table-striped text-center" id="contactTable">
					<thead>
							<tr>
								<th>Email Address</th>
							</tr>
					</thead>
					<tbody>
				
					<c:forEach items="${altEmailList}" var="email">
						<tr>
							<td>${email.getEmailAddress()}</td>
							<td>
								<a id="${email.getEmailID()}" class="danger clickable" onclick="return removeAltEmail(this)" title="Remove">X</a>						
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</c:if>
	<div class="row dataRow">
		<div class="col-xs-10 col-md-offset-1">
				<div class="form-group">
   					<label for="EmailAddress" class="col-sm-3 control-label">Email Address:</label>
   					<div class="col-sm-6">
      						<form:input type="text" class="form-control" id="EmailAddress" path="EmailAddress"></form:input>
   					</div>
				</div>
			<div class="row pad">
				<div class="col-sm-3 col-sm-offset-3">
					<button type="submit" name="submitButton"  class="btn btn-success" onclick="return addAltEmail()"><span class="glyphicon glyphicon-ok"></span>&nbsp;&nbsp; Add Email</button>
				</div>
				<div class="col-sm-3">
					<button type="button" class="btn btn-primary right" onclick="cancel()">Done</button>
				</div>
			</div>
		</div>
	</div>
</form:form>