<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TODOS</title>
</head>
<body>
	<form action="todos.jsp" method="post">
		Enter Text:<input type="text" name="todo" /><br>
		<button type="submit">Submit</button>
	</form>

	 <%-- <%
			session.removeValue("todoslist");
		%>  --%>

	<%
		List<String> items = (List<String>) session.getAttribute("todoslist");

	if (items == null) {
		items = new ArrayList<>();
	}

	String text = request.getParameter("todo");

	if (text != null && text != "" && !items.contains(text)) {
		items.add(text);
		session.setAttribute("todoslist", items);

	}
	%>

	<ul>
		<%
			for (String x : items) {
			out.println("<li>" + x + "</li>");
		}
		%>
	</ul>

</body>
</html>