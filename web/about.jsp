<!DOCTYPE html>
<html lang="en">
<%@ page import="java.io.*"%>
<head>
	<title>About</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
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
        <a class="nav-link" href="statewise.jsp">Testing Labs</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="testinglabs.jsp">Population Data</a>
        </li>
        <li class="nav-item">
        <a class="nav-link" href="about.jsp">About us</a>
        </li>
    </ul>
    </nav>
    <div class="jumbotron text-center">
    <h1>About this webpage</h1>
    <p>This site is created using JSP and submitted for Open Source Computing Lab</p> 
    <p>The dataset is taken from Kaggle</p>
    </div>
    
    <div class="container">
    <div class="row">
        <div class="col-sm-4">
        <h3>Roll Number</h3>
        <br>
        <p>17I361</p>
        </div>
        <div class="col-sm-4">
        <h3>Name</h3>
        <br>
        <p>Vishnuvardhan S</p>
        </div>
        <div class="col-sm-4">
        <h3>Department</h3>        
        <br>
        <p>Information Technology, G2</p>
        </div>
    </div>
    </div>
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function () {
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function () {
				ps.update();
			})
		});
	</script>
	<script src="js/main.js"></script>

</body>

</html>