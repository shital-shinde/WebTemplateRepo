<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<body>
<spring:url var="Contact" value="/web/Contact">
</spring:url>

<center>	
  <h1>Contact Verification</h1>
  <h2>Error</h2>
     Requested URL/Resource not found. 404 error code. Sorry. 
     <br></br>
     Please try again with different URL or click following URL to go to home page
	 <A href="${Contact}">Contact List</A>
</center>     
</body>
