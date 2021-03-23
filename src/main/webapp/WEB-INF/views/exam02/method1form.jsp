<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>
<c:set var="resources" value="${contextPath}/resources"></c:set>

<jsp:include page="/WEB-INF/views/common/header.jsp" />

method1form.jsp
<hr />
<form method="post" action="method1">
	<div class="form-group">
		<label for="name">이름</label> <input id="name" type="text" name="name"
			class="form-control" />

	</div>
	<input type="submit" value="전송" class="mt-2" />
</form>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />