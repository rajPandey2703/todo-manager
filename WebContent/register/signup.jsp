<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>To Do</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bg.css">
</head>

<body>

	<p><i><b>Not a member? Sign Up here</b></i></p>
	<form action="<%=request.getContextPath()%>/register" method="post">

		<div class="form-group">
			<input type="text" class="form-control" id="uname"
				placeholder="First Name" name="firstName" required>
		</div>

		<div class="form-group">
			<input type="text" class="form-control" id="uname"
				placeholder="last Name" name="lastName" required>
		</div>

		<div class="form-group">
			<input type="text" class="form-control" id="username"
				placeholder="User Name" name="username" required>
		</div>
		<div class="form-group">
			<input type="text" class="form-control" id="email"
				placeholder="Email" name="email" required>
		</div>

		<div class="form-group">
			<input type="password" class="form-control" id="password"
				placeholder="Password" name="password" required>
		</div>
		
		<div class="form-group">
			<button type="submit"
				class="form-control btn btn-success rounded submit px-3">Sign
				Up</button>
				<div class="alert center" role="alert">
				<p style="color: green;">${NOTIFICATION}</p>
			</div>
		</div>
		
		

	</form>


</body>
</html>