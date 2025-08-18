<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags" %>
<%@ attribute name="title" required="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BALANCE | ${title.toUpperCase()}</title>
<c:set var="root" value="${pageContext.request.contextPath }"
	scope="request" />
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
<link rel="stylesheet" href="${root }/resources/css/common.css">
</head>
<body>
	<nav class="navbar navbar-expand bg-info-subtle shadow sticky-top">
		<div class="container">
			<a href="${root }/member/home" class="navbar-brand"><i
				class="bi bi-house me-1"></i>Balance Management</a>

			<ul class="navbar-nav">
				<li class="nav-item"><a href="${root }/member/balance"
					class="nav-link ${title eq 'BALANCES' ? 'active' : '' }"><i
						class="bi bi-bar-chart "></i> Balance</a></li>
				<li class="nav-item"><a href="${root }/member/entry/incomes"
					class="nav-link ${title eq 'incomes' ? 'active' : '' }"><i
						class="bi bi-flag "></i> Incomes</a></li>
				<li class="nav-item"><a href="${root }/member/entry/expenses"
					class="nav-link ${title eq 'expenses' ? 'active' : '' }"><i
						class="bi-cart "></i> Expenses</a></li>
				<li class="nav-item"><a href="${root }/member/ledger"
					class="nav-link ${title eq 'LEDGERS' ? 'active' : '' }"><i
						class="bi-tags "></i> Ledgers</a></li>
				<li class="nav-item"><a href="#" id="signOutMenu"
					class="nav-link "><i class=" bi-unlock me-1"></i> Sign Out</a></li>
			</ul>
		</div>
	</nav>
	<main class="container my-4">
		<jsp:doBody></jsp:doBody>
	</main>
	<app:sign-out/>
</body>
</html>