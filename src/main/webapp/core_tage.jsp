<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "C" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p>browser ���� �� ����</p>
	<c:set var="browser" value= "${header['User-Agent']}"/>
	<c:out value="${browser}" />
	
	<p>browser ���� �� ���� ��
	<c:remove var = "browser" />
	<c:out value = "${browser}" />
	
	<hr>
	
	<%String num = request.getParameter("number");%>
	
	<c:set var = "number" value = "<%=num %> " />
	<c:choose>
		<c:when test = "${number % 2 == 0}">
			<p><c:out value = "${number}" />�� ¦���Դϴ�.</p>
		</c:when>
		
		<c:when test = "${number % 2 == 0}">
			<p><c:out value = "${number}" />�� Ȧ���Դϴ�.</p>
		</c:when>
		<c:otherwise>
		<p> ���ڰ� �ƴմϴ�.</p>
		</c:otherwise>
	</c:choose>
	
	<hr>
	
	<h3>������</h3>
	<tabel>
		<c:forEach var = "i" begin = "1" end = "9">
			<tr>
				<c:forEach var = "j" begin = "1" end = "9">
					<td width=100>${i} * ${j} = ${i*j}</td>
				</c:forEach>
			</tr>
		</c:forEach>
	</tabel>
	
</body>
</html>