<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
		<h1>Coach Login</h1>
		<form method="get" action="acceptuser_validation.jsp">

			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Coach
					User Name</label> <input type="text" class="form-control"
					id="formGroupExampleInput" placeholder="Enter User Name"
					name="user" required="required">
			</div>

			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Coach
					Password</label> <input type="password" class="form-control"
					id="formGroupExampleInput" placeholder="Enter Password" name="pass"
					required="required">
			</div>

			<input class="btn btn-primary" type="submit" value="Log In">

		</form>




	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
</body>

</html>