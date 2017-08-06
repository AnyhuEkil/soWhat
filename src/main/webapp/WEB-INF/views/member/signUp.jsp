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
<title>login</title>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#loginBtn").click(function() {
			var email = $("#email").val();
			var password = $("#password").val();
			/* 유효성 검사 */
			if (email == "") {
				alert("emaild 입력");
				$("#email").focus();
				return;
			}
			if (password == "") {
				alert("password를 입력");
				$("#password").focus();
				return;
			}
			$("form").attr("action", "${path}/login/loginCheck.do");
			$("form").submit();
		});
	});
</script>
<style type="text/css">
</style>
</head>
<body>
	<div>
		<h3>LOGIN</h3>
		<c:if test="${msg=='failure' }">
			<div>MESSAGE : e-Mail or Password FAILURE</div>
		</c:if>
		<c:if test="${msg=='logout' }">
			<div>MESSAGE : Logout</div>
		</c:if>
		<div>
			<form id="logForm" method="post">
				<div>
					<label>e-Mail</label> <input type="text" name="email" id="email">
				</div>
				<div>
					<label>Password</label> <input type="password" name="password"
						id="password">
				</div>
				<div>
					<button type="button" id="loginBtn">Login</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>