<!DOCTYPE html>
<%@page import="com.dto.UserInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dbs.DBService"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Displaying All Customers</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
    <style>
        .card-signin {
            border: 0;
            border-radius: 1rem;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }
        .card-signin .card-title {
            margin-bottom: 2rem;
            font-weight: 300;
            font-size: 1.5rem;
        }
        .table th, .table td {
            text-align: center;
            vertical-align: middle;
        }
    </style>
</head>
<body>
    <%@include file="header.jsp" %>    
    <div class="services_section">
        <div class="container">
            <h1 class="services_text text-center">SERVICES</h1>
            <br>
            <br>
            <br>
        </div>
    </div>
    
    <div class="login_section py-5">
    <div class="login_section py-5" style="display: flex; justify-content: center; align-items: center; min-height: 65vh;margin-left: 150px;">
        <div class="container">
            <div class="row">
                <div class="col-sm-9 col-md-7 col-lg-10 mx-auto">
                    <div class="card card-signin my-5">
                        <div class="card-body">
                            <h5 class="card-title text-center">List Of All Customers</h5>
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover">
                                    <thead class="table table-bordered">
                                        <tr>
                                            <th scope="col">S.No.</th>
                                            <th scope="col">Username</th>
                                            <th scope="col">Mobile no.</th>
                                            <th scope="col">Role</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        ArrayList<UserInfo> al = (ArrayList<UserInfo>) request.getAttribute("allcustomer");
                                        int i = 1;
                                        for (UserInfo u1 : al) {
                                    %>
                                        <tr>
                                            <td><%= i %></td>
                                            <td><%= u1.getUsername() %></td>
                                            <td><%= u1.getMno() %></td>
                                            <td><%= u1.getRole() %></td>
                                        </tr>
                                    <%
                                            i++;
                                        }
                                    %>
                                    </tbody>
                                </table>
                            </div>
                            <a href="serviceowner.jsp" class="btn btn-primary mt-3">Back To Service page</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
