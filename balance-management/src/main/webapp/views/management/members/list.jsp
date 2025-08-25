<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<app:layout-management title="MEMBERS">
	<app:page-title title="Member Management"></app:page-title>

	<!-- Search form -->
	<form class="row" id="pageSearchForm">
	
		<input type="hidden" name="page" id="pageInput" />
		<input type="hidden" name="size" id="sizeInput"/>
		
		<app:form-group label="status" cssClass="col-auto">
			<select name="status" class="form-select">
				<option value="">search all</option>
				<option value="Active" ${param.status eq 'Active' ? 'selected' : '' }>Active</option>
    			<option value="Denined" ${param.status eq 'Denined' ? 'selected' : '' }>Denied</option>
			</select>
		</app:form-group>
		<app:form-group label="Registered From" cssClass="col-auto">
			<input name="dateFrom" type="date" class="form-control" value="${param.dateFrom }" />
		</app:form-group>
		<app:form-group label="Registered To" cssClass="col-auto">
			<input name="dateTo" type="date" class="form-control" value="${param.dateTo }"/>
		</app:form-group>
		<app:form-group label="Keyword" cssClass="col-auto">
			<input type="text" name="keyword" placeholder="Enter keyword"
				class="form-control" value="${param.keyword }"/>
		</app:form-group>
		<div class="col col-wrapper">
			<button class="btn btn-primary">
				<i class="bi-search me-1"></i>Search
			</button>
		</div>
	</form>

	<!-- Result Table -->
	<table class="table table-bordered table-striped table-hover my-3">
		<thead>
			<tr>
				<th>Name</th>
				<th>Registered At</th>
				<th>Last Login</th>
				<th>Status</th>
				<th>Change at</th>
				<th>Remark</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
		
			<c:forEach items="${result.contents() }" var="item">
				<tr>
					<td>${item.name() }</td>
					<td>${dtf.format(item.registeredAt())}</td>
					<td>${dtf.format(item.lastLoginAt())}</td>
					<td>${item.status() }</td>
					<td>${item.changedAt() }</td>
					<td>${item.remark() }</td>
					<td class="text-center">
						<a href="${root }/admin/member/${item.id() }"><i class="bi-arrow-right"></i></a>
					</td>
				</tr>
			</c:forEach>			
		</tbody>
	</table>


	<!-- Pagination -->
	<app:pagination pageResult="${result }"/>
</app:layout-management>