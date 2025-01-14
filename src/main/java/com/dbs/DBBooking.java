package com.dbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dto.Bus;
import com.dto.Reservation;
import com.dto.UserInfo;

public class DBBooking 
{
Connection con=null;
	public DBBooking()
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
	
	public ArrayList getBus(String start,String end)
	
	{
		ArrayList al = new ArrayList(); 
				
		
		try 
		{
			
			PreparedStatement ps = con.prepareStatement("select * from bus where start = ? and end = ?");
			ps.setString(1, start);
			ps.setString(2, end);
			ResultSet rs = ps.executeQuery();
			System.out.println("Yes");
			while(rs.next())
			{
				Bus b1 = new Bus();
				b1.setStart(rs.getString("start"));
				b1.setEnd(rs.getString("end"));
				b1.setTime(rs.getInt("time"));
				b1.setName(rs.getString("name"));
				b1.setFare(rs.getDouble("fare"));
				al.add(b1);
			}
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
	return al;
	}
	
	public ArrayList AllBus(String start,String end)
	{
		ArrayList<Bus>al = new ArrayList<Bus>();
		try 
		{
			PreparedStatement ps = con.prepareStatement("select * from bus where start = ? and end = ?");
			ps.setString(1, start);
			ps.setString(2, end);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				Bus b1 = new Bus();
				b1.setTime(rs.getInt("time"));
				b1.setName(rs.getString("name"));
				b1.setFare(rs.getDouble("fare"));
				al.add(b1);
			}
		}
		catch (Exception e) 
		{
			
		}
	return al;
	}
	
	public Bus getTrain(String start,String end)
	{
		Bus t1 = new Bus();
		try 
		{
			
			PreparedStatement ps = con.prepareStatement("select * from train where start = ? and end = ?");
			ps.setString(1, start);
			ps.setString(2, end);
			ResultSet rs = ps.executeQuery();
			System.out.println("Yes");
			if(rs.next()==true)
			{
				t1.setStart(rs.getString("start"));
				t1.setEnd(rs.getString("end"));
				t1.setTime(rs.getInt("time"));
				t1.setName(rs.getString("name"));
				t1.setFare(rs.getDouble("fare"));
			}
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
	return t1;
	}
	
	public int addBus(Bus b1)
	{
		int x=0;
		try 
		{
			PreparedStatement ps = con.prepareStatement("insert into bus values(?,?,?,?,?)");
			ps.setString(1, b1.getStart());
			ps.setString(2, b1.getEnd());
			ps.setString(3, b1.getName());
			ps.setInt(4,b1.getTime());
			ps.setDouble(5, b1.getFare());
			
			x = ps.executeUpdate();
		}
		catch (Exception e) 
		{
			
		}
	return x;
	}
	
	public int deleteBus(Bus b1)
	{
		int x=0;
		try 
		{
			PreparedStatement ps = con.prepareStatement("delete from bus where name = ?");
			ps.setString(1, b1.getName());
			
			x = ps.executeUpdate();
		}
		catch (Exception e) 
		{
			
		}
	return x;
	}
	
	public int updateBus(Bus b1)
	{
		int x=0;
		try 
		{
			PreparedStatement ps = con.prepareStatement("update bus set start = ?, end = ?, time = ?, fare = ? where name = ?");

			ps.setString(1, b1.getStart());
			ps.setString(2, b1.getEnd());
			
			ps.setInt(3,b1.getTime());
			ps.setDouble(4,b1.getFare());
			ps.setString(5, b1.getName());
			
			
			x = ps.executeUpdate();
			System.out.print(x);
		}
		catch (Exception e) 
		{
			System.out.print(e);
		}
	return x;
	}
	
	public int addEvent(Bus b1)
	{
		int x=0;
		try 
		{
			PreparedStatement ps = con.prepareStatement("insert into event values(?,?,?,?,?)");
			ps.setString(1, b1.getStartAt());
			ps.setString(2, b1.getEndAt());
			ps.setString(3, b1.getNameOfEvent());
			ps.setDouble(4,b1.getPrice());
			ps.setString(5, b1.getCity());
			
			x = ps.executeUpdate();
		}
		catch (Exception e) 
		{
			
		}
	return x;
	}
	
	public int deleteEvent(Bus b1)
	{
		int x=0;
		try 
		{
			PreparedStatement ps = con.prepareStatement("delete from event where nameofevent = ?");
			ps.setString(1, b1.getNameOfEvent());
			
			x = ps.executeUpdate();
		}
		catch (Exception e) 
		{
			
		}
	return x;
	}
	
	public int updateEvent(Bus b1)
	{
		int x=0;
		try 
		{
			PreparedStatement ps = con.prepareStatement("update event set startat = ?, endat = ?, price = ?, city = ? where nameofevent = ?");

			ps.setString(1, b1.getStartAt());
			ps.setString(2, b1.getEndAt());
			
			ps.setDouble(3,b1.getPrice());
			ps.setString(4,b1.getCity());
			ps.setString(5, b1.getNameOfEvent());
			
			
			x = ps.executeUpdate();
			System.out.print(x);
		}
		catch (Exception e) 
		{
			System.out.print(e);
		}
	return x;
	}
	
	public int addTrain(Bus b1)
	{
		int x=0;
		try 
		{
			PreparedStatement ps = con.prepareStatement("insert into train values(?,?,?,?,?)");
			ps.setString(1, b1.getStart());
			ps.setString(2, b1.getEnd());
			ps.setString(3, b1.getName());
			ps.setInt(4,b1.getTime());
			ps.setDouble(5, b1.getFare());
			
			x = ps.executeUpdate();
		}
		catch (Exception e) 
		{
			
		}
	return x;
	}
	
	public int deleteTrain(Bus b1)
	{
		int x=0;
		try 
		{
			PreparedStatement ps = con.prepareStatement("delete from train where name = ?");
			ps.setString(1, b1.getName());
			
			x = ps.executeUpdate();
		}
		catch (Exception e) 
		{
			
		}
	return x;
	}
	
	public int updateTrain(Bus b1)
	{
		int x=0;
		try 
		{
			PreparedStatement ps = con.prepareStatement("update train set start = ?, end = ?, time = ?, fare = ? where name = ?");

			ps.setString(1, b1.getStart());
			ps.setString(2, b1.getEnd());
			
			ps.setInt(3,b1.getTime());
			ps.setDouble(4,b1.getFare());
			ps.setString(5, b1.getName());
			
			
			x = ps.executeUpdate();
			System.out.print(x);
		}
		catch (Exception e) 
		{
			System.out.print(e);
		}
	return x;
	}
	
	public Bus getEvent(String city)
	{
		Bus e1 = new Bus();
		try 
		{
			
			PreparedStatement ps = con.prepareStatement("select * from event where city = ?");
			ps.setString(1, city);
			ResultSet rs = ps.executeQuery();
			System.out.println("Yes");
			if(rs.next()==true)
			{
				e1.setCity(rs.getString("citys"));
				e1.setStart(rs.getString("startat"));
				e1.setEnd(rs.getString("endat"));
				e1.setName(rs.getString("nameofevent"));
				e1.setFare(rs.getDouble("price"));
			}
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
	return e1;
	}
	
	//////////////////////////////////////////////////
	public int addBusReservation(Reservation r)
	{
		int x=0;
		try 
		{
		PreparedStatement ps = con.prepareStatement("insert into Reservation values(?,?,?,?,?,?)");
		ps.setString(1, r.getUsername());
		ps.setString(2, r.getid());
		ps.setString(3, r.getStart());
		ps.setString(4, r.getEnd());
		ps.setString(5, r.getFare());
		ps.setString(6, r.getType());
		
		x = ps.executeUpdate();
		//System.out.print(x);
		}
		catch (Exception e) 
		{
		
		}
		return x;
	}
	
	public int addTrainReservation(Reservation r)
	{
		int x=0;
		try 
		{
		PreparedStatement ps = con.prepareStatement("insert into Reservation values(?,?,?,?,?,?)");
		ps.setString(1, r.getUsername());
		ps.setString(2, r.getid());
		ps.setString(3, r.getStart());
		ps.setString(4, r.getEnd());
		ps.setString(5, r.getFare());
		ps.setString(6, r.getType());
		
		x = ps.executeUpdate();
		//System.out.print(x);
		}
		catch (Exception e) 
		{
		
		}
		return x;
	}
	
	public int addEventReservation(Reservation r)
	{
		int x=0;
		try 
		{
		PreparedStatement ps = con.prepareStatement("insert into Reservation values(?,?,?,?,?,?)");
		ps.setString(1, r.getCity());
		ps.setString(2, r.getid());
		ps.setString(3, r.getStartat());
		ps.setString(4, r.getEndat());
		ps.setDouble(5, r.getPrice());
		ps.setString(6, r.getType());
		
		x = ps.executeUpdate();
		//System.out.print(x);
		}
		catch (Exception e) 
		{
		
		}
		return x;
	}
	
	public ArrayList getReservation(String username)
	{
		ArrayList al = new ArrayList();
		try 
		{
		PreparedStatement ps = con.prepareStatement("select * from reservation where username = ?");
		ps.setString(1, username);
		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{
			Reservation r = new Reservation();
			r.setUsername(rs.getString("username"));
			r.setBusid(rs.getString("busid"));
			r.setStart(rs.getString("start"));
			r.setEnd(rs.getString("end"));
			r.setFare(rs.getString("fare"));
			r.setType(rs.getString("type"));
			
			al.add(r);
		}
		
		}
		catch (Exception e) 
		{
		
		}
		return al;
	}
	
	public int deleteReservation(String busid)
	{
		int x=0;
		try 
		{
			
			PreparedStatement ps = con.prepareStatement("delete from reservation where busid = ?");
			ps.setString(1,busid);
			System.out.println(busid);
			
			x = ps.executeUpdate();
		}
		catch (Exception e) 
		{
			
		}
	return x;
	}
	
}