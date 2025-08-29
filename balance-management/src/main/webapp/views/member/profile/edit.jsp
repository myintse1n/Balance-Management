<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<app:layout-member title="PROFILE">

	<app:page-title title="Edit Profile" />

	<div class="row mt-3">

		<div class="col-3">
			<!-- Profile Photo -->
			<img src="${root }/resources/images/${form.profileImage}"
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
			<sf:form action="${root }/member/profile" modelAttribute="form"  method="post">
				<!-- Personal Info -->
				<!-- Name -->
				<app:form-group cssClass="col-6" label="Name">
					<sf:input type="text" path="name" placeholder="Enter name" class="form-control" />
					<sf:errors path="name" cssClass="text-danger"></sf:errors>
				</app:form-group>

				<div class="row">
					<!-- Gender -->
					<app:form-group cssClass="col-4" label="Gender">
						<sf:select path="gender" class="form-select">
							<option value="">Select Gender</option>
							<option value="Male" ${form.gender  eq 'Male' ? 'selected' : ''}>Male</option>
							<option value="Female" ${form.gender  eq 'Female' ? 'selected' : ''}>Female</option>
						</sf:select>
						<sf:errors path="gender" cssClass="text-danger"></sf:errors>
					</app:form-group>
					<!-- Date of Birth  -->
					<app:form-group cssClass="col-4" label="Date of Birth">
						<sf:input path="dob"  type="date" class="form-control" />
						<sf:errors path="dob" cssClass="text-danger"></sf:errors>
					</app:form-group>
				</div>
				<!-- Contact Info -->
				<div class="row">
					<!-- Phone -->
					<app:form-group cssClass="col-4" label="Phone">
						<sf:input path="phone" type="text" class="form-control"
							placeholder="Enter phone number" />
						<sf:errors path="phone" cssClass="text-danger"></sf:errors>
					</app:form-group>
					<!-- Mail -->
					<app:form-group cssClass="col-8" label="Mail">
						<sf:input path="mail" type="email" class="form-control"
							placeholder="Enter mail address" />
						<sf:errors path="mail" cssClass="text-danger"></sf:errors>
					</app:form-group>
				</div>
				<div class="row">
					<!-- Regions -->
					<app:form-group cssClass="col" label="Region">
						<sf:select path="region" id="region" data-fetch-api="${root }/member/location/api/district" class="form-select">
							<option value="">Select One</option>
							<c:forEach items="${regions }" var="item">
								<option value="${item.id }" ${item.id eq form.region ? 'selected' : ''}>${item.name}</option>
							</c:forEach>
						</sf:select>
						<sf:errors path="region" cssClass="text-danger"></sf:errors>
					</app:form-group>
					<!-- Districts -->
					<app:form-group cssClass="col" label="District">
						<sf:select path="district" id="district" data-fetch-api="${root }/member/location/api/township" class="form-select">
							<option value="">Select One</option>
							<c:forEach items="${districts }" var="item">
								<option value="${item.id }" ${item.id eq form.district ? 'selected' : ''}>${item.name}</option>
							</c:forEach>
						</sf:select>
						<sf:errors path="district" cssClass="text-danger"></sf:errors>
					</app:form-group>
					<!-- Townships -->
					<app:form-group cssClass="col" label="Township">
						<sf:select path="township" id="township" class="form-select">
							<option value="">Select One</option>
							<c:forEach items="${townships }" var="item">
								<option value="${item.id }" ${item.id eq form.township ? 'selected' : ''}>${item.name}</option>
							</c:forEach>
						</sf:select>
						<sf:errors path="township" cssClass="text-danger"></sf:errors>
					</app:form-group>
				</div>
				<!-- Address -->
				<app:form-group cssClass="col" label="Address">
					<sf:textarea path="address" rows="3" cols="60" class="form-control"></sf:textarea>
					<sf:errors path="address" cssClass="text-danger"></sf:errors>
				</app:form-group>
				<button type="submit" class="btn btn-danger">
					<i class="bi bi-save"></i>Save Profile
				</button>
			</sf:form>
		</div>
	</div>

	<script src="${root }/resources/js/profile-edit.js"></script>
	<script src="${root }/resources/js/member-location.js"></script>
</app:layout-member>