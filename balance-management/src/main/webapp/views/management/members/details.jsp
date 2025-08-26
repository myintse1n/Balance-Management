<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>

<app:layout-management title="Member Details">

	<!-- Profile image & information  -->
	<div class="d-flex justify-content-between align-items-center">
		<app:page-title title="Member Management"></app:page-title>
		<button id="statusChangeBtn" class="btn btn-danger">
			<i class="${result.status() eq 'Active' ? 'bi-x' : 'bi-check' } me-1"></i>
			${result.status() eq 'Active' ? 'Deactivate' : 'Activate' }
		</button>
	</div>
	<div class="row mt-3">
		<div class="col-3">
			<img class="img-fluid img-thumbnail profile-image"
				src="${root }/resources/images/profile-img.jpg" alt="Profile Image" />
		</div>
		<div class="col">
			<div class="row ">
				<app:information-card label="Registered At" icon="bi-person-add"
					value="${dtf.formatShort(result.registeredAt())}" bgColor="text-bg-info" />
				<app:information-card label="Last Access" icon="bi-calendar-check"
					value="${dtf.formatShort(result.lastAccessAt()) }" bgColor="text-bg-secondary" />
				<app:information-card label="Status" icon="bi-shield" value="${result.status() }"
					bgColor="text-bg-primary" />
			</div>
			<div class="row mt-4 d-flex align-items-stretch ">
				<app:person-info name="${result.name() }"
					dateOfBirth="${result.dateOfBirth() }"
					gender="${result.gender()}" />
				<app:contact-info
					address="${result.displayAddress}"
					phone="${result.phone() }"
					email="${result.email()}" />
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade"  tabindex="-1" role="dialog" aria-hidden="true"
		id="statusChangeDialog">
		<div class="modal-dialog"  role="document">
			<form action="${root }/admin/member/${result.id()}/update" method="post" class="modal-content">
				<sec:csrfInput/>
				<input type="hidden" name="status" value="${result.status() ne 'Active' }"  />
				<div class="modal-header">
					<h5 class="modal-title">${result.status() eq 'Active' ? 'Activate' : 'Denied' } Status</h5>
				</div>
				<div class="modal-body">
					<app:form-group cssClass="" label="Reason">
						<textarea name="reason" class="form-control" required="required"></textarea>
					</app:form-group>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary"><i class="bi bi-save me-1"></i>Save changes</button>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript" src="${root }/resources/js/member-details.js" >

</script>
</app:layout-management>