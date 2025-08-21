<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ attribute name="icon" required="true"%>
<%@ attribute name="title" required="true"%>
<%@ attribute name="cssId" required="true"%>

<div class="card">
	<div class="card-body">
		<h5 class="card-title mb-3">
			<i class="bi ${icon } me-1"></i>${title }
		</h5>
		<div id="${cssId }"></div>
	</div>
</div>

