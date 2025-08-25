<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>

<app:layout-management title="Member Details">

	<!-- Profile image & information  -->
	<div class="d-flex justify-content-between align-items-center">
		<app:page-title title="Member Management"></app:page-title>
		<button id="statusChangeBtn" class="btn btn-danger">
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
					value="${dtf.formatShort(result.registeredAt())}" bgColor="text-bg-info" />
				<app:information-card label="Last Access" icon="bi-calendar-check"
					value="${dtf.formatShort(result.lastAccessAt()) }" bgColor="text-bg-secondary" />
				<app:information-card label="Status" icon="bi-shield" value="${result.status() }"
					bgColor="text-bg-primary" />
			</div>
			<div class="row mt-4">
				<app:person-info name="${result.name() }" dateOfBirth="${result.dateOfBirth() }"
					gender="${result.gender() }" />
				<app:contact-info  address="${result.displayAddress }" 
				    phone="${result.phone() }" email="${result.email()}"/>
			</div>
		</div>
	</div>
	<div class="modal fade" tabindex="-1" role="dialog" id="statusChangeDialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Update Member Status</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<app:form-group cssClass="" label="Reason">
						<textarea name="reason" class="form-control" required="required" ></textarea>
					</app:form-group>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${root }/resources/js/member-details.js" >

</script>
</app:layout-management>