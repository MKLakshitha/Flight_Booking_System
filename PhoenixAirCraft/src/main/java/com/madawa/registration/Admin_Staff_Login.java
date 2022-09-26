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

*Staff can login too :D
*
*/


/*
 * This java class validates the administrator credentials and redirects to the Admin dashboard.
 */

@WebServlet("/staff_admin_login")
public class Admin_Staff_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* NIC is the primary key and will be used as the login attribute */
		String u_username = request.getParameter("username");
		String u_psswd = request.getParameter("password");
		
		/*
		 * 
		 * We get a small ref kind of code in order to identify the type of user
		 * 
		 * */
		
		String ref_code = request.getParameter("ref_code");
		/*
		 * Yes it's Hardcoded :3
		 * For admins ---> ref_code=="wuoeh243fg"
		 * For grade 1 staff ---> ref_code=="oias13sc"
		 * For grade 2 staff ---> ref_code=="kv9sad"
		 * 
		 * */

		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		if(ref_code == "wuoeh243fg") {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/system_users?useSSL=false", "root", "N0t_root");
				// Create a table for ADMIN
				PreparedStatement pst = con.prepareStatement("select * from admin where nic = ? and psswd = ?");
				pst.setString(1, u_username);
				pst.setString(2, u_psswd);
				
				ResultSet rs = pst.executeQuery();
				if(rs.next()) {
					session.setAttribute("name", rs.getString("nic"));
					/*
					 * FORWARD TO ADMIN DASHBOARD
					 * */
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
		else if(ref_code=="oias13sc") {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/system_users?useSSL=false", "root", "N0t_root");
				// Create a table for GRADE 1 staff
				PreparedStatement pst = con.prepareStatement("select * from grade_1_staff where nic = ? and psswd = ?");
				pst.setString(1, u_username);
				pst.setString(2, u_psswd);
				
				ResultSet rs = pst.executeQuery();
				if(rs.next()) {
					session.setAttribute("name", rs.getString("nic"));
					/*
					 * FORWARD TO GRADE 1 Dash board
					 */
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
		else {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/system_users?useSSL=false", "root", "N0t_root");
				// Create a table for GRADE 2 staff
				PreparedStatement pst = con.prepareStatement("select * from grade_2_staff where nic = ? and psswd = ?\"");
				pst.setString(1, u_username);
				pst.setString(2, u_psswd);
				
				ResultSet rs = pst.executeQuery();
				if(rs.next()) {
					session.setAttribute("name", rs.getString("nic"));
					/*
					 * Forward to Grade 2 dashboard
					 */
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
}
