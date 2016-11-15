<%@ include file="/component/core/taglib/taglib.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/component/platform/security/user/user.css"/>" />
<script type="text/javascript" src="<c:url value="/js/component/platform/security/user/user.js"/>"></script>
<div class="block-flat">
	<div class="header">
		<h3>
			<fmt:message key="platform.security.user.auth.roles"></fmt:message>
		</h3>
	</div>
	<div class="content">
		<form action="<c:url value="/security/role/authResources"/>" method="post" role="form" class="form-horizontal">
			<div classs="table-responsive">
				<input type="hidden" name="roleId" value="${role.id}">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th></th>
							<th><fmt:message key='platform.security.resource.name'></fmt:message></th>
							<th><fmt:message key="platform.security.resource.url"></fmt:message></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${resources}" var="resource">
							<c:set var="isChecked" value="false"></c:set>
							<c:forEach items="${role.resources}" var="exist">
								<c:if test="${resource.id == exist.id}">
									<c:set var="isChecked" value="true"></c:set>
								</c:if>
							</c:forEach>
							<tr>
								<td><input type="checkbox" name="resourceIds" value="${resource.id}"
									<c:if test="${isChecked=='true'}">checked="true"</c:if></td>
								<td>${resource.name}</td>
								<td>${resource.url}</td>
							<tr>
						</c:forEach>
					</tbody>
				</table>
				<button type="submit" class="btn btn-primary">
					<fmt:message key="global.submit.save"></fmt:message>
				</button>
			</div>
		</form>
	</div>
</div>
