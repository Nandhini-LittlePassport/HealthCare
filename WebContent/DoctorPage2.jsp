<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="DoctorServlet" method=get>
		<table>
			<tbody>
				<tr>

					<td>Diseases</td>
					
					<%
						String name = (String) session.getAttribute("disease");
					%>

					<%
						if ((name == null)) {
					%>
					<td><textarea id="disease" name="disease" rows="4" cols="50"></textarea></td>
					<td><input type="submit" value="add"></input></td>
					<%
						}
					%>
					<%
						if ((name != null)) {
					%>
					<td><textarea id="disease" name="disease" rows="4" cols="50"><%=(String) session.getAttribute("disease")%></textarea></td>
					<%
						}
					%>
				</tr>
			</tbody>
		</table>

	</form>
</body>
</html>