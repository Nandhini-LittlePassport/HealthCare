<%@page import="java.util.ArrayList"%>
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
	function print() {
		alert("Printing....");

	}
</script>
<style>
#div1 {
	width: 50px;
	height: 70px;
	padding: 6px;
	border: 1px solid #aaaaaa;
}

input {
	border: 1px solid black;
}
</style>
<script>
	function redirection() {

		window.location = "DoctorsHomePage.jsp"; // Redirecting to other page.
		return false;

	}
	function setSessionattribute(inputText) {
		document.form1.p1.focus();
		HttpSession session = request.getSession();
		session.setAttribute("p1", inputText); 

	}
</script>
</head>
<body>
	<form name="form1" method="get" action="pharmacy_doctorservlet">
		<table>
			<tbody>
				<%
			
			int k=1;
			ArrayList<String> medicine=new ArrayList<String>();
			medicine.clear();
			for(int i=0;i<10;i++){				
				if(((String) session.getAttribute("medicine"+k)!=null)&&((String) session.getAttribute("medicine"+k)!="")){
						medicine.add((String) session.getAttribute("medicine"+k));
						k=k+1;
				}
			}
					%>
				<%if(medicine.size()==0) {%>
				<tr>
					<td>Prescription :</td>
				</tr>
				<tr>
					<td><input type="text" name="medicine1" /></td>
				</tr>
				<tr>
					<td><input type="text" name="medicine2" /></td>
				</tr>
				<tr>
					<td><input type="text" name="medicine3" /></td>
				</tr>
				<tr>
					<td><input type="text" name="medicine4" /></td>
				</tr>
				<tr>
					<td><input type="text" name="medicine5" /></td>
					<td><input type="submit" value="Sent to Pharmacy"></input></td>
					<td> </td>
				<td><input type="submit" onclick="redirection()" value="Cancel"></input></td>
				</tr>
				<tr>
					<td><input type="text" name="medicine6" /></td>
				</tr>
				<tr>
					<td><input type="text" name="medicine7" /></td>
				</tr>
				<tr>
					<td><input type="text" name="medicine8" /></td>
				</tr>
				<tr>
					<td><input type="text" name="medicine9" /></td>
				</tr>
				<tr>
					<td><input type="text" name="medicine10" /></td>
				</tr>
				<tr>
				
				</tr>
				<%} %>
				<%int j=1; %>
				<%if(medicine.size()>0) {%>
				<tr>
					<td>Prescription :</td>
				</tr>
				<%for(int i=0;i<medicine.size();i++){ %>
				
				<tr>
					<td><%=medicine.get(i) %></td>
				</tr>
				<%} %>
				<%} %>
			</tbody>
		</table>

	</form>
</body>
</html>