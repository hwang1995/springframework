<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>
<c:set var="resources" value="${contextPath}/resources"></c:set>

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<div class="content">
<h6>링크를 통한 파라미터 전달</h6>
<a class="btn btn-info btn-sm" href="method1?kind=freeboard"> GET 방식 파라미터 전송</a>
<hr />
<h6>폼을 이용한 파라미터 전달</h6>
<form method="post" action="method2">
  <div class="mb-3">
    <label for="uemail" class="form-label">Email address</label>
    <input type="email" class="form-control" id="uemail" name="uemail" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="upassword" class="form-label">Password</label>
    <input type="password" class="form-control" id="upassword" name="upassword">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="upublic" name="upublic">
    <label class="form-check-label" for="upublic">Public</label>
  </div>
  <button type="submit" class="btn btn-primary" >Login</button>
</form>
<hr />
<h6>폼을 이용한 파라미터 전달</h6>
<form method="post" action="method3">

  <div class="mb-3">
    <label for="uid" class="form-label">아이디</label>
    <input type="text" class="form-control" id="uid" name="uid">
  </div>
    <div class="mb-3">
    <label for="uname" class="form-label">사용자 이름</label>
    <input type="text" class="form-control" id="uname" name="uname">
  </div>
  <div class="mb-3">
    <label for="upassword" class="form-label">비밀번호</label>
    <input type="password" class="form-control" id="upassword" name="upassword">
  </div>
  <div >
    <input type="checkbox" id="uhobby" name="uhobby" value="homework">
    <label class="form-check-label" for="uhobby">과제하기 &nbsp;</label>
    <input type="checkbox" id="uhobby" name="uhobby" value="nightwork">
    <label class="form-check-label" for="uhobby">야근하기</label>
    <input type="checkbox" id="uhobby" name="uhobby" value="restudy">
    <label class="form-check-label" for="uhobby">복습하기</label>
  </div>
 <div class="form-group">
    <label for="ujob">직무</label>
    <select multiple class="form-control" id="ujob" name="ujob">
      <option value="developer">개발자</option>
      <option value="designer">디자이너</option>
      <option value="manager">매니저</option>
    </select>
  </div>
  <button type="submit" class="btn btn-primary" >가입</button>
</form>
</div>



<jsp:include page="/WEB-INF/views/common/footer.jsp" />