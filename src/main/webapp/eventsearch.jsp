<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.ArrayList"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Trains</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="bussearch2.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
        }
        .services_section {
            background-color: #f8f8f8;
            padding: 30px 0;
            text-align: center;
        }
        .services_text {
            font-size: 2em;
            font-weight: bold;
            color: #302b63;
        }
        .login_section {
            padding: 60px 0;
            background: #fff;
        }
        .card-signin {
            border: 1px solid #ddd;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
            background-color: #f1f1f1;
        }
        .form-group label {
            color: #302b63;
            font-weight: bold;
        }
        .form-control {
            border-radius: 0;
            box-shadow: none;
            border-color: #302b63;
        }
        .btn-primary {
            background-color: #302b63;
            border-color: #302b63;
            border-radius: 0;
            font-weight: bold;
            letter-spacing: 1px;
        }
        .btn-primary:hover {
            background-color: #555;
            border-color: #555;
        }
        .footer {
            background-color: #302b63;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>

    <div class="services_section">
        <div class="container">
            <h1 class="services_text">SERVICES</h1>
        </div>
    </div>

    <div class="login_section">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
                    <div class="card card-signin">
                        <div class="card-body">
                            <h5 class="card-title text-center">Please Select Place for Searching Events</h5>
                            <form action="GetEventServlet" method="post">
                                <div class="form-group">
                                    <label for="s1">Select Desired City:</label>
                                    <select id="s1" name="s1" class="form-control">
                                        <option value="agar">Agar</option>
                                        <option value="indore">Indore</option>
                                        <option value="ratlam">Ratlam</option>
                                        <option value="bhopal">Bhopal</option>
                                    </select>
                                </div>
                                <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" name="b1" value="Search Events">Search Events</button>
                            </form>
                              <%
            			    UserInfo u2 =(UserInfo)session.getAttribute("user");
                			String s="";
            			    if(u.getRole().equals("Admin"))
         			       {
    	            
        			        s = "serviceadmin.jsp";
               
     			           }
            			    if(u.getRole().equals("Customer"))
            			    {
               
            			   s = "service.jsp";
           		    
            			    }
        
            			   %>
                            <a href="<%=s%>" class="btn btn-link" style="margin-top: 10px; color: #302b63;">Back To Last page</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="footer.jsp" %>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</body>
</html>