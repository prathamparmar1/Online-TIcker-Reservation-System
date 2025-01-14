<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="com.dto.Bus"%>
<%@page import="com.GetBusServlet"%>
<%@page import="com.dbs.DBBooking"%>
<html>
<head>
<meta charset="UTF-8">
<title>Available Events</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
</head>
<body>
<%@include file="header.jsp" %>

<div class="container mt-5">
    <h2>Current Events in Your City</h2>
    <hr>
    <div class="row">
        <div class="col-md-12">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>City Name</th>
                        <th>Start At</th>
                        <th>End At</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Bus e1 = (Bus) request.getAttribute("event");
                    %>
                    <tr>
                        <td><%= e1.getCity() %></td>
                        <td><%= e1.getStart() %></td>
                        <td><%= e1.getEnd() %></td>
                        <td><%= e1.getTime() %></td>

                        <td><%= e1.getFare() %></td>
                       
                        <td>
                            <form action="exploreevent.jsp">
                               
                                <button class="btn btn-primary" type="submit">Explore</button>
                            </form>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <a href="eventsearch.jsp" class="btn btn-secondary">Back To Last Page</a>
        </div>
    </div>
</div>

<%@include file="footer.jsp" %>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script>
    // Function to set fare value from input field to hidden input on form submit
    $(document).ready(function() {
        $('form').submit(function() {
            var fareValue = $('#fareInput').val();
            $('#fareValue').val(fareValue);
        });
    });
</script>

</body>
</html>
