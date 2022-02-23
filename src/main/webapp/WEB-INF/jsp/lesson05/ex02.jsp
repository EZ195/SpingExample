<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core 라이브러리 2</title>
</head>
<body>
	<h2>조건문 (if else)</h2>
	
	<%--몸무게가 70이하면 치킨 80 이하면 샐러드 나머지는 굶기 --%>
	<c:set var="weight" value="98" />
	<c:choose>
		<c:when test="${weight <= 70 }">
			<h4>치킨먹자</h4>
		</c:when>
		<c:when test="${weight <= 80 }">
			<h4>샐러드 먹자</h4>
		</c:when>
		<c:otherwise>
			<h4>굶어</h4>
		</c:otherwise>
	</c:choose>
	
	<h2>반복문</h2>
	<%-- 0~4까지 반복 --%>
	<%-- for(int i = 0; i<5; i++) --%>
	<c:forEach var="i" begin="0" end="4" step="1">
		${i }
	</c:forEach>
	<br>
	<c:forEach var="i" begin="0" end="4" step="2">
		${i }
	</c:forEach>
	
	<%-- for(String fruitName:fruits) --%>
	
	<c:forEach var="fruitName" items="${fruits }" varStatus="status">
		<h3>${fruitName } :::: ${status.count } ${status.index} ${status.first } ${status.last }</h3>
	</c:forEach>
</body>
</html>