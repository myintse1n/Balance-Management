<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@  attribute name="pageResult" type="com.jdc.online.balances.model.PageResult" %>

<c:set value="${pageContext.request.contextPath }" scope="request" var="root"></c:set>
<div class="d-flex justify-content-between">

	<div class="d-flex">
		<!-- Page Select -->
		<div class="input-group me-2">
			<span  class="input-group-text">Size</span> 
			
			<select id="sizeSelect"
				class="form-select">
				<option value="5"  ${pageResult.size() eq '5' ? 'selected' : '' }>5</option>
				<option value="10" ${pageResult.size() eq '10' ? 'selected' : '' }>10</option>
				<option value="25" ${pageResult.size() eq '25' ? 'selected' : '' }>25</option>
			</select>
		</div>

		<!-- Page Link -->
		<div class="d-flex page-links">
			<a href="#" data-page-number="0" class="btn btn-outline-primary me-1 pageLink">
				<i class="bi-arrow-left"></i></a>
			<c:forEach items="${pageResult.pageLinks }" var="item">
				<a href="#" data-page-number="${item }" class="btn btn-outline-primary  ${pageResult.page() eq item ? 'btn-primary text-white' : 'btn-outline-primary'} me-1 pageLink">
					${item + 1 }</a>
			</c:forEach>
			 <a href="#" data-page-number="${pageResult.totalPages -1 }" class="btn btn-outline-primary pageLink">
			 	<i class="bi-arrow-right"></i></a>
		</div>

	</div>
	<div class="d-flex">
		<!-- Page Result Info -->
		<div class="input-group me-2">
			<span class="input-group-text">Total Pages</span><span
				class="form-control">${pageResult.totalPages}</span>
		</div>
		<div class="input-group me-2">
			<span class="input-group-text">Total Results</span><span
				class="form-control">${pageResult.count() }</span>
		</div>
	</div>
</div>

<script type="text/javascript" src="${root }/resources/js/pagination.js"></script>

