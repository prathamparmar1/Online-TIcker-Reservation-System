package com;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbs.DBService;
import com.dto.UserInfo;

@WebServlet("/AMDServlet")
public class AMDServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String op = request.getParameter("b1");
		UserInfo u = new UserInfo();
		try 
		{
			u.setUsername(request.getParameter("t1"));
		}
		catch (Exception e) 
		{
			
		}
		try 
		{
			u.setPassword(request.getParameter("t2"));
		}
		catch (Exception e) 
		{
			
		}
		
		u.setMno(request.getParameter("t3"));
		try 
		{
			u.setRole(request.getParameter("p1"));
		}
		catch (Exception e) 
		{
			
		}
		RequestDispatcher rd=null;
		int x=0;
		DBService db = new DBService();
		if(op.equals("Add"))
		{
			x = db.addCustomer(u);
			if(x>=1)
			{
				request.setAttribute("sms", "Record Inserted Successfully");
			}
			else
			{
				request.setAttribute("sms", "Record Could Not Be Inserted");
			}
		}
		if(op.equals("Update"))
		{
			x = db.updateCustomer(u);
			if(x>=1)
			{
				request.setAttribute("sms", "Record Updated Successfully");
			}
			else
			{
				request.setAttribute("sms", "Record Could Not Be Updated");
			}
		}
		if(op.equals("Delete"))
		{
			x = db.deleteCustomer(u);
			if(x>=1)
			{
				request.setAttribute("sms", "Record Deleted Successfully");
			}
			else
			{
				request.setAttribute("sms", "Record Coult Not Be Deleted");
			}
		}
		if(op.equals("Update Customer Data"))
		{
			x = db.updateCustomer(u);
			if(x>=1)
			{
				request.setAttribute("sms", "Record Updated Successfully");
			}
			else
			{
				request.setAttribute("sms", "Record Coult Not Be Updated");
			}
			rd = getServletContext().getRequestDispatcher("/modifycustomer.jsp");
			rd.forward(request, response);
		}
		
		rd = getServletContext().getRequestDispatcher("/amd.jsp");
		rd.forward(request, response);
	}
}