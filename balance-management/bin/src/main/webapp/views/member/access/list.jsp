<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>

<app:layout-member title="ACCESS">

	<app:page-title title="Access History"></app:page-title>

	<!-- Search Form -->
	<form class="row" id="pageSearchForm">
	
		<input type="hidden" name="page" id="pageInput"/>
		<input type="hidden" name="size" id="sizeInput" />
	
		<app:form-group label="Status" cssClass="col-auto">
			<select name="status" id="" class="form-select">
				<option value="">Search All</option>
				<option value="Success" ${param.status eq 'Success' ? 'selected' : '' }>Success</option>
				<option value="Fails" ${param.status eq 'Fails' ? 'selected' : '' }>Fails</option>
			</select>
		</app:form-group>
		<app:form-group label="Date From" cssClass="col-auto">
			<input name="dateFrom" type="date" class="form-control" value="${param.dateFrom }" />
		</app:form-group>
		<app:form-group cssClass="col-auto" label="Date To">
			<input name="dateTo" type="date" class="form-control" value="${param.dateTo }" />
		</app:form-group>
		<app:form-group cssClass="col-auto" label="Keyword">
			<input name="keyword" type="text"  class="form-control" value="${param.keyword }" placeholder="Enter keyword"/>
		</app:form-group>
		<div class="col-wrapper col-auto">
			<button class="btn btn-primary ">Search</button>
		</div>
	</form>
	
	<!-- Result Table -->
	<table class="table table-striped table-hover my-3">
		<thead>
			<tr>
				<th>Access At</th>
				<th>Access Type</th>
				<th>Status</th>
				<th>Remark</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${result.contents() }" var="item">
				<tr>
					<td>${dtf.format(item.accessedAt())}</td>
					<td>${item.accessType() }</td>
					<td>${item.status() }</td>
					<td>${item.remark() }</td>
				</tr>			
			</c:forEach>
		</tbody>
	</table>
	
	<!-- Pagination -->
	<app:pagination pageResult="${result }"/>

</app:layout-member>