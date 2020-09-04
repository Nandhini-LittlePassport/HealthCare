<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
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
function redirection(){
	
	window.location = "DoctorsHomePage.jsp"; // Redirecting to other page.
	return false;
	
	}
	
function PatientDetailsRecorded(){
	
	alert("Patient Details Recorded Successfully");
	window.location = "DoctorsHomePage.jsp";
	
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
							<li><a class="active" href="DoctorsHomePage.jsp">Doctors</a></li>
							<li><a data-scroll href="Lab_HomePage.jsp">Laboratory</a></li>
							<li><a data-scroll href="RoomPage.jsp">Rooms</a></li>
							<li><a data-scroll href="PharmacyHomePage.jsp">Pharmaceuticals</a></li>
							<li><a data-scroll href="ContactUs">ContactUs</a></li>
							<li><a data-scroll href="SignOut.jsp">Sign Out</a></li>					
						</ul>
					</div>
				</nav>
			</div>
		</div>
<div align="right">
</div>
</header>
<br>
<br>
<br>
<br>
<%String name=(String)session.getAttribute("name");%>

<% if ((name==null)) { %>
 <h1>Please BOOK appointment and then Proceed with Doctor Visit</h1>
  <a  href="Patients.jsp">Book Here</a>
 <%} %>
<% if ((name!=null)) { %>
<h3>Patient Name : <%=session.getAttribute("name").toString().toUpperCase() %></h3>
  <iframe src="DoctorPage1.jsp" width="200%" height="150"></iframe>  
  <iframe  src="DoctorPage2.jsp" width="100%" height="100"></iframe>  
    <iframe  src="pharmacy_doctorpage.jsp" width="100%" height="200"></iframe>
    <iframe  src="Lab_doctors.jsp" width="100%" height="200"></iframe>
 <button type="submit"  onclick="redirection()">Submit</button>
<button type="submit" onclick="redirection()">Cancel</button>
 <%}%>
</body>
</html>
