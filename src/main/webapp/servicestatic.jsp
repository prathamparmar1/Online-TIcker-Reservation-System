<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Elite Reserve Services</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file for styling -->
    <style>
        /* Additional styles specific to service.jsp if needed */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 90%;
            margin: auto;
            padding: 20px 0;
        }
        .services-row {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            gap: 20px; /* Adjust spacing between service boxes */
        }
        .service-box {
            flex: 1 1 20%; /* Adjust width of each service box */
            text-align: center;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .service-box img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
        }
        @media (max-width: 768px) {
            .service-box {
                flex-basis: 45%; /* Adjust width for smaller screens */
            }
        }
        @media (max-width: 576px) {
            .service-box {
                flex-basis: 100%; /* Full width on smaller screens */
            }
        }
    </style>
</head>
<body>
    <%@include file="header.jsp" %>

    <section id="services">
        <div class="container">
            <h2>Our Services</h2>
            
            <div class="services-row">
                <div class="service-box">
                    <img src="busLogo.jpg" >
                     <a class="nav-link" href="login.jsp"> <h3>Bus Tickets</h3></a>
                    <p>Book bus tickets to your favorite destinations.</p>
                </div>
                
                <div class="service-box">
                    <img src="triainLogo.jpg" alt="Train Tickets">
                     <a class="nav-link" href="login.jsp"><h3>Train Tickets</h3></a>
                    <p>Reserve train tickets with just a few clicks.</p>
                </div>
                
                <div class="service-box">
                    <img src="eventLogo.jpg" alt="Event Tickets">
                     <a class="nav-link" href="login.jsp"><h3>Event Tickets</h3></a>
                    <p>Get tickets for the hottest events in town.</p>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <p>&copy; 2024 Elite Reserve. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
