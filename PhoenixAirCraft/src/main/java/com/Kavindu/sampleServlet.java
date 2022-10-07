package com.Kavindu;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

/**
 * Servlet implementation class sampleServlet
 */
@WebServlet("/sample")
public class sampleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		int Passengers = Integer.parseInt(request.getParameter("passengers"));
	    HttpSession sessionID = request.getSession(true);
	    sessionID.setAttribute("id",id);
	    sessionID.setAttribute("passengers",Passengers);
	    RequestDispatcher rd = request.getRequestDispatcher("BookTicket.jsp");
	    rd.forward(request,response);
		
	 }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	    RequestDispatcher rd = request.getRequestDispatcher("PayTicket.jsp");
	    rd.forward(request,response);
	}

	
	}


