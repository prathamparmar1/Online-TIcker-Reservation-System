<%@page import="com.dto.UserInfo"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Elite Reserve</title>
    <style>
		.fixed-image{
			position : fixed;
			top : 2 px;
			left : 0 px;
			width : 90px;
			height :auto;
		}
	</style>
    <link rel="stylesheet" href="homestyles.css">
</head>
<body>


    <header>
        <div class="container">
        <div class = "logo">
        <img src = "logoEliteMain.png" width="100" height = "auto" image-rendering: "auto;">
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <h1 class="logotwo">Elite Reserve</h1>
            <nav>
            	<form >
                <ul>
                 <li class="nav-item">
                   <a class="nav-link" href="home.jsp">Home</a>
                </li>
                
                <li class="nav-item">
                   <a class="nav-link" href="servicestatic.jsp">Services</a>
                </li>
                
                <li class="nav-item">
                   <a class="nav-link" href="home.jsp">Contact</a>
                </li>
                
                <li class="nav-item">
                   <a class="nav-link" href="GetReservationServlet">Your Reservations</a>
                </li>
                
                <li class="nav-item">
                   <a class="nav-link" href="logout.jsp">Logout</a>
                   <br>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                   <%
                   UserInfo u = (UserInfo)session.getAttribute("user");
                   if(u!=null)
                   {	out.print("Welcome ");
                 	   out.print(u.getRole());
                	   out.print("\n"+u.getUsername());
                   }
                   %>
                </li>
                    </form>
                </ul>
            </nav>
        </div>
    </header>
    <center>