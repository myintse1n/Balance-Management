<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ attribute name="name" required="true"%>
<%@ attribute name="dateOfBirth" required="true"%>
<%@ attribute name="gender" type="com.jdc.online.balances.model.entity.consts.Gender"%>

<div class="col">
	<div class="card text-bg-light h-100">
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
				<div>${dateOfBirth  ne null and dateOfBirth ne '' ? name : 'Un Defined' }</div>
			</div>
			
			<div class="mb-3">
				<span class="text-secondary">Gender</span>
				<div>${gender ne null and gender ne '' ? name : 'Un Defined'}</div>
				<div><br></div>
			</div>
		</div>
	</div>
</div>