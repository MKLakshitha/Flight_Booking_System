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
 * Servlet implementation class EditFlights
 */
public class EditFlights extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditFlights() {
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
			String Price = request.getParameter("Price");

            RequestDispatcher dispatcher=null;
            String id = request.getParameter("id");

            sql= "Update Flights set Airline=?,Depature=?,Destination=?,Price=?,DateTime=? where id='"+id+"'";
		   
		     PreparedStatement ps = con.prepareStatement(sql);
		    
		    ps.setString(1,Airline);
		    ps.setString(2,Depature);
		    ps.setString(3,Destination);
		    ps.setString(4,Price);
		    ps.setString(5,DateTime);
		    int i = ps.executeUpdate();
		    if(i > 0)
		    {
		    	
			    	 response.sendRedirect( "StaffDashboard(Grade-A)/html/StaffDashboard.jsp");
			     
			   
		    }
		    else
		    {
		      request.setAttribute("error","Invalid Updation Please Check Again!");
			     RequestDispatcher rd = request.getRequestDispatcher("UserDashboard/html/pages-profile.jsp");
			     rd.forward(request,response);
		    } 
            
		    

	}catch(Exception e) {
		e.printStackTrace();
	}


	

	}


}
