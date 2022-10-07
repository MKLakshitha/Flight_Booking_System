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
import java.sql.Statement;

/**
 * Servlet implementation class editBookings
 */
@WebServlet("/editBokking")
public class editBookings extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editBookings() {
        super();
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

try {
	        Statement st;
	        String sql;
			String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","Kavindu84");
			st= (Statement) con.createStatement();
			String Airline = request.getParameter("Airline");
			
			String Depature = request.getParameter("Depature");
			String Destination = request.getParameter("Destination");
			String DateTime = request.getParameter("DateTime");
			String Passengers = request.getParameter("Passengers");
			String Total = request.getParameter("Total");

            RequestDispatcher dispatcher=null;
            String id = request.getParameter("id");

            sql= "Update UserBookings set Airline=?,Depature=?,Destination=?,Passengers=?,DateTime=?,Total=? where MemberID='"+id+"'";
		   
		     PreparedStatement ps = con.prepareStatement(sql);
		    
		    ps.setString(1,Airline);
		    ps.setString(2,Depature);
		    ps.setString(3,Destination);
		    ps.setString(4,Passengers);
		    ps.setString(5,DateTime);
		    ps.setString(6,Total);
		    int i = ps.executeUpdate();
		    if(i > 0)
		    {
		    	response.sendRedirect("StaffDashboard(Grade-A)/html/StaffBooking.jsp");
		    }
		    else
		    {
		      
		    	response.sendRedirect("StaffDashboard(Grade-A)/html/StaffBooking.jsp");
		    } 
            
		    

	}catch(Exception e) {
		e.printStackTrace();
	}

	}

}
