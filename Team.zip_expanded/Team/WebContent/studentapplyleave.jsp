<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String student_id=request.getParameter("student_id");
String reason=request.getParameter("reason");
String no_of_days=request.getParameter("no_of_days");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into apply_leave(student_id,reason,no_of_days)values('"+student_id+"','"+reason+"','"+no_of_days+"')");
}

catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

		

%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>AMS</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
</head>

<body>
<div class="container">
</br>
<h2>Leave Applied Successfull</h2>
</br>
		<a class="btn btn-primary" href="StudentRegistration.jsp" role="button" aria-current="page">Go Back</a>
</div>

<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
</body>

</html>