<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8" />
<c:set var="path" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MAIN</title>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
</script>
<style type="text/css">
</style>
</head>
<body>
	<h1>메인화면</h1>
	<div>
		<div>
			<c:if test="${msg==null }">
				<div>기본상태(msg = null)</div>
			</c:if>
			<c:if test="${msg=='logout' }">
				<div>MESSAGE : Logout</div>
			</c:if>
		</div>
		<div>
			<input type="button" value="로그인" onclick="location.href='${path}/member/signUp.do'">
			<input type="button" value="회원가입" onclick="location.href='${path}/member/signIn.do'">
		</div>
	</div>
</body>
</html>