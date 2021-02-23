<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "project";
String userid = "root";
String password = "";
try {
	Class.forName(driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Student Detail</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
</head>

<body>
	<div class="container">
		</br>
		<h2>Student Attendance Details</h2>
		</br> <a class="btn btn-primary" href="adminstudentupdatebutton.jsp"
			role="button" aria-current="page">Update Details</a>
		</br>
		</br>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th scope="col">Student ID</th>
					<th scope="col">Department</th>
					<th scope="col">Name</th>
					<th scope="col">Section</th>
					<th scope="col">Attendance Status</th>

				</tr>
			</thead>
			<%
				try {
				connection = DriverManager.getConnection(connectionUrl + database, userid, password);
				statement = connection.createStatement();
				String sql = "select * from add_attendance";
				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
			%>

			<tbody>
				<tr>
					<td><%=resultSet.getString("student_id")%></td>

					<td><%=resultSet.getString("student_dept")%></td>
					<td><%=resultSet.getString("student_name")%></td>
					<td><%=resultSet.getString("student_sec")%></td>
					<td><%=resultSet.getString("student_attendance")%></td>

				</tr>
				<%
					}
				connection.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
				%>

			</tbody>
		</table>

	</div>





	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
</body>

</html>