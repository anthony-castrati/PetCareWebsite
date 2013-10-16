<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="messaging">
	<c:if test = "${!empty success}">
		<div class="alert alert-dismissable alert-success">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			${success}
		</div>
	</c:if>
	<c:if test = "${!empty info}">
		<div class="alert alert-dismissable alert-info">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			${info}
		</div>
	</c:if>
	<c:if test = "${!empty warning}">
		<div class="alert alert-warning">${warning}</div>
	</c:if>
	<c:if test = "${!empty error}">
		<div class="alert alert-danger">${error}</div>
	</c:if>
</div>