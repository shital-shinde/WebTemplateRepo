<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>
	Contact Verification
</title>

<spring:url var="bootStrapcssUrl" value="/components/bootstrap/css/bootstrap.min.css" />
<link href="${bootStrapcssUrl}" rel="stylesheet" type="text/css">

<spring:url var="homepagecssUrl" value="/styles/main.css" />
<link href="${homepagecssUrl}" rel="stylesheet" type="text/css">

<spring:url var="jquerycssUrl" value="/components/data-tables/css/jquery.dataTables.min.css" />
<link href="${jquerycssUrl}" rel="stylesheet" type="text/css">

<spring:url var="jqueryUrl" value="/components/jquery/jquery-1.11.1.min.js" />
<script type="text/javascript" src="${jqueryUrl}"></script>

<spring:url var="jquerydatatableUrl" value="/components/data-tables/js/jquery.dataTables.min.js" />
<script type="text/javascript" src="${jquerydatatableUrl}"></script>

<spring:url var="bootstrapUrl" value="/components/bootstrap/js/bootstrap.min.js" />
<script type="text/javascript" src="${bootstrapUrl}"></script>

<spring:url var="sidemenuurl" value="/scripts/sidemenu.js" />
<script type="text/javascript" src="${sidemenuurl}"></script>
<script type="text/javascript">

	function confirmove(element) {
		$("input[name='DBConID']").attr("value", element.id);	
		if (confirm("Are you sure you want to remove yourself as a contact?")) {
	    	$("input[name='userAction']").val("removeCon");
			$("form").submit();	
	    }
	    return false;
	}
	
	function transfer(element) {
		$("input[name='DBConID']").attr("value", element.id);	
	    	$("input[name='userAction']").val("transfer");
			$("form").submit();	
	}
	
	function verify(){
	    if (confirm("Confirm that you are a current contact for the above databases?")) {
			$("input[name='userAction']").val("verify");
			$("form").submit();
	    }
		return false;
	}

	function update(){
		$("input[name='userAction']").val("update");
		$("form").submit();
		return false
	}
	
	function cancel(){
		$("input[name='userAction']").val("cancel");
		$("form").submit();
		return false
	}
	
</script>
</head>
<body>
	<div class="container">
		<jsp:include page="Header.jsp" flush="true"/>
		<jsp:include page="TopNavbar.jsp" flush="true"/>
		<div class="row"> <!-- side and body menu starts -->	
			<div class="col-md-12 bodypart" id ="bodycontent">
				<jsp:include page="ContactBodyParts.jsp" flush="true"/>
			</div>
		</div> <!-- side and body menu ends -->
		<jsp:include page="Footer.jsp" flush="true"/>
	</div>
</body>
</html>