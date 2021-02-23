<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String username1 = request.getParameter("username");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "project";
String userid = "root";
String password ="";
try {
	Class.forName(driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
	try {
	connection = DriverManager.getConnection(connectionUrl + database, userid, password);
	statement = connection.createStatement();
	String sql = "select * from login where username='"+ username1 +"'";
	resultSet = statement.executeQuery(sql);
	while (resultSet.next()) {
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

		<h1>Update Password</h1>
		</br>

		<form method="post" action="changepasswordresult.jsp">

			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">User Name</label> <input type="text" class="form-control"
					id="formGroupExampleInput" name="username" value="<%=resultSet.getString("username")%>"
					 required="required">
			</div>

			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Password</label> <input type="password" class="form-control"
					id="formGroupExampleInput" name="password" placeholder="Enter New Password"
					required="required">
			</div>


			<input class="btn btn-primary" type="submit" value="Submit">

		</form>


	</div>


	<%
		}
	connection.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
</body>

</html>
