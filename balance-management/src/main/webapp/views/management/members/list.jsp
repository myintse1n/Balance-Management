<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>

<app:layout-management title="MEMBERS">
	<app:page-title title="Member Management"></app:page-title>

	<!-- Search form -->
	<form class="row" id="searchForm">
		<app:form-group label="status" cssClass="col-auto">
			<select name="status" class="form-select">
				<option value="">search all</option>
			</select>
		</app:form-group>
		<app:form-group label="Registered From" cssClass="col-auto">
			<input name="dateFrom" type="date" class="form-control" />
		</app:form-group>
		<app:form-group label="Registered To" cssClass="col-auto">
			<input name="dateTo" type="date" class="form-control" />
		</app:form-group>
		<app:form-group label="Name" cssClass="col-auto">
			<input type="text" name="name" placeholder="Search Name"
				class="form-control" />
		</app:form-group>
		<div class="col col-wrapper">
			<button class="btn btn-primary">
				<i class="bi-search me-1"></i>Search
			</button>
		</div>
	</form>

	<!-- Result Table -->
	<table class="table table-bordered table-striped table-hover my-3">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Registered At</th>
				<th>Last Login</th>
				<th>Status</th>
				<th>Change at</th>
				<th>Remark</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>Aung Aung</td>
				<td>2025-07-22 10:00</td>
				<td>2025-07-22 10:00</td>
				<td>Active</td>
				<td></td>
				<td></td>
				<td class="text-center">
					<a href="${root }/admin/member/1"><i class="bi-arrow-right"></i></a>
				</td>
			</tr>
		</tbody>
	</table>


	<!-- Pagination -->
	<app:pagination />
</app:layout-management>