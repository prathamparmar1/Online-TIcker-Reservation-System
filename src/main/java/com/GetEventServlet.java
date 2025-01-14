package com;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbs.DBBooking;
import com.dto.Bus;


@WebServlet("/GetEventServlet")
public class GetEventServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		DBBooking db = new DBBooking();
		String city = request.getParameter("s1");
		Bus e1 =  db.getEvent(city);
		
		request.setAttribute("event", e1);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/showevent.jsp");
		rd.forward(request, response);
	
	}

}