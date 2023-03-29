<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h4>Tagib-Functions-Test</h4>
<c:set var="String" value="Hello this is my WebPage"></c:set>
<c:if test="${fn:contains(String,'WebPage')}">
<p>Webpage found</p>
</c:if>
${fn:toLowerCase("Hello")}<br>
${fn:toUpperCase("WebPage")}<br>
${fn:substringAfter(String,"this")}<br>
${fn:replace(String,"Hello","Hii")}



</body>
</html>