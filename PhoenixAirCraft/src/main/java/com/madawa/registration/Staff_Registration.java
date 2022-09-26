package com.madawa.registration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/*

 ######  ########    ###    ######## ########    ########  ########  ######   ####  ######  ######## ########     ###    ######## ####  #######  ##    ## 
##    ##    ##      ## ##   ##       ##          ##     ## ##       ##    ##   ##  ##    ##    ##    ##     ##   ## ##      ##     ##  ##     ## ###   ## 
##          ##     ##   ##  ##       ##          ##     ## ##       ##         ##  ##          ##    ##     ##  ##   ##     ##     ##  ##     ## ####  ## 
 ######     ##    ##     ## ######   ######      ########  ######   ##   ####  ##   ######     ##    ########  ##     ##    ##     ##  ##     ## ## ## ## 
      ##    ##    ######### ##       ##          ##   ##   ##       ##    ##   ##        ##    ##    ##   ##   #########    ##     ##  ##     ## ##  #### 
##    ##    ##    ##     ## ##       ##          ##    ##  ##       ##    ##   ##  ##    ##    ##    ##    ##  ##     ##    ##     ##  ##     ## ##   ### 
 ######     ##    ##     ## ##       ##          ##     ## ########  ######   ####  ######     ##    ##     ## ##     ##    ##    ####  #######  ##    ## 

*/
/*
 * 
 * STAFF REGISTRATION VALIDATION HAPPENS HERE
 * 
 * 
 */

@WebServlet("/register_staff")
public class Staff_Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*Values will be fetched from the registration form*/
		
		// Update the required fields if necessary (madawa 20.09.22)
		String u_nic = request.getParameter("nic");
		String u_fName = request.getParameter("fname");
		String u_lName = request.getParameter("lname");
		String u_psswd = request.getParameter("pass");
		String u_email = request.getParameter("email");
		String u_mobile = request.getParameter("contact");
		String u_ref = request.getParameter("ref");
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		/*
		 * 
		 * A reference code will be provided to each staff member. Depending on the code data will be redirected to the relevant database
		 * 
		 * */
		
		try {
			/*
			 * <<<staff_temp database>>>
			 * This is visible to the admin and he will direct to the main database
			 * To the grade_1_staff database
			 * */
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/system_users?useSSL=false", "root", "N0t_root");
			PreparedStatement pst = con.prepareStatement("Insert into staff_temp(nic,psswd,first_name,last_name,email,mobile,ref_code) values (?,?,?,?,?,?,?)");
			pst.setString(1,u_nic);
			pst.setString(2, u_psswd);
			pst.setString(3, u_fName);
			pst.setString(4, u_lName);
			pst.setString(5, u_email);
			pst.setString(6, u_mobile);
			pst.setString(7, u_ref);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("reg_staff.jsp");
			if(rowCount > 0) {
				request.setAttribute("status", "successful");	
			}
			else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
			} catch(Exception e) {
				e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
