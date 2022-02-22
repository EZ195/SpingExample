<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생정보 추가</title>
</head>
<body>
	<h1>학생 정보 추가</h1>
	
	<form action="/lesson04/ex02/add_student" method="get">
		<label>이름</label><input type="text" name="name"> <br><br>
		<label>휴대폰 번호</label><input type="text" name="phoneNumber"><br><br>
		<label>이메일</label><input type="email" name="email"><br><br>
		<label>장래희망</label><input type="text" name="dreamJob"><br><br>
		
		<button type="submit">추가</button>
		
	</form>
	
</body>
</html>