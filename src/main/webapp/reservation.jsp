<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="com.dto.Reservation"%>
<%@page import="com.GetBusServlet"%>
<%@page import="com.dbs.DBBooking"%>
<html>
<head>
<meta charset="UTF-8">
<title>Your Reservations</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
</head>
<body>
<%@include file="header.jsp" %>

<div class="container mt-5">
    <h2>Your Reservations</h2>
    <hr>
    <div class="row">
        <div class="col-md-12">
        <form action="cancelreservation.jsp" method ="post">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Username</th>
                        <th>Source</th>
                        <th>Destination</th>
                        <th>Dispatch Time</th>
                        <th>Fare</th>
                        <th>Type</th>

                    </tr>
                </thead>
               
                    <%
                        ArrayList al = (ArrayList) request.getAttribute("reserve");
             
                    for(int i=0; i<al.size(); i++)
                    {
                    	Reservation r = (Reservation)al.get(i);                    
                    %>
                    <tr>
                        <td><%= r.getUsername() %></td>
                        <td><%= r.getBusid() %></td>
                        <td><%= r.getStart() %></td>
                        <td><%= r.getEnd() %></td>
                         <td><%= r.getFare() %></td>
                         <td><%= r.getType() %></td>
                        <td>
                        <button class="btn btn-primary" type="submit" >Cancel Reservation</button>
                        </td>
                    </tr>
                    <%
                    }
                    %>
                
            </table>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
        <%
                UserInfo u1 =(UserInfo)session.getAttribute("user");
                String s="";
                if(u1.getRole().equals("Admin"))
                {
                
                s = "serviceadmin.jsp";
               
                }
                if(u1.getRole().equals("Customer"))
                {
               
               s = "service.jsp";
               
                }
               %>
            <a href="<%=s%>" class="btn btn-secondary">Back To Last Page</a>
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
