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
import java.sql.Statement;
import java.util.UUID;

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
		String password = request.getParameter("password");
		String memberNo = request.getParameter("memberno");
		HttpSession sessionUser = request.getSession(true);
		sessionUser.setAttribute("user",u_username);
		sessionUser.setAttribute("MemberID",memberNo);

try {
	        Statement st;
	        String sql,pass = null;
			String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","Kavindu84");
			st= (Statement) con.createStatement();

		    sql ="select * from Users where memberID= '"+memberNo+"'";
		
		    ResultSet rs = st.executeQuery(sql);
		    while(rs.next()) {
		    	 pass = rs.getString("password");
		    }
	         if(password.equals(pass)) {
	        	 RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
		     	 rd.forward(request,response);
	         }
	         else {
	        	 response.sendRedirect("UserDashboard/html/error-404.jsp");
	         }

	     		
		    
}catch(Exception e) {
	e.printStackTrace();
}


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
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

		    sql ="Insert into Users values ('"+memberID+"','"+name+"','"+(password)+"','"+DOB+"','"+Phone+"','"+email+"','"+add1+"','"+add2+"','"+add2+"','"+add3+"','"+city+"','"+state+"','"+country+"','"+role+"')";

}catch(Exception e) {
	e.printStackTrace();
}
	 
	}
}