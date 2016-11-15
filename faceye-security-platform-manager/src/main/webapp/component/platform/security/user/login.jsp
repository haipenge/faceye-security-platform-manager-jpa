<%@ include file="/component/core/taglib/taglib.jsp"%>
<script type="text/javascript">
	$(document).ready(function() {
		$('input[name="j_username"]').focus();
	});
</script>


<div class="col-sm-offset-3 col-sm-6 col-md-6">
	<div class="block-flat">
		<div class="header">
			<h3>
				<fmt:message key="platform.security.user.login"></fmt:message>
			</h3>
		</div>
		<div class="content">
			<form class="form-horizontal" action="<c:url value="/j_spring_security_check"/>" method="POST" role="form">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label"><fmt:message key="platform.security.user.name"></fmt:message></label>
					<div class="col-sm-10">
						<input type="text" name="j_username" class="form-control"
							value="<c:if test="${not empty param.loginFailure}"><c:out value="${SPRING_SECURITY_LAST_USERNAME}"/></c:if>"
							class="security" placeholder="<fmt:message key="platform.security.user.name"></fmt:message>" />
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label"><fmt:message key="platform.security.user.password"></fmt:message></label>
					<div class="col-sm-10">
						<input type="password" name="j_password" class="form-control"
							placeholder="<fmt:message  key="platform.security.user.password"></fmt:message>">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							<label> <input type="checkbox" class="icheck" name="remember-me" /> <fmt:message
									key="platform.security.user.remember.me"></fmt:message>
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-primary">
							<fmt:message key="platform.security.user.login"></fmt:message>
						</button>
						<!-- 
						<button type="submit" class="btn btn-primary">Registrer</button>
						<button class="btn btn-default">Cancel</button>
						-->
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</div>