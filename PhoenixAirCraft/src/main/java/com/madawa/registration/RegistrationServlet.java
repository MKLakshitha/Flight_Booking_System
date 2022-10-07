package com.madawa.registration;

import jakarta.servlet.RequestDispatcher;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.UUID;

import jakarta.servlet.http.HttpSession;

/*
##     ##  ######  ######## ########     ########  ########  ######   ####  ######  ######## ########     ###    ######## ####  #######  ##    ## 
##     ## ##    ## ##       ##     ##    ##     ## ##       ##    ##   ##  ##    ##    ##    ##     ##   ## ##      ##     ##  ##     ## ###   ## 
##     ## ##       ##       ##     ##    ##     ## ##       ##         ##  ##          ##    ##     ##  ##   ##     ##     ##  ##     ## ####  ## 
##     ##  ######  ######   ########     ########  ######   ##   ####  ##   ######     ##    ########  ##     ##    ##     ##  ##     ## ## ## ## 
##     ##       ## ##       ##   ##      ##   ##   ##       ##    ##   ##        ##    ##    ##   ##   #########    ##     ##  ##     ## ##  #### 
##     ## ##    ## ##       ##    ##     ##    ##  ##       ##    ##   ##  ##    ##    ##    ##    ##  ##     ##    ##     ##  ##     ## ##   ### 
 #######   ######  ######## ##     ##    ##     ## ########  ######   ####  ######     ##    ##     ## ##     ##    ##    ####  #######  ##    ## 
*/
/*
 * 
 * Only users can Log here
 * 
 */


@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*Values will be fetched from the registration form*/
		
		// Update the required fields if necessary (madawa 20.09.22)
		String name = request.getParameter("name");
		String DOB = request.getParameter("dob");
		String Phone = request.getParameter("phone");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String add1 = request.getParameter("add1");
		String add2 = request.getParameter("add2");
		String add3 = request.getParameter("add3");
		String city = request.getParameter("city");
		String state = request.getParameter("State");
		String country = request.getParameter("country");
	   	String role = request.getParameter("role");
	   	
	   	UUID memberID = UUID.randomUUID();


try {
	        Statement st;
	        String sql;
			String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","Kavindu84");
			st= (Statement) con.createStatement();
			String encrypt ="";
             char [] chars = password.toCharArray();
             for (char c : chars) {
            	 c+=3;
            	 encrypt+=c;
             }
             HttpSession encryption = request.getSession(true);
             encryption.setAttribute("encrypt",encrypt);
             
		    sql ="Insert into Users(memberID,name,password,dob,phone,email,add1,add2,add3,city,state,country,role,status) values ('"+memberID+"','"+name+"','"+encrypt+"','"+DOB+"','"+Phone+"','"+email+"','"+add1+"','"+add2+"','"+add3+"','"+city+"','"+state+"','"+country+"','"+role+"','pending')";
			
		    st.executeUpdate(sql);
}catch(Exception e) {
	e.printStackTrace();
}
  RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
  rd.forward(request,response);
	   	
		/*if (name == null || name.equals("")) {
			request.setAttribute("status", "invalidNIC");
			dispatcher = request.getRequestDispatcher("Register.jsp");
			dispatcher.forward(request, response);
		}
		if (u_fName == null || u_fName.equals("")) {
			request.setAttribute("status", "invalidfName");
			dispatcher = request.getRequestDispatcher("Register.jsp");
			dispatcher.forward(request, response);
		}
		if (u_lName == null || u_lName.equals("")) {
			request.setAttribute("status", "invalidlName");
			dispatcher = request.getRequestDispatcher("Register.jsp");
			dispatcher.forward(request, response);
		}
		if (u_psswd == null || u_psswd.equals("")) {
			request.setAttribute("status", "invalidPsswd");
			dispatcher = request.getRequestDispatcher("Register.jsp");
			dispatcher.forward(request, response);
		}else if (!u_psswd.equals(re_psswd)){
			request.setAttribute("status", "invalidRePsswd");
			dispatcher = request.getRequestDispatcher("Register.jsp");
			dispatcher.forward(request, response);
		}
		if (u_email == null || u_email.equals("")) {
			request.setAttribute("status", "invalidEmail");
			dispatcher = request.getRequestDispatcher("Register.jsp");
			dispatcher.forward(request, response);
		}
		if (u_mobile == null || u_mobile.equals("")) {
			request.setAttribute("status", "invalidMobile");
			dispatcher = request.getRequestDispatcher("Register.jsp");
			dispatcher.forward(request, response);
		}
		else if(!(u_mobile.length()==10)) {
			request.setAttribute("status", "invalidMobileLength");
			dispatcher = request.getRequestDispatcher("Register.jsp");
			dispatcher.forward(request, response);
		}
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/system_users?useSSL=false", "root", "N0t_root");
			PreparedStatement pst = con.prepareStatement("Insert into client(nic,psswd,first_name,last_name,email,mobile) values (?,?,?,?,?,?)");
			pst.setString(1,name);
			pst.setString(2, u_psswd);
			pst.setString(3, u_fName);
			pst.setString(4, u_lName);
			pst.setString(5, u_email);
			pst.setString(6, u_mobile);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			if(rowCount > 0) {
				request.setAttribute("status", "success");	
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
		}*/
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String name = request.getParameter("name");
	String password = request.getParameter("password");

	String email = request.getParameter("email");

	String phone = request.getParameter("phone");
	String dob = request.getParameter("dob");
	String country = request.getParameter("country");
	HttpSession sessionUser = (HttpSession) request.getSession(false);
	
	

	try {
        Statement st;
        String sql;
		String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,"root","Kavindu84");
		st= (Statement) con.createStatement();
	    PreparedStatement ps =null;
	    sql= "Update Users set name=?,password=?,email=?,phone=?,dob=?,country=? where memberID='"+sessionUser.getAttribute("MemberID")+"'";
	    ps = con.prepareStatement(sql);
	    ps.setString(1,name);
	    ps.setString(2, password);
	    ps.setString(3, email);
	    ps.setString(4, phone);
	    ps.setString(5, dob);
	    ps.setString(6, country);
	    int i = ps.executeUpdate();
	    if(i > 0)
	    {
	    	response.sendRedirect("UserDashboard/html/pages-profile.jsp");
	    }
	    else
	    {
	      request.setAttribute("error","Invalid Updation Please Check Again!");
		     RequestDispatcher rd = request.getRequestDispatcher("UserDashboard/html/pages-profile.jsp");
		     rd.forward(request,response);
	    } 
	}
	catch(Exception e) {
      e.printStackTrace();
	}
	}
}

