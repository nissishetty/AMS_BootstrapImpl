<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/project";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String student_id = request.getParameter("student_id");
String student_dept=request.getParameter("student_dept");
String student_name=request.getParameter("student_name");
String student_sec=request.getParameter("student_sec");


if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update student set id=?,student_id=?,student_dept=?,student_name=?,student_sec=?where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, student_id);
ps.setString(3, student_dept);
ps.setString(4, student_name);
ps.setString(5, student_sec);

int i = ps.executeUpdate();
if(i > 0)
{
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
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

		<h2>Student Detail Updated Successfully</h2>
		
		</br>
		
		<a class="btn btn-primary" href="acceptuser.jsp" role="button" aria-current="page">Go Back</a>
	</div>
		
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
</body>

</html>