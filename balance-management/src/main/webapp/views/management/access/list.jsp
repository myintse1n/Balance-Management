<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>

<app:layout-management title="ACCESS">
	<app:page-title title="Access History" />

	<!-- Form Search -->

	<form class="row" id="pageSearchForm">
		
		<input type="hidden" name="page" id="pageInput" />
		<input type="hidden" name="size" id="sizeInput"/>
	
		<app:form-group cssClass="col-auto" label="Status">
			<select name="status" class="form-select">
				<option value="">Search All</option>
				<option value="Success" ${param.status eq 'Success' ? 'selected' : '' }>Success</option>
				<option value="Fails" ${param.status eq 'Fails' ? 'selected' : '' }>Fails</option>
			</select>
		</app:form-group>

		<app:form-group cssClass="col-auto" label="Date From">
			<input name="dateFrom" type="date" class="form-control"  value = "${param.dateFrom }"/>
		</app:form-group>
		<app:form-group cssClass="col-auto" label="Date To">
			<input name="dateTo" type="date" class="form-control" value= "${param.dateTo }" />
		</app:form-group>
		<app:form-group cssClass="col-auto" label="Keyword">
			<input name="keyword" type="text" class="form-control"
				placeholder="Enter keyword"  value="${param.keyword }"/>
		</app:form-group>
		<div class="col col-wrapper">
			<button class="btn btn-primary">
				<i class="bi bi-search me-1"></i>Search
			</button>
		</div>
	</form>

	<!-- Access Information Result Table  -->
	<table class="table table-striped table-bordered table-hover mt-3">
		<thead>
			<tr>
				<th>Member</th>
				<th>Access At</th>
				<th>Access Type</th>
				<th>Status</th>
				<th>Remark</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${result.contents()}" var="item">
				<tr>
					<td>${item.member() }</td>
					<td>${dtf.format(item.accessedAt()) }</td>
					<td>${item.accessType() }</td>
					<td>${item.status() }</td>
					<td>${item.remark() }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<!-- Pagination -->
	<app:pagination pageResult="${result }"/>

</app:layout-management>