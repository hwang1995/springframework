<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>  
<c:set var="resources" value="${contextPath}/resources"></c:set>
<!DOCTYPE html>
<html>
<head>
	<title>Spring</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	
</head>
<body>
    <div class="d-flex flex-column vh-100">
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
      <div class="flex-grow-1 container-fluid">
        <div class="row h-100">
          <div class="col-md-3 p-3 bg-dark">
            <div class="h-100 d-flex flex-column">
              <div class="flex-grow-1" style="height:0px; overflow-y: auto; overflow-x: hidden;">
                <%@ include file="/WEB-INF/views/common/menu.jsp" %>
              </div>
            </div>
          </div>

          <div class="col-md-9 p-3">
            <div class=" h-100 d-flex flex-column">
              <div class="flex-grow-1 overflow-auto pr-3" style="height:0px">