<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>				
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<spring:url var="executeAsyncTaskUrl" value="/web/ExecuteAsyncTask" />
<spring:url var="contactUrl" value="/web/Contact" />
<spring:url var="databaseSearchUrl" value="/web/DatabaseFinder" />
<spring:url var="adminUrl" value="/web/Admin" />
<spring:url var="welcomeUrl" value="/web/Welcome" />

	<div class="row">
		<div>
			<nav role="navigation" class="navbar navbar-default navbarFont">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" data-target="#navbarCollapse"
					data-toggle="collapse" class="navbar-toggle">
					<span class="sr-only"><spring:message code="TopNavbar.toggleNavigation" /></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<!-- Collection of nav links and other content for toggling -->
			<div id="navbarCollapse" class="collapse navbar-collapse">
				<ul class="nav navbar-nav" id="topnav">
					<li   id="contacttopmenu"><a href="${welcomeUrl} " onclick="displayContactMenu()">Welcome</a></li>
				</ul>
				<ul class="nav navbar-nav" id="topnav">
					<li   id="contacttopmenu"><a href="${contactUrl} " onclick="displayContactMenu()">My Databases</a></li>
				</ul>
				<ul class="nav navbar-nav" id="topnav">
					<li   id="contacttopmenu"><a href="${databaseSearchUrl} " onclick="displayContactMenu()">Database Finder</a></li>
				</ul>
				<c:if test="${isAdminUser == true}">
					<ul class="nav navbar-nav" id="topnav">
						<li   id="contacttopmenu"><a href="${adminUrl} " onclick="displayContactMenu()">Admin</a></li>
					</ul>
				</c:if>
			</div>
			</nav>
		</div>
	</div>