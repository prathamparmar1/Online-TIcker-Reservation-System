package com;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbs.DBService;
import com.dto.UserInfo;


@WebServlet("/GetCustomerServlet")
public class GetCustomerServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		DBService db = new DBService();
		String mno = request.getParameter("s1");
		UserInfo u =  db.getCustomer(mno);
		request.setAttribute("customer", u);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/modifycustomer.jsp");
		rd.forward(request, response);
	
	}

}