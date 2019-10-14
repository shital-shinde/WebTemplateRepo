<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>				
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<spring:url var="contactUrl" value="/web/Contact" />
<spring:url var="databaseSearchUrl" value="/web/DatabaseFinder" />
<jsp:include page="Flash.jsp" flush="true"/>
		<div class="row"> 
		<div class="text-center">
			<h2 class="pagesubheader">Contact Verification Support</h2>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-8 col-md-offset-2">
			<div class="row">
				<h3>Can't transfer database ownership:</h3>
 				<p>
 				Please try to find who the new owner is first. If you can't then feel free to contact us to be removed as a contact.
	    		<br><br>For SQL Server contact: <br>GlobalITSQLServerDBASupport@JohnDeere.com <br><br>For Oracle contact: <br>GlobalITOracleDBASupport@JohnDeere.com 
				</p>
			</div>
			<br>
			<div class="row">
				<h3>Not able to find a database:</h3>
 				<p>
 				Please first verify the name by going to http://sop.dx.deere.com/ to find the desired server or database name.  If Database Finder still cannot find the database you are looking for, then feel free to contact us.
	    		<br><br>For SQL Server contact:<br> GlobalITSQLServerDBASupport@JohnDeere.com <br><br>For Oracle contact:<br> GlobalITOracleDBASupport@JohnDeere.com
 				</p>
			</div>
		</div>
	</div>
				
	


