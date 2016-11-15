<%@ include file="/component/core/taglib/taglib.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/component/platform/security/user/user.css"/>" />
<script type="text/javascript" src="<c:url value="/js/component/platform/security/user/user.js"/>"></script>
<div class="page-head">
	<h2>
		<fmt:message key="platform.security.user.manager"></fmt:message>
		<a class="btn btn-primary" href="<c:url value="/security/user/input"/>"> <fmt:message
				key="platform.security.user.add"></fmt:message>
		</a>
	</h2>
</div>
<div class="cl-mcont">
	<div class="block-flat">
		<div class="content">
			<div classs="table-responsive">
				<table class="table table-bordered table-hover">
				  <thead>
					<tr>
						<th><fmt:message key='platform.security.user.id'></fmt:message></th>
						<td><fmt:message key='platform.security.user.name'></fmt:message></th>
						<th><fmt:message key='platform.security.user.email'></fmt:message></th>
						<th><fmt:message key='platform.security.user.enabled'></fmt:message></th>
						<th><fmt:message key='platform.security.user.accountExpired'></fmt:message></th>
						<th><fmt:message key='platform.security.user.accountLocked'></fmt:message></th>
						<th><fmt:message key='platform.security.user.credentialsExpired'></fmt:message></th>
						<th><fmt:message key='platform.security.user.roles'></fmt:message></th>
						<!--@generate-entity-jsp-property-desc@-->
						<th><fmt:message key="platform.security.user.auth"></fmt:message></th>
						<th><fmt:message key="global.edit"></fmt:message></th>
						<th><fmt:message key="global.remove"></fmt:message></th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${page.content}" var="user">
						<tr>
							<td>${user.id}</td>
							<td>${user.username}</td>
							<td>${user.email}</td>
							<td>${user.enabled}</td>
							<td>${user.accountExpired}</td>
							<td>${user.accountLocked}</td>
							<td>${user.credentialsExpired}</td>
							<td><c:forEach items="${user.roles}" var="role" varStatus="status">${role.name}<c:if
										test="${not status.last}">,</c:if>
								</c:forEach></td>
							<!--@generate-entity-jsp-property-value@-->
							<td><a href="<c:url value="/platform/security/user/prepareAuthRoles/${user.id}"/>"> <fmt:message
										key="platform.security.user.auth"></fmt:message>
							</a></td>
							<td><a href="<c:url value="/platform/security/user/edit/${user.id}"/>"> <fmt:message key="global.edit"></fmt:message>
							</a></td>
							<td><a href="<c:url value="/platform/security/user/remove/${user.id}"/>"> <fmt:message key="global.remove"></fmt:message>
							</a></td>
						<tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<f:page page="${page}" url="/platform/security/user/home" params="<%=request.getParameterMap()%>" />
		</div>
	</div>
</div>
