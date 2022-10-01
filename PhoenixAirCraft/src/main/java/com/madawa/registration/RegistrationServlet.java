package com.madawa.registration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
 * DATA PROVIDED BY THE USER WILL BE VALIDATAED HERE
 * 
 */


@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*Values will be fetched from the registration form*/
		// Update the required fields if necessary (madawa 20.09.22)

		String u_nic = request.getParameter("nic");
		String u_fName = request.getParameter("fname");
		String u_lName = request.getParameter("lname");
		String u_psswd = request.getParameter("pass");
		String re_psswd = request.getParameter("re_pass");
		String u_email = request.getParameter("email");
		String u_mobile = request.getParameter("contact");
		RequestDispatcher dispatcher = null;
		Connection con = null;

		/*Username Generator*/


		/*
		
			A RANDOM USERNAME WILL BE GENERATED HERE
			AND WILL BE SENT TO THE USER EMAIL
			IT MUST BE FORWARDED TO THE DATABASE
			DATA WILL BE VALIDATED AND REQUIRED ACTOINS WILL BE TAKEN BY THE JAVA CLASS
			!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		
		 */
        Random generator = new Random();
        int randomNumber = generator.nextInt(999) + 999;
        String username = u_fName.charAt(0) + u_lName + randomNumber;

		String to = u_email;
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.google.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				// PROVIDE A VALID G-MAIL AND ITS APP PASSWORD
				// MINE DOESN'T WORK
				return new PasswordAuthentication("", "");
			}
		});
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(u_email));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject("Enter the following credentials for the login");
			message.setText("Login Username:"+ username);
			Transport.send(message);
			System.out.println("message sent successfully");
		}catch (MessagingException e) {
			System.out.println("message sent successfully");
			throw new RuntimeException(e);
		}


		// VALIDATION OF THE INSERTED DATA	
		if (u_nic == null || u_nic.equals("")) {
			request.setAttribute("status", "invalidNIC");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if (u_fName == null || u_fName.equals("")) {
			request.setAttribute("status", "invalidfName");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if (u_lName == null || u_lName.equals("")) {
			request.setAttribute("status", "invalidlName");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if (u_psswd == null || u_psswd.equals("")) {
			request.setAttribute("status", "invalidPsswd");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}else if (!u_psswd.equals(re_psswd)){
			request.setAttribute("status", "invalidRePsswd");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if (u_email == null || u_email.equals("")) {
			request.setAttribute("status", "invalidEmail");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if (u_mobile == null || u_mobile.equals("")) {
			request.setAttribute("status", "invalidMobile");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		else if(!(u_mobile.length()==10)) {
			request.setAttribute("status", "invalidMobileLength");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/system_users?useSSL=false", "", "");
			PreparedStatement pst = con.prepareStatement("Insert into client(nic,psswd,first_name,last_name,email,mobile) values (?,?,?,?,?,?)");
			
		/*
		
				TODO!!!
		
		 */
			
			pst.setString(1,u_nic);
			pst.setString(2, u_psswd);
			pst.setString(3, u_fName);
			pst.setString(4, u_lName);
			pst.setString(5, u_email);
			pst.setString(6, u_mobile);

			/*
				username must be added to the database as the PK
			 */
			
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
		}
	}

}
