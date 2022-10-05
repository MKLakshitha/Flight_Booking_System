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
import java.sql.Statement;

/**
 * Servlet implementation class addUsers
 */
public class addUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addUsers() {
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
		String MemberID = request.getParameter("MemberID");
		String name = request.getParameter("name");
		String dob = request.getParameter("dob");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String country = request.getParameter("country");
		String role = request.getParameter("role");

try {
	        Statement st;
	        String sql;
			String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","Kavindu84");
			st= (Statement) con.createStatement();
			
			
	
            RequestDispatcher dispatcher=null;
			    
		    sql ="Insert into Users(memberID,name,dob,phone,email,add1,country,role) values('"+MemberID+"','"+name+"','"+dob+"','"+phone+"','"+email+"','"+address+"','"+country+"','"+role+"')";
		     int results =st.executeUpdate(sql);
		    if(results==0) {
		    	 request.setAttribute("status", "failed");
		    	 dispatcher = request.getRequestDispatcher("index.jsp");
				 
		     }else {
		    	   request.setAttribute("status", "AddBooking");
		    	   dispatcher = request.getRequestDispatcher("index.jsp");
		     }
		     dispatcher.forward(request, response);

	}catch(Exception e) {
		e.printStackTrace();
	}

	}

}
