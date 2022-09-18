package com.Kavindu;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
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
	    String Return = request.getParameter("To");
	    String passengers = request.getParameter("passengers");
	    String date = request.getParameter("date");
	    database db = new database();
	   
	    db.connectToDB();
	    db.viewFlights(request, response);
	    try {
			db.Flights(request,response);
		} catch (IOException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    HttpSession session = request.getSession(false);
	    
         if(depature.equals(session.getAttribute("depature"))&Return.equals(session.getAttribute("Return"))) {
		  	RequestDispatcher rd = request.getRequestDispatcher("DisplayFlights.jsp");
		  	rd.forward(request, response);
		  	response.sendRedirect("DisplayFlights.jsp");
	    }else {
	    	out.println("Please Check Again");

	    } 

	}
	
	
}
