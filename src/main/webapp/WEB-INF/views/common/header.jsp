<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
<c:set var="resources" value="${contextPath}/resources"></c:set>

<nav
	class="navbar navbar-expand-sm bg-dark navbar-dark text-white font-weight-bold justify-content-between">
	<a class="navbar-brand" href="${contextPath }"> <img
		src="${resources}/image/spring-logo.png" width="30" height="30"
		class="d-inline-block align-top"> Spring
	</a>
	<div>
		<div>
			<a class="btn btn-success btn-sm" href="#">Login</a>
		</div>
	</div>
</nav>