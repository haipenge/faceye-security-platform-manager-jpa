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
		<form action="<c:url value="/platform/security/user/authRoles"/>" method="post" role="form" class="form-horizontal">
			<div classs="table-responsive">
				<input type="hidden" name="userId" value="${user.id}">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th></th>
							<th><fmt:message key='platform.security.role.name'></fmt:message></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${roles}" var="role">
							<c:set var="isChecked" value="false"></c:set>
							<c:forEach items="${existRoles}" var="exist">
								<c:if test="${role.id == exist.id}">
									<c:set var="isChecked" value="true"></c:set>
								</c:if>
							</c:forEach>
							<tr>
								<td><input type="checkbox" name="roleIds" value="${role.id}"
									<c:if test="${isChecked=='true'}">checked="true"</c:if></td>
								<td>${role.name}</td>
							<tr>
						</c:forEach>
					</tbody>
				</table>

			</div>

			<div class="content">
				<button type="submit" class="btn btn-primary">
					<fmt:message key="global.submit.save"></fmt:message>
				</button>
			</div>
		</form>
	</div>
</div>
