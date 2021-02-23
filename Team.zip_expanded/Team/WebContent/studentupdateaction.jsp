<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from student where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
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

		<h1>Update Student Details</h1>

		<form method="post" action="studentupdateresult.jsp">

			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Student
					ID</label> <input type="text" class="form-control"
					id="formGroupExampleInput" 
					name="id" value="<%=resultSet.getString("id") %>" required="required">
			</div>

			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Student
					Department</label> <input type="text" class="form-control"
					id="formGroupExampleInput" 
					name="student_dept" value="<%=resultSet.getString("student_dept") %>" required="required">
			</div>

			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Student
					Name</label> <input type="text" class="form-control"
					id="formGroupExampleInput" 
					name="student_name" value="<%=resultSet.getString("student_name") %>" required="required">
			</div>

			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Student
					Section</label> <input type="text" class="form-control"
					id="formGroupExampleInput" placeholder="Enter Student Section"
					name="student_sec" value="<%=resultSet.getString("student_sec") %>" required="required">
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
