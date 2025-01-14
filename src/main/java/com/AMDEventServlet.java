package com;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbs.DBBooking;
import com.dto.Bus;

@WebServlet("/AMDEventServlet")
public class AMDEventServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String op = request.getParameter("b1");
		System.out.println(op);
		Bus b1 = new Bus();
		try 
		{
			b1.setStartAt(request.getParameter("t1"));
		}
		catch (Exception e) 
		{
			
		}
		try 
		{
			b1.setEndAt(request.getParameter("t2"));
		}
		catch (Exception e) 
		{
			
		}
		
		b1.setNameOfEvent(request.getParameter("t3"));
		try 
		{
			b1.setPrice(Double.parseDouble(request.getParameter("t4")));
		}
		catch (Exception e) 
		{
			
		}
		
		try 
		{
			b1.setCity(request.getParameter("t5"));
		}
		catch (Exception e) 
		{
			
		}
		RequestDispatcher rd=null;
		int x=0;
		DBBooking db = new DBBooking();
		if(op.equals("Add Event"))
		{
			x = db.addEvent(b1);
			if(x>=1)
			{
				request.setAttribute("sms", "Record Inserted Successfully");
			}
			else
			{
				request.setAttribute("sms", "Record Could Not Be Inserted");
			}
		}
		if(op.equals("Update Event"))
		{
			x = db.updateEvent(b1);
			if(x>=1)
			{
				request.setAttribute("sms", "Record Updated Successfully");
			}
			else
			{
				request.setAttribute("sms", "Record Could Not Be Updated");
			}
		}
		if(op.equals("Delete Event"))
		{
			x = db.deleteEvent(b1);
			if(x>=1)
			{
				request.setAttribute("sms", "Record Deleted Successfully");
			}
			else
			{
				request.setAttribute("sms", "Record Coult Not Be Deleted");
			}
		}
		
		rd = getServletContext().getRequestDispatcher("/amdeventdetails.jsp");
		rd.forward(request, response);
	}
}