<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>
<c:set var="resources" value="${contextPath}/resources"></c:set>

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<div class="content">
Email : ${uemail} <br />
Password : ${upassword} <br />
Public : ${upublic} <br />
</div>



<jsp:include page="/WEB-INF/views/common/footer.jsp" />