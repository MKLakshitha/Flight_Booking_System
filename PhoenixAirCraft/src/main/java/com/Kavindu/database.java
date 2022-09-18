package com.Kavindu;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;


import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class database {
public java.sql.Statement st;
	
	public void connectToDB(){
		try {
			String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","Kavindu84");
			st=  con.createStatement();
			 
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
        }
	}
	public void Flights(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
		// TODO Auto-generated method stub
		
		
		try {
			connectToDB();
			String sql="Select * from flights";
			ResultSet rs = st.executeQuery(sql);
			String depature = null,Return = null,DateTime = null;
			
			while(rs.next()){
            depature =rs.getString(3);
            Return = rs.getString(4);
            DateTime = rs.getString(6);
            
			}
			 HttpSession session =request.getSession();
	            session.setAttribute("depature",depature);
	            session.setAttribute("Return",Return);
	            session.setAttribute("DateTime",DateTime);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	

	public Vector<String> viewFlights(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		connectToDB();
		String sql="Select * from flights";
		Vector<String> flightlist = new Vector<String>();
		try {
			ResultSet rs = st.executeQuery(sql);
			
		    flightlist.add(rs.getString("Airline"));
			flightlist.add(rs.getString("Depature"));
			flightlist.add(rs.getString("Return"));
			flightlist.add(rs.getString("Price"));
			flightlist.add(rs.getString("DateTime"));
			
           
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return flightlist;
	}
	

}
