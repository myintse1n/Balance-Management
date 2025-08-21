<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>

<app:layout-management title="Admine Home">

	<div class="d-flex justify-content-between align-items-start">
		<app:page-title title="Admin Home" />
		<div class="btn-group" role="radio"
			aria-label="Basic radio toggle button group">
			<input type="radio" name="btnradio" id="monthly" class="btn-check"
				autocomplete="off" checked="checked" /> <label for="monthly"
				class="btn btn-outline-secondary">Monthly</label> <input
				type="radio" class="btn-check" name="btnradio" autocomplete="off"
				id="yearly" /> <label for="yearly"
				class="btn btn-outline-secondary">Yearly</label>
		</div>
	</div>
	<div class="row mt-3">
		<div class="col-3">
			<div class="card mb-3">
				<div class="card-header">
					<h5 class="card-title">Last Month</h5>
				</div>
				<div class="card-body">
					<i class="bi bi-people me-2"></i>16
				</div>
			</div>
			<div class="card text-bg-secondary mb-3">
				<div class="card-header">
					<h5 class="card-title">Last Year</h5>
				</div>
				<div class="card-body">
					<i class="bi bi-people me-2"></i>182
				</div>
			</div>
			<div class="card mb-3 text-bg-dark">
				<div class="card-header">
					<h5 class="card-title">Total Member</h5>
				</div>
				<div class="card-body">
					<i class="bi bi-people me-2"></i>1600
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">
						<i class="bi bi-shield me-2"></i>Member Access
					</h5>
					<div id="chartdiv"></div>
				</div>
			</div>
		</div>
	</div>

	<script src="https://cdn.amcharts.com/lib/5/index.js"></script>
	<script src="https://cdn.amcharts.com/lib/5/xy.js"></script>
	<script src="https://cdn.amcharts.com/lib/5/themes/Animated.js"></script>
	<script src="${root }/resources/js/management-home.js"></script>
</app:layout-management>