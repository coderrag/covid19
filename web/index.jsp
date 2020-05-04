<%@page import="java.net.URL"%>
<!DOCTYPE html>
<html lang="en">
<%@ page import="java.io.*"%>
<head>
	<title>Covid 19 Updates</title>
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
    <h1>COVID 19 Updates</h1>
    <p>In this site, you can view all the current updates and charts about the COVID-19 in India</p> 
    </div>
    
    <div class="container">
    <div class="row">
        <div class="col-sm-3">
        <h3>Hot links &#x1F525;</h3>
        <br>
        <ul class="list-group">
            <li class="list-group-item"><a href="statewise.jsp">State Wise Updates</a></li>
            <li class="list-group-item"><a href="test.jsp">Test for COVID 19</a></li>
        </ul>
        <br>
        </div>
        <div class="col-sm-5">
        <h3>Quick updates! &#x26A1;</h3>
        <br>
        <%
        String fname = "https://raw.githubusercontent.com/coderrag/covid19/master/state_wise.csv";
        URL stockURL = new URL(fname);
        BufferedReader input = new BufferedReader(new InputStreamReader(stockURL.openStream()));
        String firstLine = input.readLine();
        String secondLine = input.readLine();
        String row1[] = firstLine.split(",");
        String row2[] = secondLine.split(",");
        %>
        <div class="container w-50 p-4 rounded-lg" style="float:left;background-color:#E84A5F;border-radius: 25px;">
        <%
            out.print("<h5 class=\"text-center\">" + row1[1] + "</h5>");
            out.print("<h5 class=\"text-center\">" + row2[1] + "</h5>");
        %>
        </div>
        <div class="container w-50 p-4 rounded-lg" style="float:left;background-color:lightgreen;border-radius: 25px;">
        <%
            out.print("<h5 class=\"text-center\">" + row1[2] + "</h5>");
            out.print("<h5 class=\"text-center\">" + row2[2] + "</h5>");
        %>
        </div>
        <div class="container w-50 p-4 rounded-lg" style="float:left;background-color:#A8A7A7;border-radius: 25px;">
        <%
            out.print("<h5 class=\"text-center\">" + row1[3] + "</h5>");
            out.print("<h5 class=\"text-center\">" + row2[3] + "</h5>");
        %>
        </div>
        <div class="container w-50 p-4 rounded-lg" style="float:left;background-color:#48c6ef;border-radius: 25px;">
        <%
            out.print("<h5 class=\"text-center\">" + row1[4] + "</h5>");
            out.print("<h5 class=\"text-center\">" + row2[4] + "</h5>");
        %>
        </div>
        </div>
        <div class="col-sm-4">
        <h3>Health Tips &#x1F489;</h3>        
        <br>
        <ul class="list-group">
            <li class="list-group-item">Do not come out of home during lockdown</li>
            <li class="list-group-item">Cover your face with masks and hands with gloves</li>
            <li class="list-group-item">Follow government rules without fail</li>
        </ul>
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