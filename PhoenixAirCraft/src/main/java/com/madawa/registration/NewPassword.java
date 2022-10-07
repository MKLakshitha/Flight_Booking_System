package com.madawa.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/*

##    ## ######## ##      ##    ########     ###     ######   ######  ##      ##  #######  ########  ########  
###   ## ##       ##  ##  ##    ##     ##   ## ##   ##    ## ##    ## ##  ##  ## ##     ## ##     ## ##     ## 
####  ## ##       ##  ##  ##    ##     ##  ##   ##  ##       ##       ##  ##  ## ##     ## ##     ## ##     ## 
## ## ## ######   ##  ##  ##    ########  ##     ##  ######   ######  ##  ##  ## ##     ## ########  ##     ## 
##  #### ##       ##  ##  ##    ##        #########       ##       ## ##  ##  ## ##     ## ##   ##   ##     ## 
##   ### ##       ##  ##  ##    ##        ##     ## ##    ## ##    ## ##  ##  ## ##     ## ##    ##  ##     ## 
##    ## ########  ###  ###     ##        ##     ##  ######   ######   ###  ###   #######  ##     ## ########  

*/


/*
 * 
 * NEW PASSWORD WILL BE UPDATED IN THE DATABASE
 * 
 * */
@WebServlet("/newPassword")
public class NewPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String newPassword = request.getParameter("password");
		String confPassword = request.getParameter("confPassword");
		RequestDispatcher dispatcher = null;
		if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {

			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/system_users?useSSL=false", "root", "N0t_root");
				PreparedStatement pst = con.prepareStatement("update client set psswd = ? where nic = ? ");
				pst.setString(1, newPassword);
				pst.setString(2, (String) session.getAttribute("nic"));

				int rowCount = pst.executeUpdate();
				if (rowCount > 0) {
					request.setAttribute("status", "resetSuccess");
					dispatcher = request.getRequestDispatcher("login.jsp");
				} else {
					request.setAttribute("status", "resetFailed");
					dispatcher = request.getRequestDispatcher("login.jsp");
				}
				dispatcher.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
