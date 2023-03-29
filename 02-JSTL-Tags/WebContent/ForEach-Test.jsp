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
	<%
		String[] subject = { "Java", "C++", "Python", "JS" };
	pageContext.setAttribute("mysubjects", subject) ;        /* implicit object */
	%>
	<c:forEach var= "sub" items="${mysubjects}">
	${sub} <br/>
	</c:forEach>
</body>
</html>