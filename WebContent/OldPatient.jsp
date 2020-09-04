<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	width: 100%;
	height: 100vh;
	overflow: hidden;
}

form {
	border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 5px 5px;
	margin: 5px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 20%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>


</head>
<script src="login.js"></script>
<script>
	function redirection() {
		window.location = "HomePage.jsp";
		return false;
	}
</script>
<script>
	function isNumberKey(evt) {
		var charCode = (evt.which) ? evt.which : event.keyCode

		if ((charCode < 31) || (charCode >= 48 && charCode <= 57)
				|| (charCode >= 96 && charCode <= 105))
			return true;
		return false;
	}
</script>
<body>

	<form action="OldPatientServlet" method="post">
		<h2 align="center">New Patients</h2>
		<div class="container">
			<b></b> <label for="name"><b>Select Patient Name</b></label> <select
				name="name" id="name">
				<option value="pim">Pim</option>
				<option value="Jim">Jim</option>
				<option value="Tom">Tom</option>
			</select> <br>
			<br> <br> <b> <label for="Doctor"><b>Please
						Select Doctor</b></label>
			</b> <br>
			<input type="checkbox" id="doctor" name="doctor" value="Michael">
			<label for=doctor1> Michael</label><br> <input type="checkbox"
				id="doctor" name="doctor" value="Cronin"> <label
				for="doctor2"> Cronin</label><br> <input type="checkbox"
				id="doctor" name="doctor" value="Pixie"> <label
				for="doctor3"> Pixie</label><br>
			<br> <label for="mobno"><b>Mobile Number </b></label> <input
				type="number" placeholder="Enter Mobile Number" name="mno"
				type="number" required>
			<button type="submit">Appointment</button>
			<button type="submit" onclick="redirection()">Cancel</button>

		</div>
	</form>
</body>
</html>