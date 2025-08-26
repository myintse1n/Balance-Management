<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ attribute name="phone" required="true"%>
<%@ attribute name="email" required="true"%>
<%@ attribute name="address" required="true"%>

<div class="col">
	<div class="card  h-100">
		<div class="card-body">
			<h5>
				<i class="bi bi-telephone me-1"></i>Contact Info
			</h5>

			<div class="mb-3">
				<span class="text-secondary">Phone</span>
				<div>${phone ne null and phone ne '' ? phone : 'Un Defined' }</div>
			</div>
			
			<div class="mb-3">
				<span class="text-secondary">Email</span>
				<div>${email}</div>
			</div>
			
			<div class="mb-3">
				<span class="text-secondary">Address</span>
				<div>${address ne null and address ne '' ? address : 'Un Defined'}</div>
			</div>
		</div>
	</div>
</div>