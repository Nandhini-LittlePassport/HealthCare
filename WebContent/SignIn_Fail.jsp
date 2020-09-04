<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignIn</title>
<style>
body {font-family: Arial, Helvetica, sans-serif; width: 100%; height: 100vh; overflow: hidden;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
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
<script src="login.js"></script>
<script type="text/javascript">
function open_win() {
window.open("ForgotPassword.jsp",'popup','width=300,height=300');
}
</script>
</head>
<body>
<form action="LoginServlet" method="post">
<h2 align="center">
ASK HOSPITALS
</h2>

<h3 align="center">
Please Enter Valid Credentials and Login Again
</h3>
  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="userName" id="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <button type="submit"  onclick="validate()">Login</button>
    <button onclick= "validate_Cancel()">Cancel</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
     <span class="psw"><a id="popuplink" target="popup"  onclick="open_win()" style="color:blue;">Forgot password?</a></span>
  </div>
  
</form>
</body>
</html>