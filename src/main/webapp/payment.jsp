<%@page import="com.dto.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Page</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file for styling -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #302b63;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 600px;
            width: 90%;
        }
        h2 {
            color: #333333;
        }
        .payment-form {
            margin-top: 20px;
            text-align: left;
        }
        .form-control {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }
        .form-control:focus {
            outline: none;
            border-color: #007bff;
        }
        .btn {
            display: inline-block;
            background-color: #007bff;
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Secure Payment</h2>
        <div class="payment-form">
            
                <label for="cardNumber">Card Number</label>
                <input type="text" id="cardNumber" name="cardNumber" class="form-control" placeholder="Enter your card number" required>
                
                <label for="expiryDate">Expiry Date</label>
                <input type="text" id="expiryDate" name="expiryDate" class="form-control" placeholder="MM/YYYY" required>
                
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" class="form-control" placeholder="CVV" required>
                
                <label for="cardHolderName">Card Holder Name</label>
                <input type="text" id="cardHolderName" name="cardHolderName" class="form-control" placeholder="Enter card holder's name" required>
                <%
                UserInfo u =(UserInfo)session.getAttribute("user");
                String s="";
                if(u.getRole().equals("Admin"))
                {
                
                s = "serviceadmin.jsp";
               
                }
                if(u.getRole().equals("Customer"))
                {
               
               s = "service.jsp";
               
                }
               if(u.getRole().equals("owner"))
               {
            	   s = "serviceowner.jsp";
               }
               %>
               <a href="<%=s%>" class="btn btn-secondary">Pay Now</a>
              
                </div>
    </div>
</body>
</html>
