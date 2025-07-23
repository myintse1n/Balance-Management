<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ attribute name="name" required="true"%>
<%@ attribute name="dateOfBirth" required="true"%>
<%@ attribute name="gender" required="true"%>

<div class="col">
	<div class="card text-bg-light">
		<div class="card-body">
			<h5>
				<i class="bi-person me-1"></i>Person Info
			</h5>

			<div class="mb-3">
				<span class="text-secondary">Name</span>
				<div>${name }</div>
			</div>
			
			<div class="mb-3">
				<span class="text-secondary">Date of Birth</span>
				<div>${dateOfBirth }</div>
			</div>
			
			<div class="mb-3">
				<span class="text-secondary">Gender</span>
				<div>${gender }</div>
				<div><br></div>
			</div>
		</div>
	</div>
</div>