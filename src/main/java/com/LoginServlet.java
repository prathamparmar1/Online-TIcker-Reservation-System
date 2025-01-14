package com;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dbs.DBService;
import com.dto.UserInfo;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		UserInfo u = new UserInfo();
		u.setUsername(request.getParameter("t1"));
		u.setPassword(request.getParameter("t2"));
		u.setRole(request.getParameter("s1"));
		System.out.println("Role = "+u.getRole());
		DBService db = new DBService();
		boolean isVlid = db.check(u);
		String target="";
		if(isVlid==true)
		{
			HttpSession session = request.getSession(false);
			if(session!=null)
			{
				session.invalidate();
			}
			session = request.getSession(true);
			session.setAttribute("user", u);
			if(u.getRole().equals("Customer")==true)
			{
				System.out.println("11111111111");
				target="/service.jsp";
			}
			else
			{
			if(u.getRole().equals("owner")==true)
			{
				System.out.println("0000000000");
				target="/serviceowner.jsp";
			}
			else
			{
				System.out.println("22222222222");
				target="/serviceadmin.jsp";
			}
			}
		}
		else
		{
			request.setAttribute("sms", "Invalid Username/Password");
			target="/login.jsp";
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(target);
		rd.forward(request, response);
		
	}

}