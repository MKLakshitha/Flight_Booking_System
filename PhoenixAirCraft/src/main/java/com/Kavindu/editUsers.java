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
 * Servlet implementation class editUsers
 */
public class editUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editUsers() {
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
			String name = request.getParameter("name");
			
			String dob = request.getParameter("dob");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			String country = request.getParameter("country");

            RequestDispatcher dispatcher=null;
            String id = request.getParameter("id");

            sql= "Update Users set name=?,dob=?,phone=?,email=?,add1=?,country=? where memberID='"+id+"'";
		   
		     PreparedStatement ps = con.prepareStatement(sql);
		    
		    ps.setString(1,name);
		    ps.setString(2,dob);
		    ps.setString(3,phone);
		    ps.setString(4,email);
		    ps.setString(5,address);
		    ps.setString(6,country);
		    int i = ps.executeUpdate();
		    if(i > 0)
		    {
		    	response.sendRedirect( "StaffDashboard(Grade-A)/html/Users.jsp");
		    }
		    else
		    {
		      
		    	response.sendRedirect("StaffDashboard(Grade-A)/html/Users.jsp");
		    } 
            
		    

	}catch(Exception e) {
		e.printStackTrace();
	}

	}

}
