<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
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
<script>
function Book()
{
alert("Room Booked for you");
window.location = "RoomPage.jsp";
return false;
}
function Cancel()
{
window.location = "HomePage.jsp";
return false;
}
</script>

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
							<li><a data-scroll href="Patients.jsp">Patients</a></li>
							<li><a data-scroll href="DoctorsHomePage.jsp">Doctors</a></li>
							<li><a data-scroll href="Lab_HomePage.jsp">Laboratory</a></li>
							<li><a class="active" href="RoomPage.jsp">Rooms</a></li>
							<li><a data-scroll href="PharmacyHomePage.jsp">Pharmaceuticals</a></li>
							<li><a data-scroll href="ContactUs.jsp">ContactUs</a></li>
							<li><a data-scroll href="SignOut.jsp">Sign Out</a></li>					
						</ul>
						
					</div>
				</nav>
			</div>
		</div>
	</header>
	<br><br><br>
	<div class="col-md-9 col-sm-9 col-xs-6" style="margin-bottom: 50px;">
				

					<div class="col-md-12">
						<div class="table-responsive">
							
							<table id="mytable" class="table table-bordred table-striped">

								<thead>
									
									<th>S.NO</th>
									<th>Availability</th>
									<th>Cost</th>
								</thead>
								<tbody>
									<tr>									
										<td>100</td>
										<td>Available</td>
										<td>1000</td>
										<td><input type="checkbox" class="checkthis" id="checkme"
											name="Check" value="" /></td>
									</tr>
									<tr>									
										<td>100</td>
										<td>Available</td>
										<td>1000</td>
										<td><input type="checkbox" class="checkthis" id="checkme"
											name="Check" value="" /></td>
									</tr>
									<tr>									
										<td>100</td>
										<td>Available</td>
										<td>1000</td>
										<td><input type="checkbox" class="checkthis" id="checkme"
											name="Check" value="" /></td>
									</tr>
									<tr>									
										<td>100</td>
										<td>Available</td>
										<td>1000</td>
										<td><input type="checkbox" class="checkthis" id="checkme"
											name="Check" value="" /></td>
									</tr>
									<tr>
									<td><button onclick="Book()">Book</button></td>
									<td><button onclick="Cancel()">Cancel</button></td>
									</tr>
									</tbody>
									</table>
									</div>
									</div>
									</div>
									
	</body>