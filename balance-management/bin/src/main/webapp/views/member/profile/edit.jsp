<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>

<app:layout-member title="PROFILE">

	<app:page-title title="Edit Profile" />

	<div class="row mt-3">

		<div class="col-3">
			<!-- Profile Photo -->
			<img src="${root }/resources/images/profile-img.jpg"
				alt="Profile Photo" class="img-fluid profile-image img-thumbnail" />

			<form id="profilePhotoForm" action="${root }/member/profile/photo"
				method="post" enctype="multipart/form-data">
				<input id="profilePhotoInput" type="file" class="d-none" />
				<button id="profilePhotoBtn" type="button"
					class="btn btn-primary w-100 mt-3">
					<i class="bi bi-camera me-1"></i>Change Profile Photo
				</button>
			</form>
		</div>

		<div class="col-9">
			<form action="${root }/member/profile" method="post">
				<!-- Personal Info -->
				<!-- Name -->
				<app:form-group cssClass="col-6" label="Name">
					<input type="text" placeholder="Enter name" class="form-control" />
				</app:form-group>

				<div class="row">
					<!-- Gender -->
					<app:form-group cssClass="col-4" label="Gender">
						<select name="" id="" class="form-select">
							<option value="Male">Male</option>
							<option value="Female">Female</option>
						</select>
					</app:form-group>
					<!-- Date of Birth  -->
					<app:form-group cssClass="col-4" label="Date of Birth">
						<input type="date" class="form-control" />
					</app:form-group>
				</div>
				<!-- Contact Info -->
				<div class="row">
					<!-- Phone -->
					<app:form-group cssClass="col-4" label="Phone">
						<input type="text" class="form-control"
							placeholder="Enter phone number" />
					</app:form-group>
					<!-- Mail -->
					<app:form-group cssClass="col-8" label="Mail">
						<input type="email" class="form-control"
							placeholder="Enter mail address" />
					</app:form-group>
				</div>
				<div class="row">
					<!-- Regions -->
					<app:form-group cssClass="col" label="Regions">
						<select name="" id="" class="form-select">
							<option value="">Select Regions</option>
						</select>
					</app:form-group>
					<!-- Districts -->
					<app:form-group cssClass="col" label="Districts">
						<select name="" id="" class="form-select">
							<option value="">Select Districts</option>
						</select>
					</app:form-group>
					<!-- Townships -->
					<app:form-group cssClass="col" label="Townships">
						<select name="" id="" class="form-select">
							<option value="">Select Townships</option>
						</select>
					</app:form-group>
				</div>
				<!-- Address -->
				<app:form-group cssClass="col" label="Address">
					<textarea rows="3" cols="60" class="form-control"></textarea>
				</app:form-group>
				<button class="btn btn-danger">
					<i class="bi bi-save"></i>Save Profile
				</button>
			</form>
		</div>
	</div>

	<script src="${root }/resources/js/profile-edit.js"></script>
</app:layout-member>