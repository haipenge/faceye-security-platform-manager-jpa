<%@ include file="/component/core/taglib/taglib.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/component/platform/security/resource/resource.css"/>" />
<script type="text/javascript" src="<c:url value="/js/component/platform/security/resource/resource.js"/>"></script>

<div class="page-head">
	<h2>
		<fmt:message key="platform.security.resource.manager"></fmt:message>
		<a class="btn btn-primary" href="<c:url value="/platform/security/resource/input"/>"> <fmt:message
				key="platform.security.resource.add"></fmt:message>
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
							<th><fmt:message key='platform.security.resource.name'></fmt:message></th>
							<th><fmt:message key='platform.security.resource.url'></fmt:message></th>
							<th><fmt:message key='platform.security.resource.roles'></fmt:message></th>
							<!--@generate-entity-jsp-property-desc@-->
							<th><fmt:message key="global.edit"></fmt:message></th>
							<th><fmt:message key="global.remove"></fmt:message></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${page.content}" var="resource">
							<tr>
								<td>${resource.name}</td>
								<td>${resource.url}</td>
								<td>--</td>
								<!--@generate-entity-jsp-property-value@-->
								<td><a href="<c:url value="/platform/security/resource/edit/${resource.id}"/>"> <fmt:message key="global.edit"></fmt:message>
								</a></td>
								<td><a href="<c:url value="/platform/security/resource/remove/${resource.id}"/>"> <fmt:message
											key="global.remove"></fmt:message>
								</a></td>
							<tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<f:page page="${page}" url="/platform/security/resource/home" params="<%=request.getParameterMap()%>" />
		</div>
	</div>
</div>