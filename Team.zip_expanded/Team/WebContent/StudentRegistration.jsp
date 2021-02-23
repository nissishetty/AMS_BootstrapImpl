<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

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


	<%
		String student_id = request.getParameter("student_id");
	String student_dept = request.getParameter("student_dept");
	String student_name = request.getParameter("student_name");
	String student_sec = request.getParameter("student_sec");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
		Statement st = conn.createStatement();

		int i = st.executeUpdate("insert into student(student_id,student_dept,student_name,student_sec)values('"
		+ student_id + "','" + student_dept + "','" + student_name + "','" + student_sec + "')");
	}

	catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
	%>

	<div class="container">
		</br>
		<h2>Thank you for Registering <%=student_name%></h2>
		</br>
		<h3>Student Operations-</h3>
		</br>
		<div class="btn-group-vertical">
		<a class="btn btn-primary" href="studentretrieve.jsp" role="button" aria-current="page">Student Detail</a>
		</br>
		<a class="btn btn-primary" href="studentapplyleave.html" role="button" aria-current="page">Apply Leave Here</a>
		</br>
		<a class="btn btn-primary" href="adminleaveapprovalretrieve.jsp" role="button" aria-current="page">View Leave Status</a>
		</br>
		<a class="btn btn-primary" href="adminaddattendanceretrieve_copy.jsp" role="button" aria-current="page">Student Attendance Detail</a>
		</br>
		<a class="btn btn-primary" href="changepasswordbutton.jsp" role="button" aria-current="page">Change Password</a>
		</br>
		<a class="btn btn-primary" href="Welcome.html" role="button" aria-current="page">Logout</a>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
</body>

</html>