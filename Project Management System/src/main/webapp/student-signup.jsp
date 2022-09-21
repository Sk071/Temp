<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Signup</title>

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
	
	<!-- SignUp Form -->
      <div class="container-fluid">
        <div class="row justify-content-evenly p-4">
          <div class="col-md-6">
              <h1 class="text-center pt-4 display-4">Sign Up</h1> <br>
              
              <form action="StudentRegisterServlet" method="post">
                <div class="mb-3">
                  <label for="sid" class="form-label">Student ID</label>
                  <input type="number" name ="sid" class="form-control" id="sid">
                </div>

                  <div class="mb-3">
                    <label for="fn" class="form-label">First Name</label>
                    <input type="text" name="fname" class="form-control" id="fn">
                  </div>

                  <div class="mb-3">
                    <label for="ln" class="form-label">Last Name</label>
                    <input type="text" name="lname" class="form-control" id="ln">
                  </div>
                 
                  <div class="mb-3">
                    <p>Gender</p>
                    <select class="form-select" name="gender" aria-label="Default select example">
                      <option selected>Select</option>
                      <option value="Male">Male</option>
                      <option value="Female">Female</option>
                      <option value="Other">Other</option>
                    </select>
                  </div>

                  <div class="mb-3">
                    <p>Course</p>
                    <select class="form-select" name="course" aria-label="Default select example">
                      <option selected>Select</option>
                      <option value="bca">BCA</option>
                      <option value="bsc">BSC</option>
                      <option value="bcom">B.Com</option>
                      <option value="btech">B.Tech</option>
                    </select>
                  </div>

                  <div class="mb-3">
                    <p>Year</p>
                    <select class="form-select" name="year" aria-label="Default select">
                      <option selected>Select</option>
                      <option value="1">First</option>
                      <option value="2">Second</option>
                      <option value="3">Third</option>
                      <option value="4">Fourth</option>
                    </select>
                  </div>

                  <div class="mb-3">
                    <label for="spass" class="form-label">Set Password</label>
                    <input type="password" name="pass" class="form-control" id="spass">
                  </div>
                  
                  <div class="text-center">
                  <button type="submit" class="btn btn-primary mt-3 mb-4">Submit</button>
                   </div>
                </form>
          </div>
        </div>
	
	<!-- Footer -->
		<%@ include file="footer.jsp"%>
		
		        <!-- Container End -->
      </div>
		
</body>
</html>