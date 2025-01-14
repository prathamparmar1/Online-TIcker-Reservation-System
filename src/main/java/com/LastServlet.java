package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LastServlet")
public class LastServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Add any necessary logic or parameters here

        // Forward the request to page1
        request.getRequestDispatcher("reserveconfirmation.jsp").include(request, response);

        // Forward the request to page2
        request.getRequestDispatcher("AddBookingServlet").include(request, response);
    }
}
