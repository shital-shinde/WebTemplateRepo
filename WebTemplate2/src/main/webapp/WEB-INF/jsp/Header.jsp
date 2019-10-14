<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<spring:url var="logourl" value="/images/logo.png" />
<spring:url var="colorbarurl" value="/images/colorbar_gy_web.jpg" />		
<spring:url var="exitSimulatedUser" value="/web/SwitchUserExit" />
<spring:url var="simulateUser" value="/web/SwitchUser?SU=" />

<script type="text/javascript">
	
	function displaySwitchBox(){
		$("#switchbox").css("display", "block");
		$("#switchurl").css("display", "none");
	}
	
	$(document).ready(function () {
		$("#switchbox").css("display", "none");
		$("#switchurl").css("display", "block");
	});

	$(function() {
	    $('#simulateUrl').click( function() {
	        window.location = $(this).attr('href') +  $('#simulateBox').val();
	        return false;
	    });
	});


</script>

	<header class="row">
	<div class="col-md-4 col-xs-6 logo-container">
		<img src="${logourl}" alt="DSFJ SAMPLE"
			class="logo" />
	</div>
	<div class="col-md-4 col-md-offset-4 col-xs-6">
		<div class="appname"><spring:message code="Header.contactVerification" /></div>
		<div class="welcome">
		<c:if test="${empty switchuser}">
			<spring:message code="Header.welcome" />, <span class="username">${user.name}</span>
			<c:if test="${isAdminUser == true}">
				
					<div id="switchurl"><a class="clickable" onclick="displaySwitchBox()">Simulate User</a></div>
					<div id="switchbox">
						<input type="text" id="simulateBox" placeholder="Enter RACF ID">
						<a href="${simulateUser}" id="simulateUrl" class="btn btn-success input-sm">Simulate</a>
					</div>
			</c:if>
		</c:if>
		</div>
		<div class="welcome">
			<c:if test="${!empty switchuser}">
				<div><spring:message code="Header.simulatedUser" />, <span class="username">${switchuser.name}</span></div>
				<div><a href="${exitSimulatedUser} "><spring:message code="Header.exitSimulatedUser" /></a></div>
			</c:if>
		</div>
	</div>
	</header>


	<div class="row">
		<img alt="color Bar" src="${colorbarurl}" width="100%"
			height="13px">
	</div>
