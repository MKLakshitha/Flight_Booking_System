package com.madawa.registration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/* Data from the Login.jsp will be validated here */
/*
   ###    ########  ##     ## #### ##    ##    ##        #######   ######   #### ##    ## 
  ## ##   ##     ## ###   ###  ##  ###   ##    ##       ##     ## ##    ##   ##  ###   ## 
 ##   ##  ##     ## #### ####  ##  ####  ##    ##       ##     ## ##         ##  ####  ## 
##     ## ##     ## ## ### ##  ##  ## ## ##    ##       ##     ## ##   ####  ##  ## ## ## 
######### ##     ## ##     ##  ##  ##  ####    ##       ##     ## ##    ##   ##  ##  #### 
##     ## ##     ## ##     ##  ##  ##   ###    ##       ##     ## ##    ##   ##  ##   ### 
##     ## ########  ##     ## #### ##    ##    ########  #######   ######   #### ##    ##                                                            
*/


/*
 * This java class validates the administrator credentials and redirects to the Admin dashboard.
 */
@WebServlet("/login_staff_admin")
public class Admin_Staff_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* NIC is the primary key and will be used as the login attribute */
		String u_username = request.getParameter("username");
		String u_psswd = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/system_users?useSSL=false", "root", "N0t_root");
			PreparedStatement pst = con.prepareStatement("");
			pst.setString(1, u_username);
			pst.setString(2, u_psswd);
			
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				session.setAttribute("name", rs.getString("nic"));
				dispatcher = request.getRequestDispatcher("index.jsp");
			}
			else {
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("login.jsp");
			}
			dispatcher.forward(request, response);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}	
}
