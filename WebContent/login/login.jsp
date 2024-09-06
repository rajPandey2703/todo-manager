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
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>

	<jsp:include page="../common/newHeader.jsp"></jsp:include>

		<div class="container bg-img">

			<div class="row ">
				<div class="col-md-5">
					<div class="login-wrap p-4 p-md-5" style="margin-top: 50px">
						<div class="d-flex"></div>
						<form action="<%=request.getContextPath()%>/login" method="post" 
						>
							<div class="form-group mb-3">
								<input type="text"
									class="form-control" id="username" placeholder="User Name"
									name="username" required>
							</div>
							<div class="form-group mb-3">
								 <input type="password"
									class="form-control" id="password" placeholder="Password"
									name="password" required>
							</div>
							<div class="form-group center">
								<button type="submit"
									class="btn btn-primary rounded submit px-3 test">Sign
									In</button>
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