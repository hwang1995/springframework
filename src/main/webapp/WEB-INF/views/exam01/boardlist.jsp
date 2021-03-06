<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>
<c:set var="resources" value="${contextPath}/resources"></c:set>

<jsp:include page="/WEB-INF/views/common/header.jsp" />



<table class="table">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>내용</th>
		<th>글쓴이</th>
	</tr>
	<c:forEach var="board" items="${list}">
		<tr>
			<td>${board.getBno()}</td>
			<td>${board.getBtitle()}</td>
			<td>${board.getBcontent()}</td>
			<td>${board.getBwriter()}</td>
		</tr>
	</c:forEach>

</table>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
