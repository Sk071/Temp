<%@page import="com.pms.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>

 <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    
    <!-- CSS -->
    <link rel="stylesheet" href="CSS/style.css">
    
    <!-- Javascript -->
    <link src="js/myjs.js" type="text/javascript">
    
</head>
<body>

<!-- Navbar -->
<%@ include file="navbar.jsp" %>

<!-- Carousel -->
      <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="Images/img1.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="Images/img1.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="Images/img1.jpg" class="d-block w-100" alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
      
      <!-- Paragraph -->
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12 text-center display-6 p-3 mt-3">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga soluta vero reiciendis, temporibus porro doloremque laudantium esse, deserunt cumque numquam minus pariatur dolore praesentium et? Dolores, doloremque! Asperiores, sequi nemo.</p>
          </div>
        </div>

        <hr>

        <!-- Cards -->
        <div class="row p-3 justify-content-evenly">
          <div class="col-md-3 p-2">
            <div class="card text-bg-success mb-3" style="max-width: 18rem;">
              <div class="card-header">Header</div>
              <div class="card-body">
                <h5 class="card-title">Success card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              </div>
            </div>
          </div>

          <div class="col-md-3 p-2">
            <div class="card text-bg-info mb-3" style="max-width: 18rem;">
              <div class="card-header">Header</div>
              <div class="card-body">
                <h5 class="card-title">Info card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              </div>
            </div>
          </div>

          <div class="col-md-3 p-2">
            <div class="card text-bg-danger mb-3" style="max-width: 18rem;">
              <div class="card-header">Header</div>
              <div class="card-body">
                <h5 class="card-title">Danger card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              </div>
            </div>
          </div>
        </div>
                <!-- Container End -->
      </div>
        
        
        	<!-- Footer -->
        	<%@ include file="footer.jsp" %>
        	
</body>
</html>