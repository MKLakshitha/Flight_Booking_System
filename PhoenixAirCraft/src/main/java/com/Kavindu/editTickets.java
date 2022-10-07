package com.Kavindu;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class editTickets
 */
public class editTickets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editTickets() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

try {
	        Statement st;
	        String sql;
			String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","Kavindu84");
			st= (Statement) con.createStatement();
			String Depature = request.getParameter("depature");
			
			String Destination = request.getParameter("destination");
			String DateTime = request.getParameter("DateTime");
			String Class = request.getParameter("Class");
			String seats = request.getParameter("seats");
			String price = request.getParameter("price");

            RequestDispatcher dispatcher=null;
            String id = request.getParameter("id");

            sql= "Update Tickets set Depature=?,Destination=?,DateTime=?,class=?,seats=?,price=? where ticketID='"+id+"'";
		   
		     PreparedStatement ps = con.prepareStatement(sql);
		    
		    ps.setString(1,Depature);
		    ps.setString(2,Destination);
		    ps.setString(3,DateTime);
		    ps.setString(4,Class);
		    ps.setString(5,seats);
		    ps.setString(6,price);
		    int i = ps.executeUpdate();
		    if(i > 0)
		    {
		    	response.sendRedirect( "StaffDashboard(Grade-A)/html/Tickets.jsp");

		    }
		    else
		    {
		      
		    	response.sendRedirect("StaffDashboard(Grade-A)/html/Tickets.jsp");
		    } 
            
		    

	}catch(Exception e) {
		e.printStackTrace();
	}

	}

}
