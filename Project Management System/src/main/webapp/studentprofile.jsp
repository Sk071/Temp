<%@page import="com.pms.entity.Student"%>
<%@page import="jakarta.websocket.Session"%>
<%
Student student = (Student) session.getAttribute("currentstudent");
if (student == null) {
	response.sendRedirect("student-login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>

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
	<nav class="navbar navbar-expand-lg bg-success navbar-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <i class="bi bi-bank"></i>
				Modern College
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="student-login.jsp">Student</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="teacher-login.jsp">Teacher</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="webmaster.jsp">Webmaster</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Contact</a></li>
				</ul>

				<form action="StudentLogoutServlet" method="post">
					<ul class="navbar-nav mr-right">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#"><%=student.getFname()%></a></li>
						<li>
							<button type="button" class="btn btn-danger">Logout</button>
						</li>
					</ul>
				</form>
			</div>
		</div>
	</nav>

	<%
	String fname = student.getFname();
	String lname = student.getLname();
	out.println("Welcome " + fname + " " + lname);
	%>

</body>
</html>