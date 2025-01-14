<%@page import="com.dto.Bus"%>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<font color="blue" size="3">
</font>
<table border="1">
<tr>
<th>S.No.</th>
<th>Product Id</th>
<th>Price</th>
</tr>
<%
//ArrayList tv =(ArrayList) session.getAttribute("tvlist");
//ArrayList ac =(ArrayList) session.getAttribute("aclist");

ArrayList al = (ArrayList)session.getAttribute("bookings");
if(al!=null)
{
	for(int i=0; i<al.size(); i++)
	{
	Bus b = (Bus)al.get(i);
	%>
	<tr>
		<td><%= i+1 %></td>
		<td><%= b.getName() %></td>
        <td><%= b.getStart() %></td>
        <td><%= b.getEnd() %></td>
        <td><%= b.getTime() %></td>
        <td>
	</tr>
	<%
		
	}
}
%>
</table>
<br><br><br>
<a href="itemindex.jsp"><input type="button" value="Back To Index Page"></a><br><br>

</body>
</html>