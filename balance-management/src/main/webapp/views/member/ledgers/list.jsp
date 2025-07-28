<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<app:layout-member title="LEDGERS">
	<app:page-title title="Ledgers Management"></app:page-title>

	<!-- Search Form -->
	<form class="row">
		<app:form-group cssClass="col-auto" label="Type">
			<select name="type" id="" class="form-select">
				<option value="search all">Search All</option>
				<c:forEach var="type" items="${types }">
					<option value="${type }">${type }</option>
				</c:forEach>
			</select>
		</app:form-group>
		<app:form-group cssClass="col-auto" label="Search">
			<input name="keyword" type="text" class="form-control"
				placeholder="Serach keyword" />
		</app:form-group>
		<div class="col-auto col-wrapper">
			<button class="btn btn-primary me-1">
				<i class="bi bi-search me-1"></i>Search
			</button>
			<button id="addNewBtn" type="button" class="btn btn-danger">
				<i class="bi bi-plus me-1"></i>New Ledger
			</button>
		</div>
	</form>

	<!-- Result Table -->
	<table class="table table-striped table-bordered table-hove mb-3">
		<thead>
			<tr>
				<th>Id</th>
				<th>Type</th>
				<th>Name</th>
				<th>Status</th>
				<th>Created At</th>
				<th>Modified At</th>
				<th>Total</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>Incomes</td>
				<td>Service Charges</td>
				<td>Active</td>
				<td>2025-02-25 10:00</td>
				<td></td>
				<td>100,000</td>
			</tr>
		</tbody>
	</table>

	<!-- Pagination -->
	<app:pagination />

	<!-- New Ledger Modal -->
	<div id="editDialog" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">
						<i class="bi bi-pencil me-2"></i>Add New Ledger
					</h5>
				</div>
				<div class="modal-body">
					<app:form-group cssClass="col-auto mb-3" label="Type">
						<select name="type" id="" class="form-select">
							<c:forEach var="type" items="${types }">
								<option value="${type }">${type }</option>
							</c:forEach>
						</select>
					</app:form-group>
					<app:form-group cssClass="col-auto" label="Ledger Name">
						<input type="text" class="form-control"
							placeholder="Enter ledger name" />
					</app:form-group>
					<div class="form-check my-3">
						<input class="form-check-input" type="checkbox"> <label
							class="form-check-label"> Active </label>
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-primary">
						<i class="bi bi-save me-2"></i>Save Ledger
					</button>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="${root }/resources/js/ledger-management.js"></script>
</app:layout-member>