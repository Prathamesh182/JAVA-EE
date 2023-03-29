<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:choose>
		<c:when test="${param.choice%2==0}">
 			<h4>${param.choice}  : is an even number </h4>
			</c:when>
		<c:otherwise>
			<h4>${param.choice} : is an odd number</h4> 
			</c:otherwise>
	</c:choose><br><br>


	<a href="index.jsp">Enter Another Number</a>
</body>
</html>