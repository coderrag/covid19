<%@page import="java.net.URL"%>
<!DOCTYPE html>
<html lang="en">
<%@ page import="java.io.*"%>
<head>
	<title>Population distribution</title>
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
    <br>
    <div class="jumbotron text-center">
    <h1>Population Data of India</h1>
    <p>The population distribution for India is given below</p> 
    </div>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver2 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">State</th>
									<th class="cell100 column2">Population</th>
                                    <th class="cell100 column3">Area</th>
                                    <th class="cell100 column4">Density</th>
                                    <th class="cell100 column5">Gender</th>
								</tr>
							</thead>
						</table>
					</div>
                    <div class="table100-body js-pscroll">
                        <table>
                            <tbody>
                                <%
                                String fname = "https://raw.githubusercontent.com/coderrag/covid19/master/population.csv";
                                URL stockURL = new URL(fname);
                                BufferedReader input = new BufferedReader(new InputStreamReader(stockURL.openStream()));
                                String thisLine;
                                int i = 0;
                                while((thisLine = input.readLine())!=null)
                                {
                                    String[] row = thisLine.split(",");
                                    %><tr class="row100 body"><%
                                    if(i++!=0)
                                    {
                                        out.print("<td class=\" cell100 column1\">" + row[0]+"</td>");
                                        out.print("<td class=\" cell100 column2\">" + row[1]+"</td>");
                                        out.print("<td class=\" cell100 column3\">" + row[2]+"</td>");
                                        out.print("<td class=\" cell100 column4\">" + row[3]+"</td>");
                                        out.print("<td class=\" cell100 column5\">" + row[4]+"</td>");
                                    }
                                    %></tr><%
                                }
                                %>
                            </tbody>
                        </table>
                    </div>
				</div>
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