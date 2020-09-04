<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- Site Metas -->
<title>Ask Hospitals</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- Site Icons -->
<link rel="shortcut icon" href="images/fevicon.ico.png"
	type="image/x-icon" />
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="style.css">
<!-- Colors CSS -->
<link rel="stylesheet" href="css/colors.css">
<!-- ALL VERSION CSS -->
<link rel="stylesheet" href="css/versions.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">
<!-- Modernizer for Portfolio -->
<script src="js/modernizer.js"></script>
<!-- [if lt IE 9] -->
</head>
<body>

	<header>

		<div class="header-bottom wow fadeIn">
			<div class="container">
				<nav class="main-menu">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar"
							aria-expanded="false" aria-controls="navbar">
							<i class="fa fa-bars" aria-hidden="true"></i>
						</button>
					</div>

					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li><a data-scroll href="HomePage.jsp">Home</a></li>
							<li><a class="active" href="Patients.jsp">Patients</a></li>
							<li><a data-scroll href="DoctorsHomePage.jsp">Doctors</a></li>
							<li><a data-scroll href="Lab_HomePage.jsp">Laboratory</a></li>
							<li><a data-scroll href="RoomPage.jsp">Rooms</a></li>
							<li><a class="active" href="PharmacyHomePage.jsp">Pharmaceuticals</a></li>
							<li><a data-scroll href="#getintouch">ContactUs</a></li>
							<li><a data-scroll href="SignOut.jsp">Sign Out</a></li>					
						</ul>
					</div>
				</nav>
			</div>
		</div>
		<div class="row">

			<div class="col-md-9 col-sm-9 col-xs-6" style="margin-bottom: 50px;">
				<form method="post" action="ActionServlet">

					<div class="col-md-12">
						<div class="table-responsive">
							
							<table id="mytable" class="table table-bordred table-striped">

								<thead>
									
									<th>S.NO</th>
									<th>Patient Name</th>
									<th>Doctor</th>
									<th>Date</th>
									<th>MobileNumber</th>
									<th><input type="checkbox" id="checkall checkme" /></th>
								</thead>
								<tbody>
									<tr>	
										<td>1</td>
										<td>Pim</td>
										<td>Daniel</td>
										<td>30/08/2020</td>
										<td>9176660892</td>
										<td><input type="checkbox" class="checkthis" id="checkme"
											name="Check" value="" /></td>
										<td><input type="submit" class="delete" id="delete"
											name="delete" value="Delete" /></td>
									</tr>
									<tr>									
										<td>2</td>
										<td>jim</td>
										<td>Darison</td>
										<td>27/09/2020</td>
										<td>9176660893</td>
										<td><input type="checkbox" class="checkthis" id="checkme"
											name="Check" value="" /></td>
										<td><input type="submit" class="delete" id="delete"
											name="delete" value="Delete" /></td>
									</tr>
									<tr>									
										<td>3</td>
										<td><%=session.getAttribute("name")%></td>
										<td><%=session.getAttribute("doctorlist") %></td>
										<td><%=session.getAttribute("Todays_date") %></td>
										<td><%=session.getAttribute("mno")%></td>
										<td><input type="checkbox" class="checkthis" id="checkme"
											name="Check" value="" /></td>
										<td><input type="submit" class="delete" id="delete"
											name="delete" value="Delete" /></td>
									</tr>
								</tbody>

							</table>
						</div>
					</div>
				</form>
			</div>
	</header>

</body>
</html>