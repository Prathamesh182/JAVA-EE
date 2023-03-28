<%@page import="com.aurionpro.model.StringUtil"%>
<%@page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<h1>TODAY'S DATE : <%= new Date() %> </h1>
<h4>Hello World in Lower Case<%= new String(" : Hello World In Lowercase ").toLowerCase() %></h4>

<h3>Scriplet Tags:-</h3>
<%
for(int i=1;i<=10;i++){
	out.print("i: "+i+"<br>");
}
%>

<br>
<h3>Declaration Tags:-</h3>
<%!
	/* String stringToUpper(String str){
		return	str.toUpperCase();
	} */
%>
<h2>Hello World in Upper Case<%= new StringUtil().stringToUpper(" : Hello World in upper case").toUpperCase() %></h2>

</body>
</html>