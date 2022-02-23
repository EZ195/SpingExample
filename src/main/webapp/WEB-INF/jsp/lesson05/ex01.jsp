<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core 라이브러리 1</title>
</head>
<body>
	<h2>변수 정의하기</h2>
	<%--int number = 100; 이랑 같음--%>
	<%-- 변수 정의하는 방법1 --%>
	<c:set var="number1" value="100"/>  <%-- var="변수명" value="값" --%>
	<%-- 변수 정의하는 방법2 --%>
	<c:set var="number2">200</c:set>
	
	<h3>${number1 }</h3>
	<h3>${number2 }</h3>
	
	<%-- 출력값 : 300 --%>
	<h3>${number1 + number2 }</h3>
	<%-- 출력값 : 100 + 200 --%>
	<h3>${number1} + ${number2 }</h3>
	
	<h2>변수 출력</h2>
	<h3> <c:out value="999"/></h3>
	<h3> <c:out value="number1"/></h3>
	<h3> <c:out value="${number1 }"/></h3>
	
	<%--태그 안에 스크립트를 넣으면 스크립트 기능을 못하게 만들어서 문구가 그대로 출력 --%>
	<c:out value="<script> alert('출력')</script>"/><br>
	<c:out value="<script> alert('출력')</script>" escapeXml="true"/>
	
	<%--스크립트가 실행 escapeXml="false"태그 기능 실행 취소--%>
	<c:out value="<script> alert('출력')</script>" escapeXml="false"/>
	
	<h2> 조건문 </h2>
	<c:if test="true">
		<h4>조건이 참이다.</h4>
	</c:if>
	
	<c:if test="${number1 > 50}">
		<h4>number1은 50보다 크다</h4>
	</c:if>
	
	<%-- 같음 표현법 두가지 --%>
	<%-- 1. == --%>
	<c:if test="${number1 == 50} ">
		<h4>number1 = 50 이다</h4>
	</c:if>
	<%-- 2. eq --%>
	<c:if test="${number1 eq 50}">
		<h4>number1 = 50 이다</h4>		
	</c:if>
	
	<c:if test="${number1 ne 100}">
		<h4>number1은 100이 아니다</h4>
	</c:if>
	
	<%--비어있는 경우 : 
		1. 변수값이 null
		2. 변수가 지정되지 않은 경우 
		등등 다 true값에 해당됨--%>
	<c:if test="${empty number3 }">
		<h4>number3가 비어있다.</h4>
	</c:if>
	
	<c:if test="${not empty number1 }">
		<h4>number1은 비어있지 않다.</h4>
	</c:if>
	<c:if test="${!empty number1 }">
		<h4>number1은 비어있지 않다.</h4>
	</c:if>
	
	
	
</body>
</html>