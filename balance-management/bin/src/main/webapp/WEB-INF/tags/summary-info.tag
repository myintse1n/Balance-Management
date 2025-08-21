<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ attribute name="color" required="true" %>
<%@ attribute name="title" required="true" %>
<%@ attribute name="icon" required="true" %>
<%@ attribute name="value" required="true" %>


<div class="card">
	<div class="card-body ${color }">
		<div class="text-end">
			<span>${title}</span>
		</div>
		<h4 class="d-flex justify-content-between">
			<i class="bi ${icon }"></i> <span>${value }</span>
		</h4>
	</div>
</div>
