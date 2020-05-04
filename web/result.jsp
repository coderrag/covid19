<!DOCTYPE html>
<html lang="en">
<%@ page import="java.io.*"%>
<head>
	<title>Covid 19 Symptoms Checker</title>
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
    <h1 class="text-dark">Your results</h1>
    <%
        String result = "";
        String sym = request.getParameter("sym");
        if(sym.equals("cold"))
        {
            result = "Probably, it is a normal cold! Please stay home and take standard medicines.";
        }
        else if(sym.equals("cough"))
        {
            result = "People with dry cough have higher chance for the virus!  Put yourself in quarantine for 14 days.";
        }
        else if(sym.equals("fever"))
        {
            result = "Its time to go to a hospital.  If your area is in red zone, ask permission from the gate incharge and visit a hospital as soon as possible.";
        }
        else if(sym.equals("breathing problem"))
        {
            result = "Visit a hosptial soon and take a test for Covid 19.";
        }
        else if(sym.equals("head ache"))
        {
            result = "Phone a doctor and get a prescription.  Stay in home.";
        }
        else
        {
            result = "I do not know how to respond to this.";
        }
    %>
    <br>
    <p class="text-danger"><%=result%></p>
    <br>
  </form>
</div>
</body>

</html>