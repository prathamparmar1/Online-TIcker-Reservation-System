<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>CodePen - Sign up / Login Form</title>
  <link rel="stylesheet" href="./style.css">

</head>
<head>
	<title>Slide Navbar</title>
	<style>
		.fixed-image{
			position : fixed;
			top : 80px;
			left : 440px;
			width : 100px;
			height :auto;
		}
	</style>
	<link rel="stylesheet" type="text/css" href="slide navbar style.css">
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">

</head>
<body>
 <%@include file="loginheader.jsp" %>	
  
<img src = "logoEliteMain.png" width="150" height = "auto" image-rendering: "auto;" class= "fixed-image">

<%
String sms =(String) request.getAttribute("sms");
if(sms!=null)
{
	out.print(sms);
}%>

<img alt="" src="">
	<div class="main">  	
		<input type="checkbox" id="chk" aria-hidden="true">

			 <div class="signup">
				<form action="RegServlet" method="post">
					<label for="chk" aria-hidden="true">Sign up</label>
					<input type="text" name="t1" placeholder="User name" required="">
					<input type="password" name="t2" placeholder="Password" required="">
					<input type="text" name="t3" placeholder="Mobile no." required="">
					
					Role
					<select name="s1">
					<option value="Admin">Agent</option>
					<option value="Customer">Client</option>	
					</select>
					<button>Sign up</button>
				</form>
			</div>

			<div class="login">
				<form action="login" method="post">
					<label for="chk" aria-hidden="true">Login</label>
					<input type="text" name="t1" placeholder="Username" required="">
					<input type="password" name="t2" placeholder="Password" required="">
					Role
					<select name="s1">
					<option value="Admin">Agent</option>
					<option value="Customer">Client</option>
					<option value="owner">Admin</option>	
					<input type="submit" value="Login">
					</select>
				</form>
			</div>
	</div>
</body>
</html>