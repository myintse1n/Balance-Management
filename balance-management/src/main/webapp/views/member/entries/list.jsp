<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>

<app:layout-member title="${type}">
	<app:page-title title="${balanceType } Management"></app:page-title>

	<!-- Search Form -->
	<form class="row mt-3">
		<app:form-group cssClass="col-auto" label="Date From">
			<input name="dateFrom" type="date" class="form-control" />
		</app:form-group>
		<app:form-group cssClass="col-auto" label="Date To">
			<input name="dateTo" type="date" class="form-control" />
		</app:form-group>
		<div class="col-auto col-wrapper">
			<button class="btn btn-primary ">
				<i class="bi bi-search me-1"></i>Search
			</button>
			<a href="${root }/member/entry/add-new/${type}"
				class="btn btn-danger "><i class="bi bi-plus me-1 "></i>New
				Entry</a>
		</div>
	</form>

	<!-- Result Table -->
	<table class="table table-striped table-bordered table-hover my-3">
		<thead>
			<tr>
				<th>Code</th>
				<th>Issued At</th>
				<th>Category</th>
				<th>Particular</th>
				<th class="text-end">Amount</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>20250225-001</td>
				<td>2025-02-25 10:00</td>
				<td>Service Charges</td>
				<td>Maintenance Fees for POS</td>
				<td>100,000</td>
				<td class="text-center"><a
					href="${root }/member/balance/20250225-001"><i
						class="bi bi-arrow-right"></i></a></td>
			</tr>
		</tbody>
	</table>

	<!-- Pagination -->
	<app:pagination />
</app:layout-member>