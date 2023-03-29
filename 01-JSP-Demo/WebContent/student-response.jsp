<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Form</title>
</head>
<body>
<h1>Student Form</h1>
<%
/* String firstName=request.getParameter("first_name"---------------------------------------------------------);
String LastName=request.getParameter("last_name");
String Gender=request.getParameter("gender"); */

%>
<%-- <h4>Welcome <%= firstName + LastName%></h4> --%>
<h4>Welcome ${param.first_name} ${param.last_name}</h4> 
<h4>Gender: ${param.gender}</h4>
<h4>Favorite Subject:<%
String multiple[]= request.getParameterValues("subject");
if(multiple != null)
{
%>
<ul>
<%
for(int i=0; i<multiple.length; i++)
{
%>
<li><%=multiple[i]%></li>
<%
}
%>
</ul>
<%
}
%> 

</h4>
<h4>Year: ${param.year}</h4>
</body>
</html>