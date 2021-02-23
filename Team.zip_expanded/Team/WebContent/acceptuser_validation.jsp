<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AMS</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<%-- Include the ValidateUser.java class whose method 
			boolean validate(String, String) we will be using 
		--%>
		<%-- Create and instantiate a bean and assign an id to 
			uniquely identify the action element throughout the jsp 
		--%>
		<jsp:useBean id="snr" class="team.ValidateUser" />

		<%-- Set the value of the created bean using form data --%>
		<jsp:setProperty name="snr" property="user" />
		<jsp:setProperty name="snr" property="pass" />

		<%-- Display the form data --%>

		<%-- Validate the user using the validate() of 
			ValidateUser.java class 
		--%>
		<%
			if (snr.validate("admin", "password")) {
		%>
		<br />
		<h2>Login Successfull</h2>
		</br>
		<a class="btn btn-success" href="acceptuser.jsp" role="button">Continue</a>
		<%
			} else {
		%>
		<br />
		<h2>Invalid Credentials</h2>
		</br>
		<a class="btn btn-danger" href="loginform.jsp" role="button">Go
			Back</a><br />
		<%
			}
		%>

	</div>
</body>

</html>