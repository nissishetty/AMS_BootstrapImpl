<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="net.javaguides.login.database.*"%>
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

	<jsp:useBean id="login" class="net.javaguides.login.bean.LoginBean" />

	<jsp:setProperty property="*" name="login" />

	<%
		LoginDao loginDao = new LoginDao();
	boolean status = loginDao.validate(login);
	if (status) {
	%>
	<div class="container">
	</br>
	<h2>Login Successful</h2>
	</br>
	<a class="btn btn-success" href="student.html" role="button">Continue</a>
	</div>
	
	<%	
	} else {
	%>
	<div class="container">
	</br>
	<h2>Invalid Credential!</h2>
	</br> <a class="btn btn-danger" href="login.jsp" role="button">Go Back</a>
	</div>
	<%
	}
	%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
</body>

</html>



