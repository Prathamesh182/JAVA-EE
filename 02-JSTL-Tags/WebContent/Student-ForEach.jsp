<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.List"%>
<%@page import="com.aurionpro.model.Student"%>
<%@page import="java.util.ArrayList"%>
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
		List<Student> students = new ArrayList<>();
	students.add(new Student("Prathamesh", 06, "prathamesh@gmail.com", true));
	students.add(new Student("Amogh", 07, "amogh@gmail.com", false));
	students.add(new Student("Akshay", 51, "akshay@gmail.com", true));
	students.add(new Student("Sankalp", 81, "sankalp@gmail.com", false));

	pageContext.setAttribute("studentList", students);
	%>
	<table border="1">
		<tr>
			<th>Name</th>
			<th>Roll Number</th>
			<th>Email-id</th>
			<th>Scholarship</th>
		</tr>

		<c:forEach var="student" items="${studentList}">
			<tr>
				<td>${student.name}</td>
				<td>${student.rollno}</td>
				<td>${student.email}</td>
				<%-- <c:set var="student"value="yes"></c:set> --%>
				<c:if test="${student.scholarship==true}">
				<td>yes</td>
				</c:if>
				<c:if test="${student.scholarship==false}">
				<td>no</td>
				</c:if>
			</tr>

		</c:forEach>
	</table>


</body>
</html>