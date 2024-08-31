<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ToDo</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-1.10.2.js"
	type="text/javascript"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bg.css">


</head>
<body>

	<jsp:include page="../common/newHeader.jsp"></jsp:include>

	<section class="ftco-section">
		<div class="container login-page">

			<div class="row justify-content-center ">
				<div class="col-md-6">
					<div class="login-wrap p-4 p-md-5" style="border-style: outset; margin-top: 50px">
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
							<div class="form-group">
								<button type="submit"
									class="form-control btn btn-primary rounded submit px-3">Sign
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
						<p class="text-center">
							Not a member? <a href="<%= request.getContextPath() %>/register">Sign Up</a>
						</p>
					</div>
				</div>

				<div class="col-md-6">
					<div class="login-wrap p-4 p-md-5">
						
						<div class="bg-img"></div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>