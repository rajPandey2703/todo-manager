<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>To Do</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"
	type="text/javascript"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bg.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/js/script.js"
	type="text/javascript"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body class="bg-img">

	<jsp:include page="../common/newHeader.jsp"></jsp:include>

	<div class="container">

		<div class="row ">
			<div class="col-md-5">
				<div class="login-wrap p-4 p-md-5">
					<div class="d-flex"></div>
					<form action="<%=request.getContextPath()%>/login" method="post">
						
						<div class="user-box">
							<input type="text" name="username" required id="username" /> <label>Username</label>
						</div>
						
						<div class="user-box">
							<input type="password" id="password" name="password" required /> <label>Password</label>
							<span class="password-toggle-icon"><i class="fas fa-eye"></i></span>
						</div>
						<div class="form-group center">
							<button type="submit" class="button">Sign In</button>
						</div>
						<div class="form-group d-md-flex">
							<div class="w-50 text-left">
								<label class="checkbox-wrap checkbox-primary mb-0">Remember
									Me <input type="checkbox" checked> <span
									class="checkmark"></span>
								</label>
							</div>
							<div class="w-50 text-md-right">
								<a href="#">Forgot Password</a>
							</div>
						</div>
					</form>

				</div>
			</div>
			<div class="col-md-1"></div>

			<div class="col-md-6">
				<div class="login-wrap p-4 p-md-5">
					<jsp:include page="../register/signup.jsp"></jsp:include>

				</div>

			</div>
		</div>
	</div>


	<%--<jsp:include page="../common/footer.jsp"></jsp:include> --%>

</body>
</html>