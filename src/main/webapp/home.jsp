<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Elite Reserve</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file for styling -->
    <style>
        /* Additional styles specific to this page if needed */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            color: #fff;
            background-color: #007bff;
            border-radius: 5px;
            text-decoration: none;
        }
        .hero {
            text-align: center;
            padding: 50px 20px;
            background-color: #f8f9fa;
        }
        .features {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin-top: 40px;
        }
        .feature-box {
            flex: 1 1 30%;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            padding: 20px;
            margin: 10px;
            background-color: #fff;
            border-radius: 8px;
            text-align: center;
        }
        .feature-box img {
            max-width: 100px;
            height: auto;
            margin-bottom: 20px;
        }
        footer {
            text-align: center;
            padding: 20px;
            background-color: #343a40;
            color: #fff;
        }
    </style>
</head>
<body>
    <%@include file="header2.jsp" %>
    
    <section id="hero" class="hero">
        <div class="container">
            <h1>Welcome to Elite Reserve</h1>
            <h2>Your One-Stop Solution for Ticket Reservations</h2>
            <p>Book bus, train, and event tickets with ease and convenience. Experience hassle-free reservations and seamless booking processes with Elite Reserve.</p>
            <a href="service.jsp" class="btn">Explore Services</a>
        </div>
    </section>

    <section id="premium-features">
        <div class="container">
            <h2>Why Choose Elite Reserve?</h2>
            <div class="features">
                <div class="feature-box">
                    <img src="easyBooking.png" alt="Easy Booking">
                    <h3>Effortless Booking</h3>
                    <p>Our platform is designed to provide a seamless and intuitive booking experience. With just a few clicks, you can secure your tickets for buses, trains, and events.</p>
                </div>
                <div class="feature-box">
                    <img src="bestdealLogo.jpg" alt="Best Deals">
                    <h3>Best Deals Guaranteed</h3>
                    <p>We offer the best deals and discounts on tickets, ensuring that you get the most value for your money. Save more with our exclusive offers and promotions.</p>
                </div>
                <div class="feature-box">
                    <img src="support24_7Logo.png" alt="24/7 Support">
                    <h3>24/7 Customer Support</h3>
                    <p>Our dedicated customer support team is available around the clock to assist you with any queries or issues. We are here to make your booking experience smooth and hassle-free.</p>
                </div>
            </div>
            <div class="features">
                <div class="feature-box">
                    <img src="securePaymentLogo.png" alt="Secure Payments">
                    <h3>Secure Payments</h3>
                    <p>We prioritize your security. Our platform uses advanced encryption techniques to ensure that your payment information is safe and secure.</p>
                </div>
                <div class="feature-box">
                    <img src="realTimeUpdatesLogo.jpg" alt="Real-time Updates">
                    <h3>Real-time Updates</h3>
                    <p>Stay informed with real-time updates on ticket availability, booking confirmations, and event schedules. Never miss a beat with Elite Reserve.</p>
                </div>
                <div class="feature-box">
                    <img src="userFriendlyInterfaceLogo.jpg" alt="User Friendly">
                    <h3>User-Friendly Interface</h3>
                    <p>Our platform is designed with you in mind. Navigate easily through our user-friendly interface and enjoy a hassle-free booking experience.</p>
                </div>
            </div>
        </div>
    </section>

    <section id="about">
        <div class="container">
            <h2>About Us</h2>
            <p>Elite Reserve is dedicated to providing the best online ticket booking experience for buses, trains, and events. Our platform is user-friendly and offers a seamless booking process. With a commitment to customer satisfaction, we strive to make your travel and event experiences memorable.</p>
        </div>
    </section>

    <section id="contact">
        <div class="container">
            <h2>Contact Us</h2>
            <p>If you have any questions or need assistance, feel free to reach out to us. Our support team is here to help you with all your booking needs.</p>
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
