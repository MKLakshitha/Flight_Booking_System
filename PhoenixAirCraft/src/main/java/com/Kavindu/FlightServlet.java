package com.Kavindu;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

/**
 * Servlet implementation class J2EE
 */
@WebServlet("/FlightServlet")
public class FlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public FlightServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			    
	   
	}
     
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	    PrintWriter out = response.getWriter();
	    String depature = request.getParameter("From");
	    String Destination = request.getParameter("To");
	    String passengers = request.getParameter("passengers");
	    String date = request.getParameter("date");
	    database db = new database();
	    HttpSession session =request.getSession(true);
        session.setAttribute("depature",depature);
        session.setAttribute("Destination",Destination);
        Statement st = null;
        String sql;
		String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		Connection con = null;
		try {
			con = DriverManager.getConnection(url,"root","Kavindu84");
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			st= (Statement) con.createStatement();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		    
	    sql ="Select * from Flights where Depature='"+depature+"' AND Destination='"+Destination+"'";
	    ResultSet rs=null;;
		try {
			rs = st.executeQuery(sql);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try {
			rs = st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
		try {
	   		  String dep=null,des=null;
			while(rs.next()) {
				   dep = rs.getString("Depature"); 
				   des = rs.getString("Destination"); 
				  
			      
				  
			  }
			if(depature.equals(dep)&Destination.equals(des)) {
			  	RequestDispatcher rd = request.getRequestDispatcher("DisplayFlights.jsp");
			  	rd.forward(request, response);
			 
		    }else {
		    	 response.sendRedirect("error.jsp");

		    } 
				  
			  
		} catch (SQLException | ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   


	}
	
	
}
