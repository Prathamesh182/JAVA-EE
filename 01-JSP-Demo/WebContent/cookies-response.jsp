<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>City</title>
</head>
<body>
	<%
		String favCity = request.getParameter("cities");
	Cookie theCookie = new Cookie("myApp.favCity", URLEncoder.encode(favCity, "UTF-8"));
	theCookie.setMaxAge(60 * 60 * 4 * 365);
	response.addCookie(theCookie);
	%>
	<a href="cookie-home.jsp">Cookie Home</a>
</body>
</html>