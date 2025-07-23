<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>

<app:layout-management title="ACCESS">
	<app:page-title title="Access History" />

	<!-- Form Search -->

	<form class="row">
		<app:form-group cssClass="col-auto" label="Status">
			<select class="form-select">
				<option value="">Search AllS</option>
			</select>
		</app:form-group>

		<app:form-group cssClass="col-auto" label="Date From">
			<input name="dateFrom" type="date" class="form-control" />
		</app:form-group>
		<app:form-group cssClass="col-auto" label="Date To">
			<input name="dateTo" type="date" class="form-control" />
		</app:form-group>
		<app:form-group cssClass="col-auto" label="Name">
			<input name="name" type="text" class="form-control"
				placeholder="Enter name" />
		</app:form-group>
		<div class="col col-wrapper">
			<button class="btn btn-primary">
				<i class="bi bi-search me-1"></i>Search
			</button>
		</div>
	</form>

	<!-- Access Information Result Table  -->
	<table class="table table-striped table-bordered table-hover mt-3">
		<thead>
			<tr>
				<th>Member</th>
				<th>Access At</th>
				<th>Access Type</th>
				<th>Status</th>
				<th>Remark</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Aung Aung</td>
				<td>2025-07-25</td>
				<td></td>
				<td>Active</td>
				<td></td>
			</tr>
		</tbody>
	</table>
	
	<!-- Pagination -->
	<app:pagination/>

</app:layout-management>