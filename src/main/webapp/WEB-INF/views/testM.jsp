<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8" />

<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
	});
</script>
</head>
<body>
	<table border="1">
		<tr>
			<th>1 user_id</th>
			<th>2 user_name</th>
			<th>3 email</th>
			<th>4 password</th>
			<th>5 register_date</th>
			<th>6 auth</th>
		</tr>
		<c:forEach var="testM" items="${testMem }">
			<tr>
				<td>${testM.user_id}</td>
				<td>${testM.user_name}</td>
				<td>${testM.email}</td>
				<td>${testM.password}</td>
				<td>${testM.register_date}</td>
				<td>${testM.auth}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>