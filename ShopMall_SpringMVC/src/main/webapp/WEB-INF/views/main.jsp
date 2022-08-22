<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Main</title>
<c:if test="${!empty success}">
	<!-- 회원가입 성공 메시지 -->
	<script>
		alert("${success}");
	</script>
</c:if>
</head>
<body>
	<h1>Main</h1>
	<jsp:include page="common/menu.jsp" /><br>
	<jsp:include page="common/top.jsp" />
</body>
</html>