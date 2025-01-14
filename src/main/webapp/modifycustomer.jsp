<!DOCTYPE html>
<%@ page import="com.dto.UserInfo" %>
<%@ page import="com.dbs.DBService" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Elite Reserve</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .fixed-image {
            position: fixed;
            top: 2px;
            left: 0px;
            width: 90px;
            height: auto;
        }
        .services_section {
            background-color: #302b63;
            padding: 50px 0;
        }
        .services_text {
            color: white;
            text-align: center;
            font-size: 2.5em;
            margin: 0;
        }
        .card-signin {
            border: none;
            border-radius: 1rem;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            padding: 20px;
            margin: 0 auto;
        }
        .card-title {
            color: #302b63;
            font-size: 1.5em;
            font-weight: bold;
        }
        .form-group input {
            border-radius: 2rem;
            padding: 10px;
        }
        .btn-primary {
            background-color: #302b63;
            border: none;
            border-radius: 2rem;
            padding: 10px;
        }
        .btn-google {
            background-color: #db4a39;
            border: none;
            border-radius: 2rem;
            padding: 10px;
        }
        .btn-block {
            font-size: 1em;
            font-weight: bold;
        }
        .login_section {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
    </style>
</head>
<body>
<%@ include file="header.jsp" %>

<!-- Services Section -->

        <h1>SERVICES</h1>
    
<!-- Login Section -->
<div class="login_section">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-9 col-lg-7 col-lg-offset-2 col-md-offset-1 col-sm-offset-0">
                <div class="card card-signin my-5">
                    <div class="card-body">
                        <h5 class="card-title text-center">Update Customer Details</h5>
                        <br>
                        <% 
                        String sms = (String)request.getAttribute("sms");
                        if (sms != null) {
                            out.print(sms);
                        }
                        UserInfo u1 = (UserInfo) request.getAttribute("customer");
                        if (u1 != null) {
                        %>
                        <form action="AMDServlet" method="post">
                            <div class="form-group">
                                <input type="text" id="inputUsername" class="form-control" placeholder="User Name" name="t1" value="<%=u1.getUsername() %>" required autofocus>
                                <label for="inputUsername">UserName</label>
                            </div>

                            <div class="form-group">
                                <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="t2" value="<%=u1.getPassword() %>" required>
                                <label for="inputPassword">Password</label>
                            </div>

                            <div class="form-group">
                                <input type="text" id="inputMobile" class="form-control" placeholder="Mobile no." name="t3" value="<%=u1.getMno() %>" required>
                                <label for="inputMobile">Mobile no.</label>
                            </div>

                            <div class="form-group">
                                <input type="text" id="inputRole" class="form-control" placeholder="Role" name="t4" value="<%=u1.getRole()%>" required>
                                <label for="inputRole">Role</label>
                            </div>

                            <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" name="b1" value="Update Customer Data">Update Customer Data</button>
                            <hr class="my-4">
                            <a href="serviceowner.jsp"><button class="btn btn-lg btn-google btn-block text-uppercase" type="button">Back To Last Page</button></a>
                        </form>
                        
                        <% } %>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>

<!-- Include Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</body>
</html>
