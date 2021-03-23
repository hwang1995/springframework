<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.util.*"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>
<c:set var="resources" value="${contextPath}/resources"></c:set>


<jsp:include page="/WEB-INF/views/common/header.jsp" />

<div class="card">
	<div class="card-header">
		게시물 목록
	</div>
	<div class="card-body table-responsive">
	<table class="table ">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>내용</th>
		<th>글쓴이</th>
		<th>날짜</th>
		<th>조회수</th>
	</tr>
	<c:forEach var="board" items="${list}">
		<tr>
			<td>${board.bno}</td>
			<td>${board.btitle}</td>
			<td>${board.bcontent}</td>
			<td>${board.bwriter}</td>
			<td><fmt:formatDate value="${board.bdate}" pattern="yy-MM-dd"/></td>
			<td>${board.bhitcount}</td>
		</tr>
	</c:forEach>

</table>
	</div>
</div>



<jsp:include page="/WEB-INF/views/common/footer.jsp" />
