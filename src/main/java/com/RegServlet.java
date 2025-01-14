package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbs.DBService;
import com.dto.UserInfo;


@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		UserInfo u = new UserInfo();
		PrintWriter out = response.getWriter();
		u.setUsername(request.getParameter("t1"));
		u.setPassword(request.getParameter("t2"));
		
		
		u.setMno(request.getParameter("t3"));
		u.setRole(request.getParameter("s1"));

		DBService db = new DBService();
		int x = db.regUser(u);
		if(x>=1)
		{
			request.setAttribute("sms", "User Register Successfully");
		}
		else
		{
			request.setAttribute("sms", "Error In Registration");
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
		rd.forward(request, response);
		//rd.include(request, response);
		out.print("Hello I Am Back.");
		out.print("Hello I Am Back.");
		out.print("Hello I Am Back.");
	}

}