<%@ include file="/component/core/taglib/taglib.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/component/platform/security/resource/resource.css"/>" />
<script type="text/javascript" src="<c:url value="/js/component/platform/security/resource/resource.js"/>"></script>

<div class="block-flat">
	<div class="header">
		<h3>
			<c:choose>
				<c:when test="${empty resource.id}">
					<fmt:message key="platform.security.resource.add"></fmt:message>
				</c:when>
				<c:otherwise>
					<fmt:message key="platform.security.resource.edit"></fmt:message>
				</c:otherwise>
			</c:choose>
		</h3>
	</div>
	<div class="content">
		<form action="<c:url value="/platform/security/resource/save"/>" method="post" role="form" class="form-horizontal">
			<input type="hidden" name="id" value="${resource.id}" />
			<fieldset>
				<div class="form-group">
					<label class="col-md-2 control-label" for="name"> <fmt:message key="platform.security.resource.name"></fmt:message>
					</label>
					<div class="col-md-6">
						<input type="text" name="name" value="${resource.name}" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="url"> <fmt:message key="platform.security.resource.url"></fmt:message>
					</label>
					<div class="col-md-6">
						<input type="text" name="url" value="${resource.url}" class="form-control">
					</div>
				</div>
				<!-- 
				<div class="form-group">
					<label class="col-md-4 control-label" for="roles"> <fmt:message key="platform.security.resource.roles"></fmt:message>
					</label>
					<div class="col-md-4">
						<input type="text" name="roles" class="form-control">
					</div>
				</div>
				 -->
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
