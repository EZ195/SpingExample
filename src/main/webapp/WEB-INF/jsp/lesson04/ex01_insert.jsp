<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 추가</title>
</head>
<body>

	<h3>회원정보 추가</h3>
	
	<form action="/lesson04/ex01/add_user" method="post">
		<label>이름 : </label> <input type="text" name="name"> <br><br>
		<label>생년월일 : </label>  <input type="text" name="yyyymmdd"> <br><br>
		<label>자기소개 : </label> <br><br>
		<textarea rows="10" cols="50" name="introduce"></textarea> <br><br>
		<label>이메일 주소 : </label> <input type="text" name="email"> <br><br>
		
		<button type="submit">추가</button>
	</form>
</body>
</html>