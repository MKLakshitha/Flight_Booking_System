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
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class ApproveStaff
 */
@WebServlet("/approve")
public class ApproveStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApproveStaff() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

try {
	        Statement st;
	        String sql,pass = null;
			String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","Kavindu84");
			st= (Statement) con.createStatement();
            String MemberID= request.getParameter("id");
		    sql ="select * from Users where memberID= '"+MemberID+"'";
		    RequestDispatcher dispatcher = null;
		    ResultSet rs = st.executeQuery(sql);
		    String query="Update Users set status='Approved' where memberID='"+MemberID+"'";
		    st.executeUpdate(query);
		   response.sendRedirect("adminDashboard/html/StaffApproved.jsp");

	     		
		    
}catch(Exception e) {
	e.printStackTrace();
}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
