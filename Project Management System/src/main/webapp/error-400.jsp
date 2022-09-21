<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Something went wrong</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">

</head>
<body>

	<!-- Error -->
	<div class="container text-center">
    <img alt="img" src=" Images/error-400.jpg" class="img-fluid">
    <h1 class=" display-3 p-3">Sorry! Something went wrong</h1>
    <p class="text-center p-3"><%= exception %></p>
   <a class="btn btn-outline-primary" href="http://localhost:8085/Project_Management_System/"> Home Page</a>
   </div>
   
   
</body>
</html>