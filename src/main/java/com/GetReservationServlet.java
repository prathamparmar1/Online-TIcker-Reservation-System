package com;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dbs.DBBooking;
import com.dto.Bus;
import com.dto.UserInfo;


@WebServlet("/GetReservationServlet")
public class GetReservationServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		DBBooking db = new DBBooking();
		HttpSession session = request.getSession(false);
		UserInfo u = (UserInfo)session.getAttribute("user");
		System.out.println("User = "+u.getUsername());
		
		ArrayList al = db.getReservation(u.getUsername());
		
		request.setAttribute("reserve", al);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/reservation.jsp");
		rd.forward(request, response);
	
	}

}