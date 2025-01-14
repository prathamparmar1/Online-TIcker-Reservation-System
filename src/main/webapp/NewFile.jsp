<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Elite Reserve - Your Ticket Booking Solution</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file for styling -->
    <style>
        /* Additional styles specific to this page if needed */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            color: #333;
        }
        .container {
            width: 80%;
            margin: auto;
            padding: 20px 0;
        }
        #hero {
            background-color: #007bff;
            color: #fff;
            padding: 80px 0;
            text-align: center;
        }
        #hero h2 {
            font-size: 3rem;
            margin-bottom: 20px;
        }
        #hero p {
            font-size: 1.5rem;
            margin-bottom: 40px;
        }
        .btn {
            display: inline-block;
            background-color: #fff;
            color: #007bff;
            padding: 12px 24px;
            border-radius: 4px;
            text-decoration: none;
            transition: background-color 0.3s, color 0.3s;
        }
        .btn:hover {
            background-color: #0056b3;
            color: #fff;
        }
        #about, #contact {
            background-color: #fff;
            padding: 60px 0;
            text-align: center;
        }
        #about h2, #contact h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }
        #about p, #contact p {
            font-size: 1.2rem;
            line-height: 1.6;
        }
        footer {
            background-color: #007bff;
            color: #fff;
            text-align: center;
            padding: 20px 0;
        }
    </style>
</head>
<body>
    <%@include file="header.jsp" %>
    
    <section id="hero">
        <div class="container">
            <h2>Your One-Stop Solution for Ticket Reservations</h2>
            <p>Book bus, train, and event tickets with ease and convenience. Explore our services today!</p>
            <a href="service.jsp" class="btn">Explore Services</a>
        </div>
    </section>

    <section id="about">
        <div class="container">
            <h2>About Elite Reserve</h2>
            <p>Elite Reserve is dedicated to providing the best online ticket booking experience for buses, trains, and events. Our platform is user-friendly, secure, and offers a seamless booking process. Whether you're planning a trip or attending an event, we've got you covered.</p>
        </div>
    </section>

    <section id="contact">
        <div class="container">
            <h2>Contact Us</h2>
            <p>If you have any questions or need assistance, feel free to reach out to our support team. We're here to help!</p>
            <a href="mailto:support@elitereserve.com" class="btn">Email Us</a>
        </div>
    </section>

    <footer>
        <div class="container">
            <p>&copy; 2024 Elite Reserve. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
