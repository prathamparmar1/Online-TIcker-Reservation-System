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


@WebServlet("/GetTrainServlet")
public class GetTrainServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		DBBooking db = new DBBooking();
		String start = request.getParameter("s1");
		String end = request.getParameter("s2");
		Bus t1 =  db.getTrain(start,end);
		
		request.setAttribute("train", t1);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/showtrain.jsp");
		rd.forward(request, response);
	
	}

}