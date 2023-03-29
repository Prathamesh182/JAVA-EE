<%@page import="java.net.URLDecoder"%>
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
		String favCity = null;

	Cookie[] theCookies = request.getCookies();

	if (theCookies != null) {
		for (Cookie tempCookie : theCookies) {
			if ("myApp.favCity".equals(tempCookie.getName())) {
		favCity = URLDecoder.decode(tempCookie.getValue(), "UTF-8");
		break;
			}
		}
	}

	if (favCity != null) {
		out.println("<h2>Favorite City: " + favCity + "</h2>");
	} else {
		out.println("<h2>NotFound</h2>");
	}
	%>
	<a href="cookies-form.jsp">Back To Form</a>
</body>
</html>