<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<%@ attribute name="title" required="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BALANCE | ${title.toUpperCase()}</title>
<c:set var="root" value="${pageContext.request.contextPath }"
	scope="request"></c:set>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="${root }/resources/css/anonymous.css">
</head>
<body>

	<div class="vh100 d-flex">

		<div
			class="heading w-50 d-flex justify-content-center align-items-center flex-column">
			<svg xmlns="http://www.w3.org/2000/svg" width="200" height="200"
				fill="currentColor" class="bi bi-bar-chart-line-fill"
				viewBox="0 0 16 16">
  <path
					d="M11 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h1V7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7h1z" />
</svg>
			<h1>Balance Management</h1>
			<h3>Powered by JDC</h3>
		</div>

		<div class="w-50 d-flex justify-content-center flex-column align-items-center">
			<jsp:doBody></jsp:doBody>
		</div>
	</div>
</body>
</html>