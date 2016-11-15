<%@ include file="/component/core/taglib/taglib.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/component/platform/security/menu/menu.css"/>" />
<script type="text/javascript" src="<c:url value="/js/component/security/platform/menu/menu.js"/>"></script>

<div class="page-head">
	<h2>
		<fmt:message key="platform.security.menu.manager"></fmt:message>
		<a class="btn btn-primary" href="<c:url value="/platform/security/menu/input"/>"> <fmt:message key="platform.security.menu.add"></fmt:message>
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
							<th><fmt:message key='platform.security.menu.name'></fmt:message></td>
							<th><fmt:message key='platform.security.menu.url'></fmt:message></th>
							<th><fmt:message key='platform.security.menu.type'></fmt:message></th>
							<!--@generate-entity-jsp-property-desc@-->
							<th><fmt:message key="global.edit"></fmt:message></th>
							<th><fmt:message key="global.remove"></fmt:message></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${page.content}" var="menu">
							<tr>
								<td>${menu.name}</td>
								<td>${menu.resource.url}</td>
								<td><c:if test="${menu.type eq '1'}">URL</c:if> <c:if test="${menu.type eq '2' }">Ajax</c:if></td>
								<!--@generate-entity-jsp-property-value@-->
								<td><a href="<c:url value="/platform/security/menu/edit/${menu.id}"/>"> <fmt:message key="global.edit"></fmt:message>
								</a></td>
								<td><a href="<c:url value="/platform/security/menu/remove/${menu.id}"/>"> <fmt:message key="global.remove"></fmt:message>
								</a></td>
							<tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<f:page page="${page}" url="/platform/security/menu/home" params="<%=request.getParameterMap()%>" />
		</div>

	</div>
</div>