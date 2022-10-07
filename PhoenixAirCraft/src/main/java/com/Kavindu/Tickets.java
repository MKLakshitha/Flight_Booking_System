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
 * Servlet implementation class Tickets
 */
@WebServlet("/newTicket")
public class Tickets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Tickets() {
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
			
			

       String TicketID = request.getParameter("ticketID");
		String Depature = request.getParameter("Depature");
		String Destination = request.getParameter("Destination");
		String DateTime = request.getParameter("DateTime");
		String Class = request.getParameter("Class");
		String Seats = request.getParameter("Seats");
		String Price = request.getParameter("Price");

		RequestDispatcher dispatcher=null;
	    
	    sql ="Insert into Tickets(ticketID,Depature,Destination,DateTime,class,seats,price) values('"+TicketID+"','"+Depature+"','"+Destination+"','"+DateTime+"','"+Class+"','"+Seats+"','"+Price+"')";
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
