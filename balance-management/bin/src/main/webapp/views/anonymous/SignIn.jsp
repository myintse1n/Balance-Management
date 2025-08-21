<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<app:layout-anonymous title="Sign In">

	<main class="login-form">
		<h3>Sign In</h3>
		
		<c:if test="${message ne null }">
			<div class="alert alert-info">
				<i class="bi bi-info-circle me-1"></i>${message }
			</div>
		</c:if>

		<form action="${root }/signin" method="post">
			
			<sec:csrfInput/>
		
			<app:form-group label="Login ID" cssClass="mt-3">
				<input name="username" type="text" placeholder="Enter login id"
					class="form-control" />
			</app:form-group>
			<app:form-group label="Password"  cssClass="mt-3">
				<input name="password" type="text" placeholder="Enter password"
					class="form-control" />
			</app:form-group>
			<div class="mt-3">
				<a href="${root }/signup" class="btn btn-outline-primary"> <i
					class="bi-person-plus me-2"></i>Sign up
				</a>
				<button type="submit" class="btn btn-primary">
					<i class="bi-unlock me-2"></i>Sign In
				</button>
			</div>
		</form>

	</main>

</app:layout-anonymous>