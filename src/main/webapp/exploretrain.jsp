<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="com.dto.Bus"%>
<%@page import="com.GetBusServlet"%>
<%@page import="com.dbs.DBBooking"%>
<html>
<head>
<meta charset="UTF-8">
<title>Available Trains</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
</head>
<body>
<%@include file="header.jsp" %>

<div class="container mt-5">
    <h2>Available Trains</h2>
    <hr>
    <div class="row">
        <div class="col-md-12">
            <table class="table table-bordered">
                <tbody>
                 
                    <tr>
                        <th>1st A.C</th>
                        

                       
                       
                       <td>
                            <form action="reservationform.jsp">
                               
                                <button class="btn btn-primary" type="submit">Reserve Seat</button>
                            </form>
                        </td>
                </tbody>
                
                 <tbody>
                 
                    <tr>
                        <th>2nd A.C</th>
                        

                       
                       
                       <td>
                            <form action="reservationform.jsp">
                               
                                <button class="btn btn-primary" type="submit">Reserve Seat</button>
                            </form>
                        </td>
                </tbody>
                
                 <tbody>
                 
                    <tr>
                        <th>3rd A.C</th>
                        

                       
                       
                       <td>
                            <form action="reservationform.jsp">
                               
                                <button class="btn btn-primary" type="submit">Reserve Seat</button>
                            </form>
                        </td>
                </tbody>
                
                 <tbody>
                 
                    <tr>
                        <th>General </th>
                        

                       
                       
                       <td>
                            <form action="payment.jsp">
                               
                                <button class="btn btn-primary" type="submit">Reserve Seat</button>
                            </form>
                        </td>
                </tbody>
                
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <a href="trainsearch.jsp" class="btn btn-secondary">Back To Last Page</a>
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
