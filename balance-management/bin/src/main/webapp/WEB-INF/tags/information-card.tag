<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ attribute name="bgColor" required="true"%>
<%@ attribute name="icon" required="true"%>
<%@ attribute name="label" required="true"%>
<%@ attribute name="value" required="true"%>

<div class="col">
	<div class="card ${bgColor }">
		<div class="card-body">
			<h5>
				<i class="${icon } me-1"></i>${label }
			</h5>
			<h3>${value }</h3>
		</div>
	</div>
</div>
