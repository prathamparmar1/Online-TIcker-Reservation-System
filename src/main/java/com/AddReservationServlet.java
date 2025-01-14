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
@WebServlet("/AddReservationServlet")
public class AddReservationServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("Fsdffdsfs");
		String op = request.getParameter("t6");
		HttpSession session = request.getSession(false);
		Reservation r = new Reservation();
		int x =0;
		
		r.setUsername(request.getParameter("t1"));
		r.setid(request.getParameter("t2"));
		r.setStart(request.getParameter("t3"));
		r.setEnd(request.getParameter("t4"));
		r.setFare(request.getParameter("t5"));
		r.setType(request.getParameter("t6"));
		
		//p.setPrice(Integer.parseInt(request.getParameter("s2")));
	//	r.setUsername((String)session.getAttribute("user"));
		DBBooking db = new DBBooking();
		if(op.equals("train"))
		{
			x = db.addTrainReservation(r);
			if(x>=1)
			{
				request.setAttribute("sms", "Record Inserted Successfully");
			}
			else
			{
				request.setAttribute("sms", "Record Could Not Be Inserted");
			}
		}
		if(op.equals("bus"))
		{
			x = db.addBusReservation(r);
			if(x>=1)
			{
				request.setAttribute("sms", "Record Updated Successfully");
			}
			else
			{
				request.setAttribute("sms", "Record Could Not Be Updated");
			}
		}
		if(op.equals("event"))
		{
			x = db.addEventReservation(r);
			if(x>=1)
			{
				request.setAttribute("sms", "Record Deleted Successfully");
			}
			else
			{
				request.setAttribute("sms", "Record Coult Not Be Deleted");
			}
		}
		
	
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/payment.jsp");
		rd.include(request, response);	
	}
	////////////////////////////////////////////
	
	

	}
