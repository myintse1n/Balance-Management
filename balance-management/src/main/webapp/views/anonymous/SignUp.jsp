<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>

<app:layout-anonymous title="Sign Up">

	<main>
		<h3>Sign Up</h3>

		<form action="#" method="post">
			<app:form-group label="Enter member name" cssClass="mt-3">
				<input name="username" type="text" placeholder="Enter member name"
					class="form-control" />
			</app:form-group>
			<app:form-group label="Login ID" cssClass="mt-3">
				<input name="username" type="text" placeholder="Enter login id"
					class="form-control" />
			</app:form-group>
			<app:form-group label="Password" cssClass="mt-3">
				<input name="password" type="text" placeholder="Enter password"
					class="form-control" />
			</app:form-group>
			<div class="mt-3">
				<a href="${root }/signin" class="btn btn-outline-primary"><i class="bi-unlock me-2"></i>Sign
					In</a>
					<button class="btn btn-primary"><i class="bi-person-plus me-2"></i>Sign Up</button>
			</div>
		</form>

	</main>

</app:layout-anonymous>