<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url var="supportUrl" value="/web/Support" />
		<div class="row">
			<footer >
			<div class = "col-md-6"><spring:message code="Footer.copyright" />.</div>
			<div class="col-md-6" style="text-align: right"><a href="${supportUrl}">Support</a></div>
			</footer>
		</div>