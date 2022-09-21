<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- Navbar -->
    <nav class="navbar navbar-expand-lg bg-success navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <i class="bi bi-bank"></i>
                Modern College
              </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="student-login.jsp">Student</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="teacher-login.jsp">Teacher</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="webmaster.jsp">Webmaster</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Contact</a>
              </li>
            </ul>
            <form class="d-flex" role="search">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="text-light btn btn-outline-success" type="submit">Search</button>
            </form>
          </div>
        </div>
      </nav>
</body>
</html>