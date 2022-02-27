<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="str1" value="No pain, No gain"/>
	<h2>길이 구하기</h2>
	${fn:length(str1) }
	
	<h2>특정 문자열 있는지 확인</h2>
	No 가 존재하는가? ${fn:contains(str1, "No") }<br>
	no 가 존재하는가? ${fn:contains(str1, "no") }<br>
	<c:if test="${fn:containsIgnoreCase(str1, 'no') }">
		문장에 no 라는 문자열이 존재한다. <br>
	</c:if>
	
	<h2>특정 문자열로 시작/끝 인지</h2>
	No로 시작하는가? ${fn:startsWith(str1, "No") }
	gain 으로 끝나는가? ${fn:endsWith(str1, "gain") }<br>
	
	<h2>문자열 치환</h2>
	<c:set var="str2" value="I love chicken"/>
	${fn:replace(str2, "chicken","bread") }<br>
	${str2 }<br>
	
	<h2> 문장졀 쪼개기</h2>
	${fn:split(str2, " ")[0] }<br>	
	${fn:split(str2, " ")[1] }<br>	
	${fn:split(str2, " ")[2] }<br>	
	
	<h2>문자열 짜르기</h2>
	<%-- love --%>
	${fn:substring(str2, 2 , 6) }
	
	<h2>모두 소문자 / 대문자 변경</h2>
	소문자로 변경 : ${fn:toLowerCase(str2) }<br>
	소문자로 변경 : ${fn:toUpperCase(str2) }<br>
	
	<h2>앞뒤 공백 제거</h2>
	<c:set var="str3" value="      hello      "/>
	<pre>${str3 }</pre>
	<pre>${fn:trim(str3) }</pre>
	
</body>
</html>