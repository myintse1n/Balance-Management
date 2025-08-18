<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>

<app:layout-member title="ACCESS">

	<app:page-title title="Access History"></app:page-title>

	<!-- Search Form -->
	<form class="row">
		<app:form-group label="Status" cssClass="col-auto">
			<select name="" id="" class="form-select">
				<option value="Search All">Search All</option>
				<option value="Success">Success</option>
				<option value="Fails">Fails</option>
			</select>
		</app:form-group>
		<app:form-group label="Date From" cssClass="col-auto">
			<input type="date" class="form-control" />
		</app:form-group>
		<app:form-group cssClass="col-auto" label="Date To">
			<input type="date" class="form-control" />
		</app:form-group>
		<app:form-group cssClass="col-auto" label="Keyword">
			<input type="text"  class="form-control" placeholder="Enter keyword"/>
		</app:form-group>
		<div class="col-wrapper col-auto">
			<button class="btn btn-primary ">Search</button>
		</div>
	</form>
	
	<!-- Result Table -->
	<table class="table table-striped table-hover my-3">
		<thead>
			<tr>
				<th>Access At</th>
				<th>Access Type</th>
				<th>Status</th>
				<th>Remark</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>2025-04-01</td>
				<td>Login</td>
				<td>Fails</td>
				<td>Wrong Password</td>
			</tr>
		</tbody>
	</table>
	
	<!-- Pagination -->
	<app:pagination/>

</app:layout-member>