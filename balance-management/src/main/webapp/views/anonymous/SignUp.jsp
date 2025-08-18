<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<app:layout-anonymous title="Sign Up">

	<main>
		<h3>Sign Up</h3>
		
		<c:if test="${message ne null }">
			<div class="alert alert-info">
				<i class="bi bi-info-circle me-1"></i>${message }
			</div>
		</c:if>

		<sf:form modelAttribute="form" action="${root }/signup" method="post">
			<app:form-group label="Enter member name" cssClass="mt-3">
				<sf:input path="name" name="name" type="text" placeholder="Enter member name"
					class="form-control" />
			</app:form-group>
			<app:form-group label="Login ID" cssClass="mt-3">
				<sf:input path="userName" name="username" type="text" placeholder="Enter login id"
					class="form-control" />
			</app:form-group>
			<app:form-group label="Password" cssClass="mt-3">
				<sf:input path="password"  name="password" type="text" placeholder="Enter password"
					class="form-control" />
			</app:form-group>
			<div class="mt-3">
				<a href="${root }/signin" class="btn btn-outline-primary"><i class="bi-unlock me-2"></i>Sign
					In</a>
					<button type="submit" class="btn btn-primary"><i class="bi-person-plus me-2"></i>Sign Up</button>
			</div>
		</sf:form>

	</main>

</app:layout-anonymous>