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
					<a href="${root }/member/profile"><i class="bi bi-pencil"></i></a>
				</div>
				<div class="card-body p-0">
					<img src="${root }/resources/images/${profile.profileImage()}"
						alt="Profile Image" class="profile-image" />

					<ul class="list-group rounded-0">
						<li class="list-group-item"><i class="bi bi-person me-1"></i>
							${profile.name() }</li>
						<li class="list-group-item"><i class="bi bi-phone me-1"></i>
							${profile.phone() ne null and profile.phone() ne '' ? profile.phone() : 'Un Defined' }</li>
						<li class="list-group-item"><i class="bi bi-envelope-at me-1"></i>${profile.mail() }</li>
						<li class="list-group-item"><i class="bi bi-map me-1"></i>
							${profile.address() ne null and profile.address() ne '' ? profile.address() : 'Un Defined' }
						</li>
					</ul>
				</div>
			</div>
			<div class="card mt-3">
				<div
					class="card-header d-flex justify-content-between align-items-start">
					<h5 class="card-title">
						<i class="bi bi-shield me-1"></i>Access
					</h5>
					<a href="${root }/member/access" class="btn-link"><i
						class="bi bi-send me-1"></i></a>
				</div>
				<div class="card-body">
					<ul class="list-group list-group-flush">
						<li class="list-group-item">
							<div class="fw-bold">Registered At</div> <span>2025-01-01 10:00</span>
						</li>
						<li class="list-group-item"><div class="fw-bold">Last
								Access</div> <span>2025-07-28 12:00</span></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="col">
			<div class="row mb-3">
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
			<app:chart-card icon="bi-bar-chart" title="Balances"
				cssId="balanceChart" />

			<div class="row mt-4">
				<!-- Expenses Pie Chart -->
				<div class="col">
					<app:chart-card icon="bi-cart" title="Expenses"
						cssId="expensePieChart" />
				</div>
				<!-- Incomes Pie Chart -->
				<div class="col">
					<app:chart-card icon="bi-flag" title="Incomes"
						cssId="incomePieChart" />
				</div>
			</div>
		</div>
	</div>

	<script src="https://cdn.amcharts.com/lib/5/index.js"></script>
	<script src="https://cdn.amcharts.com/lib/5/percent.js"></script>
	<script src="https://cdn.amcharts.com/lib/5/xy.js"></script>
	<script src="https://cdn.amcharts.com/lib/5/themes/Animated.js"></script>
	<script src="${root }/resources/js/member-home.js"></script>
</app:layout-member>