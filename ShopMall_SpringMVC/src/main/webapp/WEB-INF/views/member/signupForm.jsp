<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="AddMember">
		* 아이디: <input type="text" name="userid" id="userid"><br>
		* 비밀번호: <input type="password" name="passwd" id="passwd"><br>
		비빌번호 확인: <input type="password" name="passwd2" id="passwd2"> <span id="checkpw"></span><br> 
		이름: <input type="text" name="username"><br>
		<input type="text" name="post" id="postcode" placeholder="우편번호">
		<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br> 
		<input type="text" name="addr1" id="roadnameadd" placeholder="도로명 주소"> 
		<input type="text" name="addr2" id="lotnumadd" placeholder="지번 주소">
		<span id="guide" style="color: #0040FF"></span><br> 
		전화번호: <select name="phone1">
			   		<option value="010">010</option>
					<option value="011">011</option>
			    </select> - 
		<input type="text" name="phone2"> - <input type="text" name="phone3"><br> 
		이메일: <input type="text" name="email1"> @
		<input type="text" id="email2" name="email2" placeholder="직접 입력">
		<select id="emailSel">
			<option value="daum.net">daum.net</option>
			<option value="naver.com">naver.com</option>
			<option value="gmail.com">gmail.com</option>
			<option value="outlook.kr">outlook.kr</option>
		</select><br> 
		<input type="submit" value="회원가입"> <input type="reset" value="취소">
	</form>
<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
<script src='<c:url value="/resources/signupForm.js"/>'></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src='<c:url value="/resources/postcode.js"/>'></script>
</body>
</html>