<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>

<app:layout-member title="Member Home">

	<div class="d-flex justify-content-between align-items-start">
		<app:page-title title="Member Home"></app:page-title>
		<div class="btn-group" role="radio"
			aria-label="Basic radio toggle button group">
			<input type="radio" name="btnradio" id="monthly" class="btn-check"
				autocomplete="off" checked="checked" /> <label for="monthly"
				class="btn btn-outline-primary">Monthly</label> <input type="radio"
				class="btn-check" name="btnradio" autocomplete="off" id="yearly" />
			<label for="yearly" class="btn btn-outline-primary">Yearly</label>
		</div>
	</div>
	<div class="row mt-3">
		<!-- Profile Information -->
		<div class="col-3">
			<div class="card">
				<div
					class="card-header d-flex justify-content-between align-items-center">
					<h5 class="card-title">
						<i class="bi bi-person me-1"></i>Profile
					</h5>
					<a href="${root }/member/entry/incomes"><i class="bi bi-pencil"></i></a>
				</div>
				<div class="card-body p-0">
					<img src="${root }/resources/images/profile-img.jpg"
						alt="Profile Image" class="profile-image" />

					<ul class="list-group rounded-0">
						<li class="list-group-item"><i class="bi bi-person me-1"></i>Thidar
							Aung</li>
						<li class="list-group-item"><i class="bi bi-person me-1"></i>070-8950-4055</li>
						<li class="list-group-item"><i class="bi bi-envelope-at me-1"></i>thidar@gmail.com</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="col">
			<div class="row">
				<!-- Summary -->
				<div class="col">
					<app:summary-info color="bg-danger" icon="bi-cart" value="100,000"
						title="Expenses" />
				</div>
				<div class="col">
					<app:summary-info color="bg-warning" icon="bi-flag" value="500,000"
						title="Incomes" />
				</div>
				<div class="col">
					<app:summary-info color="bg-primary" icon="bi-bar-chart"
						value="400,000" title="Balances" />
				</div>
			</div>
			<!-- Balance Bar Charts -->
			<div class="card mt-4">
				
			</div>
			<div class="row">
				<!-- Expenses Pie Chart -->
				<div class="col"></div>
				<!-- Incomes Pie Chart -->
				<div class="col"></div>
			</div>
		</div>
	</div>
</app:layout-member>