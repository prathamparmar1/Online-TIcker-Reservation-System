package com.dbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dto.Bus;
//import com.dto.Student;
import com.dto.UserInfo;

public class DBService 
{
Connection con=null;
	public DBService()
	{
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elitereserve?user=root&password=Pratham@200305");
		}
		catch (Exception e) 
		{
			// TODO: handle exception
		}
	}
	public boolean check(UserInfo u)
	{
		boolean isValid=false;
		try 
		{
			PreparedStatement ps = con.prepareStatement("select * from userinfo1 where username = ? and password = ? and role = ?");
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getRole());
			ResultSet rs = ps.executeQuery();
			if(rs.next()==true)
			{
				isValid = true;
			}
			else
			{
				isValid= false;
			}
		}
		catch (Exception e) 
		{
		
		}
		return isValid;
	}
	public int regUser(UserInfo u)
	{
		int x=0;
		try 
		{
			PreparedStatement ps = con.prepareStatement("insert into userinfo1 values(?,?,?,?)");
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
	
			ps.setString(3, u.getMno());
			//ps.setString(4, u.getFullname());
			ps.setString(4, u.getRole());
			x = ps.executeUpdate();
			
		}
		catch (Exception e) 
		{
		System.out.print(e);
		}
		return x;
	}
	
	public Bus getBus(int start,int end)
	{
		Bus b1 = new Bus();
		try 
		{
			PreparedStatement ps = con.prepareStatement("select * from bus where start = ? and end = ?");
			ps.setInt(1, start);
			ps.setInt(2, end);
			ResultSet rs = ps.executeQuery();
			if(rs.next()==true)
			{
				
				b1.setTime(rs.getInt("time"));
				b1.setName(rs.getString("name"));
				b1.setFare(rs.getDouble("fare"));
			}
		}
		catch (Exception e) 
		{
			
		}
	return b1;
	}
	
	public ArrayList AllCustomer()
	{
		ArrayList<UserInfo>al = new ArrayList<UserInfo>();
		try 
		{
			PreparedStatement ps = con.prepareStatement("select * from userinfo1");
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				UserInfo u = new UserInfo();
				u.setUsername(rs.getString("username"));
				u.setMno(rs.getString("mno"));
				u.setRole(rs.getString("role"));
				al.add(u);
			}
		}
		catch (Exception e) 
		{
			
		}
	return al;
	}
	
	public UserInfo getCustomer(String mno)
	{
		UserInfo u = new UserInfo();
		try 
		{
			PreparedStatement ps = con.prepareStatement("select * from userinfo1 where mno = ?");
			ps.setString(1, mno);
			ResultSet rs = ps.executeQuery();
			if(rs.next()==true)
			{
				
				u.setMno(rs.getString("mno"));
				u.setUsername(rs.getString("username"));
				u.setRole(rs.getString("role"));
			}
		}
		catch (Exception e) 
		{
			
		}
	return u;
	}
	
	public int addCustomer(UserInfo u)
	{
		int x=0;
		try 
		{
			PreparedStatement ps = con.prepareStatement("insert into userinfo1 values(?,?,?,?)");
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getMno());
			ps.setString(4, u.getRole());
			
			x = ps.executeUpdate();
		}
		catch (Exception e) 
		{
			
		}
	return x;
	}
	
	public int deleteCustomer(UserInfo u)
	{
		int x=0;
		try 
		{
			PreparedStatement ps = con.prepareStatement("delete from userinfo1 where mno = ?");
			ps.setString(1, u.getMno());
			
			x = ps.executeUpdate();
		}
		catch (Exception e) 
		{
			
		}
	return x;
	}
	
	public int updateCustomer(UserInfo u)
	{
		int x=0;
		try 
		{
			PreparedStatement ps = con.prepareStatement("update userinfo1 set username= ?,role =?, password=? where mno = ?");

			ps.setString(1, u.getUsername());
			
			ps.setString(2, u.getRole());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getMno());
			
			x = ps.executeUpdate();
		}
		catch (Exception e) 
		{
			System.out.print(e);
		}
	return x;
	}
	
	

	
}