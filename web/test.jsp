<!DOCTYPE html>
<html lang="en">
<%@ page import="java.io.*"%>
<head>
	<title>Test for COVID-19 </title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
    <nav class="navbar navbar-expand-sm bg-light justify-content-center">
    <ul class="navbar-nav">
        <li class="nav-item">
        <a class="nav-link" href="index.jsp">Home Page</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="statewise.jsp">State Wise Updates</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="test.jsp">Test for COVID-19</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="agegroupdetails.jsp">Age Group Details</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="testinglabs.jsp">Testing Labs</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="population.jsp">Population Data</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="about.jsp">About us</a>
        </li>
    </ul>
    </nav>
    <div class="jumbotron text-center">
    <h1 class="text-dark">Test for COVID-19</h1>
    <br>
    <p>This test helps you anaylyze yourself!</p> 
    <br>
    <div class="container">
    <form action="result.jsp">
    <div class="form-group d-flex justify-content-center">
    <label for="email">Let me know your symptoms:</label>
    </div>
    <div class="form-group d-flex justify-content-center">
      <input style="width:300px" type="text" class="form-control text-center" id="sym" placeholder="Enter your symptoms" name="sym">
    </div>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
</body>

</html>