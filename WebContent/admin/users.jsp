<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bg.css">

</head>
<body>
	<header id="grad">
		<nav class="navbar navbar-expand-lg navbar-dark">
			<div>
				<a href="" class="navbar-brand"> Todo Manager</a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Todos</a></li>
			</ul>
			
			<c:if test="${isAdmin==true}">
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/admin"
					class="nav-link">Admin</a></li>
			</ul>
			
			</c:if>

			<ul class="navbar-nav navbar-collapse justify-content-end">
				<li><a href="<%=request.getContextPath()%>/logout"
					class="nav-link">
					<img src="<%=request.getContextPath()%>/resources/images/logout.png" width="30" height="25"></a>
					</li>
					
				
			</ul>
		</nav>
	</header>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Users</h3>
			<hr>
			<div class="container text-left">

				
			</div>
			<br>
			<table class="table table-striped table-sm">
				<thead class="thead-dark">
					<tr>
						<th>Name</th>
						<th>Username</th>
						<th>Email</th>
						<th>IsAdmin</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="user" items="${userList}">

						<tr>
							<td><c:out value="${user.firstName}  ${user.lastName}" /></td>
							<td><c:out value="${user.username}" /></td>
							<td><c:out value="${user.email}" /></td>
							
							
							<td><c:if test="${user.isAdmin==true}">
							Yes
							</c:if>
							<c:if test="${user.isAdmin==false}">
							No
							</c:if>
							</td>

							<td><a href="">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="">Delete</a></td>
							
						</tr>
					</c:forEach>
					
				</tbody>

			</table>
		</div>
	</div>

</body>
</html>
