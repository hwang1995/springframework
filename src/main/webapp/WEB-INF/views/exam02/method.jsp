<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>
<c:set var="resources" value="${contextPath}/resources"></c:set>

<jsp:include page="/WEB-INF/views/common/header.jsp" />
method.jsp
<hr />

<div class="alert alert-primary">현재 요청 방식 : 
<span id="method">${method}</span>
</div>
<h3 >&lt; form &gt; 이용</h3>
<form method="get" action="method3" class="d-inline-block">
	<input type="submit" class="btn btn-success btn-sm" value="GET 전송" />
</form>
<form method="post" action="method3" class="d-inline-block">
	<input type="submit" class="btn btn-success btn-sm" value="POST 전송" />
</form>
<!-- <form method="PUT" action="method3">
	<input type="submit" class="btn btn-success btn-sm" value="PUT 전송" />
</form>
<form method="delete" action="method3">
	<input type="submit" class="btn btn-success btn-sm" value="DELETE 전송" />
</form> -->
<hr />
<h3>AJAX 이용</h3>
<button class="btn btn-info" onclick="sendGet()">AJAX - GET</button>
<script>
	const sendGet = () => {
		$.ajax({
			url : "ajaxMethod3",
			method : 'GET'
		})
		.then(data => {
			$("#method").html(data.method);
			 //console.log(response.method);
		})
		;
	}
</script>
<button class="btn btn-info" onclick="sendPost()">AJAX - POST</button>
<script>
	const sendPost = () => {
		$.ajax({
			url : "ajaxMethod3",
			method : "POST"
		})
		.then(data => {
			$("#method").html(data.method);
		});
	}
</script>
<button class="btn btn-info" onclick="sendPut()">AJAX - PUT</button>
<script>
	const sendPut = () => {
		$.ajax({
			url : "ajaxMethod3",
			method : "PUT"
		})
		.then(data => {
			$("#method").html(data.method);
		});
	}
</script>
<button class="btn btn-info" onclick="sendDelete()">AJAX -
	DELETE</button>
<script>
	const sendDelete = () => {
		$.ajax({
			url : "ajaxMethod3",
			method : "DELETE"
		})
		.then(data=> {
			$("#method").html(data.method);
		})
	}
</script>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />