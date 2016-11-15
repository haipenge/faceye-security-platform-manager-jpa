<%@ include file="/component/core/taglib/taglib.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/component/platform/security/user/user.css"/>" />
<script type="text/javascript" src="<c:url value="/js/component/platform/security/user/user.js"/>"></script>
<div class="block-flat">
	<div class="header">
		<h3>
			<c:choose>
				<c:when test="${empty user.id}">
					<fmt:message key="platform.security.user.add"></fmt:message>
				</c:when>
				<c:otherwise>
					<fmt:message key="platform.security.user.edit"></fmt:message>
				</c:otherwise>
			</c:choose>
		</h3>
	</div>
	<div class="content">
		<form action="<c:url value="/platform/security/user/save"/>" method="post" role="form" class="form-horizontal">
			<input type="hidden" name="id" value="${user.id}" />
			<fieldset>
				<div class="form-group">
					<label class="col-md-2 control-label" for="name"> <fmt:message key="platform.security.user.name"></fmt:message>
					</label>
					<div class="col-md-6">
						<input type="text" name="username" value="${user.username}" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="password"> <fmt:message key="platform.security.user.password"></fmt:message>
					</label>
					<div class="col-md-6">
						<input type="password" name="password" value="${user.password}" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="email"> <fmt:message key="platform.security.user.email"></fmt:message>
					</label>
					<div class="col-md-6">
						<input type="text" name="email" value="${user.email}" class="form-control">
					</div>
				</div>

				<!--@generate-entity-jsp-property-update@-->

				<div class="form-group">
					<div class="col-md-offset-2 col-md-10">
						<button type="submit" class="btn btn-primary">
							<fmt:message key="global.submit.save"></fmt:message>
						</button>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</div>