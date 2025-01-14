<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="com.dto.Bus"%>
<%@page import="com.GetBusServlet"%>
<%@page import="com.dbs.DBBooking"%>
<html>
<head>
<meta charset="UTF-8">
<title>Available Buses</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
</head>
<body>
<%@include file="header.jsp" %>

<div class="container mt-5">
    <h2>Available Buses</h2>
    <hr>
    <div class="row">
        <div class="col-md-12">
        <form action="reservationform.jsp">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Bus Name</th>
                        <th>Start Point</th>
                        <th>End Point</th>
                        <th>Dispatch Time</th>
                        <th>Fare</th>
                        <th>Action</th>
                    </tr>
                </thead>
               
                    <%
                        ArrayList al = (ArrayList) request.getAttribute("buses");
                   
                    
                    for(int i=0; i<al.size(); i++)
                    {
                    	Bus b = (Bus)al.get(i);                    
                    %>
                    <tr>
                        <td><%= b.getName() %></td>
                        <td><%= b.getStart() %></td>
                        <td><%= b.getEnd() %></td>
                        <td><%= b.getTime() %></td>
                         <td><%= b.getFare() %></td>
                        <td>
                        <button class="btn btn-primary" type="submit" name="b1" value="<%=b.getName()%>">Reserve Seat</button>
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
            <a href="bussearch2.jsp" class="btn btn-secondary">Back To Last Page</a>
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
