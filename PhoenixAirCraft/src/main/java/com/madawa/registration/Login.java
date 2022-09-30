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
######   ##      #### ######## ##    ## ########    ##        #######   ######   #### ##    ## 
##    ## ##       ##  ##       ###   ##    ##       ##       ##     ## ##    ##   ##  ###   ## 
##       ##       ##  ##       ####  ##    ##       ##       ##     ## ##         ##  ####  ## 
##       ##       ##  ######   ## ## ##    ##       ##       ##     ## ##   ####  ##  ## ## ## 
##       ##       ##  ##       ##  ####    ##       ##       ##     ## ##    ##   ##  ##  #### 
##    ## ##       ##  ##       ##   ###    ##       ##       ##     ## ##    ##   ##  ##   ### 
######   ####### #### ######## ##    ##    ##       ########  #######   ######   #### ##    ## 
*/                                                            

@WebServlet("/client_login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* NIC is the primary key and will be used as the login attribute */
		String u_username = request.getParameter("user");
		String u_psswd = request.getParameter("password");
		String memberNo = request.getParameter("memberno");
		
		RequestDispatcher dispatcher = null;
		response.sendRedirect("index.jsp");
		HttpSession sessionUser = request.getSession(true);
		sessionUser.setAttribute("user",u_username);
		sessionUser.setAttribute("MemberID",memberNo);
		/*
		 * 
		 * SERVER SIDE VALIDATION
		 * 
		 * */
		
		/*if (u_username == null || u_username.equals("")) {
			request.setAttribute("status", "invalidUsn");
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		if (u_psswd == null || u_psswd.equals("")) {
			request.setAttribute("status", "invalidPsswd");
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		if (memberNo == null || u_psswd.equals("")) {
			request.setAttribute("status", "invalidMemberNo");
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}

		/*
		 * VALIDATION ENDS HERE
		 * */
		/*try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/system_users?useSSL=false", "root", "N0t_root");
			PreparedStatement pst = con.prepareStatement("select * from client where nic = ? and psswd = ?");
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
		}*/
	}	
}