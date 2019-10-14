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
	Find Database
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
	$(document).ready(function() {
	    $('#selecctall').click(function(event) {  //on click 
	        if(this.checked) { // check select status
	            $('.checkboxes').each(function() { //loop through each checkbox
	                this.checked = true;  //select all checkboxes with class "checkbox1"               
	            });
	        }else{
	            $('.checkboxes').each(function() { //loop through each checkbox
	                this.checked = false; //deselect all checkboxes with class "checkbox1"                       
	            });         
	        }
	    });
	    
	});
	
	function search(){
    	$("input[name='userAction']").val("search");
		$("form").submit();
		return false;
	}
	
	function add(){
    	$("input[name='userAction']").val("add");
		$("form").submit();
		return false;
	}

	function add(){
    	$("input[name='userAction']").val("add");
		$("form").submit();
		return false;
	}
	
	</script>

<c:if test="${!empty egg}">
	<script type="text/javascript">	
	$(document).ready(function(){
		var s=window.screen;
		var width = q.width=s.width;
		var height = q.height;
		var yPositions = Array(300).join(0).split('');
		var ctx=q.getContext('2d');
		 
		var draw = function () {
		  ctx.fillStyle='rgba(0,70,0,.05)';
		  ctx.fillRect(0,0,width,height);
		  ctx.fillStyle='yellow';
		  ctx.font = '10pt Georgia';
		  yPositions.map(function(y, index){
		    text = String.fromCharCode(1e2+Math.random()*33);
		    x = (index * 10)+10;
		    q.getContext('2d').fillText(text, x, y);
		 if(y > 100 + Math.random()*1e4)
		 {
		   yPositions[index]=0;
		 }
		 else
		 {
		      yPositions[index] = y + 10;
		 }
		  });
		};
		RunMatrix();
		function RunMatrix()
		{
		if(typeof Game_Interval != "undefined") clearInterval(Game_Interval);
		 Game_Interval = setInterval(draw, 33);
		}
		function StopMatrix()
		{
		clearInterval(Game_Interval);
		}
		//setInterval(draw, 33);
		$("button#pause").click(function(){
		StopMatrix();});
		$("button#play").click(function(){RunMatrix();});
		 
		})

	</script>
</c:if>
</head>
<body>
	<div class="container">
		<jsp:include page="Header.jsp" flush="true"/>
		<jsp:include page="TopNavbar.jsp" flush="true"/>
		<div class="row"> <!-- side and body menu starts -->	
			<div class="col-md-12 bodypart" id ="bodycontent">
				<jsp:include page="DatabaseFinderBodyParts.jsp" flush="true"/>
			</div>
		</div> <!-- side and body menu ends -->
		<jsp:include page="Footer.jsp" flush="true"/>
	</div>
</body>
</html>