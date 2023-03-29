<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>City</title>
</head>
<body>
	<form action="cookies-response.jsp" method="get">
	<!-- for using space in between the names we use URL ENCODER and URL DECODER -->
		Cities: <select name="cities">
			<option value="Jaipur">Jaipur</option>
			<option value="Dombivli">Dombivli</option>
			<option value="Thane">Thane</option>
			<option value="Navi Mumbai">Navi Mumbai</option>

		</select><br>
		<br>
		<button type="submit">Submit</button>
	</form>

</body>
</html>