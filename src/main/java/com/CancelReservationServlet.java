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
import com.dto.Reservation;

@WebServlet("/CancelReservationServlet")
public class CancelReservationServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String op = request.getParameter("b1");
		System.out.println(op);
		HttpSession session = request.getSession(false);
		Reservation r = new Reservation();
		r.setType(request.getParameter("t1"));
		r.setBusid(request.getParameter("t2"));

		
		RequestDispatcher rd=null;
		int x=0;
		DBBooking db = new DBBooking();
		
		
	    x = db.deleteReservation(r.getBusid());
	    
		if(x>=1)
		{
			request.setAttribute("sms", "Reservation Cancelled Successfully");
		}
		else
		{
			request.setAttribute("sms", "Reservation Could not be Cancelled");
		}
		
		rd = getServletContext().getRequestDispatcher("/cancelreservation.jsp");
		rd.forward(request, response);
	}
}