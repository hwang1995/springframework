<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>
<c:set var="resources" value="${contextPath}/resources"></c:set>

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<div class="content">
	<c:if test="${connStatus == '성공'}">
		<div class="alert alert-success">
		DB 연결 성공
		</div>
		
	</c:if>
	<c:if test="${connStatus == '실패'}">
		<div class="alert alert-danger">
		DB 연결 실패
		</div>
	</c:if>
	 <br />
1. <a href="boards">게시물 목록</a>
</div>



<jsp:include page="/WEB-INF/views/common/footer.jsp" />