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

import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Staff
 */
@WebServlet("/staff")
public class Staff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Staff() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String Airline = request.getParameter("Airline");
		String Depature = request.getParameter("Depature");
		String Destination = request.getParameter("Destination");
		String DateTime = request.getParameter("DateTime");
		String Price = request.getParameter("Price");

try {
	        Statement st;
	        String sql;
			String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","Kavindu84");
			st= (Statement) con.createStatement();
			
			
	
            RequestDispatcher dispatcher=null;
			    
		    sql ="Insert into Flights(Airline,Depature,Destination,DateTime,Price) values('"+Airline+"','"+Depature+"','"+Destination+"','"+DateTime+"','"+Price+"')";
		     int results =st.executeUpdate(sql);
		     if(results==0) {
		    	 request.setAttribute("status", "failed");
		    	 dispatcher = request.getRequestDispatcher("index.jsp");
				 dispatcher.forward(request, response);
		     }else {
		    	   request.setAttribute("status", "success");
		    	   dispatcher = request.getRequestDispatcher("index.jsp");
				  dispatcher.forward(request, response);
		     }

	}catch(Exception e) {
		e.printStackTrace();
	}

}
}
