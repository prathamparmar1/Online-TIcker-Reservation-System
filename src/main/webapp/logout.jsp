<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thank You</title>
<link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file for styling -->
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
        color: #333;
    }
    .container {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        border-radius: 8px;
        text-align: center;
        margin-top: 50px;
    }
    .message {
        color: blue;
        font-size: 1.2em;
        margin: 20px 0;
    }
    a {
        color: #007bff;
        text-decoration: none;
        font-weight: bold;
        margin: 20px 0;
        display: inline-block;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
   
    <div class="container">
        <p class="message">
            Thanks
            <%
                String us = (String)session.getAttribute("username");
                out.println(us + " for visiting our site.... Fir Ana...");
                session.invalidate();
            %>
        </p>
        <a href="login.jsp">Click Here For Login Again</a>
    </div>

</body>
</html>
