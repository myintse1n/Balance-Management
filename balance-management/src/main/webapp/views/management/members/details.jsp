<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>

<app:layout-management title="Member Details">

	<!-- Profile image & information  -->
	<div class="d-flex justify-content-between align-items-center">
		<app:page-title title="Member Management"></app:page-title>
		<button class="btn btn-danger">
			<i class="bi-x me-1"></i>Deactivate
		</button>
	</div>
	<div class="row mt-3">
		<div class="col-3">
			<img class="img-fluid img-thumbnail profile-image"
				src="${root }/resources/images/profile-img.jpg" alt="Profile Image" />
		</div>
		<div class="col">
			<div class="row">
				<app:information-card label="Registered At" icon="bi-person-add"
					value="2025-07-22 10:00" bgColor="text-bg-info" />
				<app:information-card label="Last Access" icon="bi-calendar-check"
					value="2025-07-22 10:00" bgColor="text-bg-secondary" />
				<app:information-card label="Status" icon="bi-shield" value="active"
					bgColor="text-bg-primary" />
			</div>
			<div class="row mt-4">
				<app:person-info name="Thidar Aung" dateOfBirth="1999-04-01"
					gender="Female" />
				<app:contact-info
					address="N0 20/1F,Yadanar Myaing Street, Kamayut 1 Quarter, Kamayut, Yangon"
					phone="070-8950-4055" email="thidar@gmail.com" />
			</div>
		</div>
	</div>
</app:layout-management>