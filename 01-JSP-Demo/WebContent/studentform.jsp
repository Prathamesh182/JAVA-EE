<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="student-response.jsp" method="GET">
First Name:<input type="text" name="first_name" placeholder="First Name"/><br><br>
Last Name:<input type="text" name="last_name" placeholder="Last Name"/><br><br>
Gender: <br>
  <input type="radio"  name="gender" value="male">
  <label for="male">Male</label><br>
  <input type="radio"  name="gender" value="female">
  <label for="female">Female</label><br>
  <input type="radio"  name="gender" value="other">
  <label for="other">Other</label> <br><br>

Favourite Subject:<br>
<input type="checkbox" name="subject" value="html">
<label for="html"> HTML</label><br>
<input type="checkbox"  name="subject" value="java">
<label for="java"> JAVA</label><br>
<input type="checkbox"  name="subject" value="python">
<label for="python"> PYTHON</label><br><br>

Year:
<select name="year" >
  <option value="FY">First Year</option>
  <option value="SY">Second Year</option>
  <option value="TY">Third Year</option>
 
</select><br><br>




<button type="submit">Submit</button>
</form>

</body>
</html>