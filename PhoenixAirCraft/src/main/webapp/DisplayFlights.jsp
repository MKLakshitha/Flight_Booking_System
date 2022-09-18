<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<%@page import="com.Kavindu.*"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">

 	<tr><td>Airline</td><td>Depature</td><td>Return</td><td>Price</td><td>Date and Time</td></tr>
  <%  
  Vector flight = (Vector)request.getAttribute("Flights");
  //Enumeration e = book.elements();


  //Vector book = (Vector)request.getAttribute("books");
  //Enumeration e = book.elements();
  try {
  	        Statement st;
			String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","Kavindu84");
			st= (Statement) con.createStatement();
			String sql ="Select * from Flights";
			
			ResultSet rs = st.executeQuery(sql);
			
	        
	        while(rs.next()){%>
	        	<tr><td><%=rs.getString("Airline") %></td><td><%=rs.getString("Depature") %></td><td><%=rs.getString("Return") %></td><td><%=rs.getString("Price") %></td><td><%=rs.getString("DateTime") %></td></tr>
			<% }
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
      }
    %>


    	  
    
 </table></body>
</html>