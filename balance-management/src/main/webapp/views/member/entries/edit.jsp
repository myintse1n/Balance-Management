<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>

<app:layout-member title="${type}">
	<app:page-title title="Edit ${type }"></app:page-title>

	<form method="post" action="${root }/member/entry/save"  class="row">
		<!-- Summary -->
		<div class="col-3">
			<div class="card">
				<div class="card-header">
					<h5 class="card-title">
						<i class="bi bi-flag me-2"></i>Ledger Entry
					</h5>
				</div>
				<div class="card-body">
					<app:form-group cssClass="col-auto" label="Ledger">
						<select name="" id="" class="form-select">
							<option value="">Select Ledger</option>
						</select>
					</app:form-group>
					<app:form-group cssClass="col-auto my-3" label="Particular">
						<textarea rows="3" cols="40" class="form-control"
							placeholder="Please enter particular"></textarea>
					</app:form-group>
					<app:form-group label="Total Amount">
						<span class="form-control">100,000</span>
					</app:form-group>
				</div>
			</div>
		</div>

		<!-- Entry Items -->
		<div class="col">
			<div class="card">
				<div class="card-header">
					<h5 class="card-title">
						<i class="bi bi-list me-2"></i>Entry Items
					</h5>
				</div>
				<div class="card-body">
					<div class="row">
						<div class="col">Item Name</div>
						<div class="col-3">Unit Price</div>
						<div class="col-3">Quantity</div>
						<div class="col-2 text-end">Total</div>
					</div>
					<div class="row mt-2">
						<div class="col">
							<div class="input-group">
								<button type="button"
									class="input-group-text btn btn-outline-danger">
									<i class="bi bi-trash"></i>
								</button>
								<input type="text" placeholder="Enter item name"
									class="form-control" />
							</div>
						</div>
						<div class="col-3">
							<input type="number" class="form-control" />
						</div>
						<div class="col-3">
							<input type="number" class="form-control" />
						</div>
						<div class="col-2">
							<span class="form-control text-end">0</span>
						</div>
					</div>
					<div class="mt-3">
						<button type="button" class="btn btn-outline-primary">
							<i class="bi bi-plus me-1"></i>Add Item
						</button>
						<button type="submit" class="btn btn-outline-danger">
							<i class="bi bi-save me-1"></i>Save Item
						</button>
					</div>
				</div>
			</div>
		</div>
	</form>


</app:layout-member>