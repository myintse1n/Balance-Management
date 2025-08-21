<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="root" value="${pageContext.request.contextPath }"
	scope="request"></c:set>

<form action="${root }/signout" method="post" class="d-none" id="signOutForm">
	<sec:csrfInput/>
</form>
<script type="text/javascript" src="${root }/resources/js/signout.js"></script>