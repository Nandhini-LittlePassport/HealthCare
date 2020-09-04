<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.droptarget {
	float: left;
	width: 50px;
	height: 22px;
	margin: 30px;
	padding: 8px;
	border: 4px solid #aaaaaa;
}
</style>
<script>
function dragStart(event) {
  event.dataTransfer.setData("Text", event.target.id);
  document.getElementById("demo").innerHTML = "Started to drag the p element";
}

function allowDrop(event) {
  event.preventDefault();
}

function drop(event) {
  event.preventDefault();
  var data = event.dataTransfer.getData("Text");
  event.target.appendChild(document.getElementById(data));
}
</script>
</head>
<body>

<p>Drag the Test Need to be Taken and drop into	 below box</p>
	<table>
		<tr>

			<td><div class="droptarget" ondrop="drop(event)" ondragover="allowDrop(event)"> <p ondragstart="dragStart(event)" draggable="true" id="dragtarget">BloodTest</p></div></td>
			<td><div class="droptarget" ondrop="drop(event)" ondragover="allowDrop(event)"> <p ondragstart="dragStart(event)" draggable="true" id="dragtarget1">Scan</p></div></td>
			<td><div class="droptarget" ondrop="drop(event)" ondragover="allowDrop(event)"> <p ondragstart="dragStart(event)" draggable="true" id="dragtarget2">SugarTest</p></div></td>
			<td><div class="droptarget" ondrop="drop(event)" ondragover="allowDrop(event)"> <p ondragstart="dragStart(event)" draggable="true" id="dragtarget3">MRI</p></div></td>
		</tr>
		<tr>
		<td></td><td></td><td></td><td></td>
		<td><input type="submit" value="send to lab"></input></td>
		</tr>
		<tr><td><div class="droptarget" ondrop="drop(event)" ondragover="allowDrop(event)" id="target1"></div></td>
		<td><div class="droptarget" ondrop="drop(event)" ondragover="allowDrop(event)" id="target2"></div></td>
		<td><div class="droptarget" ondrop="drop(event)" ondragover="allowDrop(event)" id="target3"></div></td>
		<td><div class="droptarget" ondrop="drop(event)" ondragover="allowDrop(event)" id="target4"></div></td>
		</tr>
		
	</table>
	
</body>
</html>