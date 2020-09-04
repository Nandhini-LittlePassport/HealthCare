<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tbody>
			<tr>
				<td>Age</td>
				<td><%=session.getAttribute("age")%></td>
			</tr>
			<tr>
				<td>Blood Group</td>
				<td><%=session.getAttribute("BG") %></td>
			</tr>
			<tr>
				<td>Date</td>
				<td><%=session.getAttribute("Todays_date") %></td>
			</tr>
			<tr>
				<td>Mobile Number</td>
				<td><%=session.getAttribute("mno")%></td>
			</tr>
			<tr>
				<td>Email ID</td>
				<td><%=session.getAttribute("emailid")%></td>
			</tr>
		</tbody>
	</table>
</body>
</html>