<!DOCTYPE html>
<%@ page import="com.dto.UserInfo" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.dbs.DBService" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@ include file="header.jsp" %>

<!-- Services Section -->
<div class="services_section py-5">
    <div class="container">
        <h1 class="services_text text-center">SERVICES</h1>
    </div>
</div>

<!-- Login Section -->
<div class="login_section py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5">
                <div class="card card-signin my-5">
                    <div class="card-body">
                        <h5 class="card-title text-center">List Of All Customers</h5>
                        <br>
                        <form action="GetCustomerServlet" method="post">
                            <div class="form-group">
                                <label for="mobileNo">Select Mobile no To Search Customer Detail:</label>
                                <select name="s1" class="form-control" id="mobileNo">
                                    <%
                                    ArrayList<UserInfo> al = (ArrayList<UserInfo>) request.getAttribute("allcustomer");
                                    for (UserInfo u1 : al) {
                                    %>
                                    <option value="<%= u1.getMno() %>"><%= u1.getMno() %></option>
                                    <%
                                    }
                                    %>
                                </select>
                            </div>
                            <br>
                            <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" name="b1" value="Search Customer">Search Customer</button>
                        </form>
                        <br>
                        <a href="serviceowner.jsp" class="btn btn-secondary btn-block text-uppercase">Back To Admin Section</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>

<!-- Include Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
