<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>

<app:layout-member title="details">
	<div class="d-flex justify-content-between">
		<app:page-title title="Income Details" />
		<div>
			<a href="${root }/member/entry/edit/20250225-001"
				class="btn btn-danger"><i class="bi bi-pencil me-1"></i>Edit
				Entry</a>
		</div>
	</div>
	<div class="row">
		<div class="col">
			<div class="card">
				<div class="card-header">
					<h5 class="card-title">
						<i class="bi bi-list me-1"></i>Summary
					</h5>
				</div>
				<div class="card-body">
					<table class="table table-striped  table-hover">
						<thead>
							<tr>
								<th>No.</th>
								<th>Item Name</th>
								<th  class="text-end">Price</th>
								<th  class="text-end">Quantity</th>
								<th  class="text-end">Total</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Print Paper</td>
								<td  class="text-end">35,000</td>
								<td  class="text-end">2</td>
								<td  class="text-end">70,000</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Maintenance Fees</td>
								<td class="text-end">30,000</td>
								<td class="text-end">1</td>
								<td class="text-end">30,000</td>
							</tr>
							<tr>
								<td colspan="4">All Total</td>
								<td class="text-end">100,000</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="col-3">
			<div class="card">
				<div class="card-header">
					<h5 class="card-title">
						<i class="bi bi-flag me-1"></i>Summary
					</h5>
				</div>
				<div class="card-body">
					<div class="list-group list-group-flush">
						<div class="list-group-item">
							<div>Code</div>
							<div>20250225-001</div>
						</div>
						<div class="list-group-item">
							<div>Ledger</div>
							<div>Service Charges</div>
						</div>
						<div class="list-group-item">
							<div>Amount</div>
							<div>100,000</div>
						</div>
						<div class="list-group-item">
							<div>Issued At</div>
							<div>2025-02-25</div>
						</div>
						<div class="list-group-item">
							<div>Particular</div>
							<div>Maintenance Fees for POS</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</app:layout-member>
