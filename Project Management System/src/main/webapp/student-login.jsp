<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page errorPage="404_page.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Login</title>
<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

<!-- CSS -->
<link rel="stylesheet" href="CSS/style.css">

<!-- Javascript -->
<link src="js/myjs.js" type="text/javascript">

</head>
<body>

	<!-- Navbar -->
	<%@ include file="navbar.jsp"%>

	<!-- Login Form -->
	<div class="container-fluid">
		<div class="row justify-content-evenly">
			<div class="col-md-6 mt-4">
				<h1 class="text-center pt-5 display-4">Welcome to Student Login</h1>
				<br>
				<h6 class="text-center mb-3 mt-3">Please login to submit your
					synopsis</h6>
				<form method="post" action="StudentLoginServlet">
					<div class="mb-3">
						<label for="sid" class="form-label">Student ID</label> <input
							type="number" name="slogid" class="form-control" id="sid">
					</div>
					<div class="mb-3">
						<label for="sSpass" class="form-label">Password</label> <input
							type="password" name="spass" class="form-control" id="spass">
					</div>
					<div class=text-center>
					<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</form>
				<br>
				<p class="text-danger pb-4 text-center">
					To create new account sign up <a href="student-signup.jsp"
						class="text-decoration-none">here</a>
				</p>
			</div>
		</div>
		<!-- Container End -->
	</div>
	
	<!-- Footer -->
	<%@ include file="footer.jsp"%>

</body>
</html>