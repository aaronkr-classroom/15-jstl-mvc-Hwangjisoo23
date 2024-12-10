<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p> Java 문자열 검색</p>
	<p> Hello, Java Server Pages! => 
	${fn:contains("Hello, Java Server Pages!, "Java") }</p>
	<p> Hello, Java Server Pages! => 
	${fn:containsIgnoreCase("Hello, Java Server Pages!, "JAVA") }</p>
	
	<hr>
	
	<c:set var="text" value="${fn:split('Hello, Java Server Pages!' , '')}" />
	<c:forEach var = "i" begin = "0" end = "${fn:length(texts }-1"}>
		<p>text[${i}] = ${text[i] }</p>
	</c:forEach>
	<p><c:out value = "${fn:join(texts, '*')}" /> </p>
</body>
</html>