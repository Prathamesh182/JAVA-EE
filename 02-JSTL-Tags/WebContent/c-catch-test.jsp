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
<h4>c-catch example</h4>
<c:catch var="catchException">
<%int x = 7/0; %>
</c:catch>

<c:if test="${catchException!=null}">
The Exception is : ${catchException}
</c:if>
</body>
</html>