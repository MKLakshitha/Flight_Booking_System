package com.madawa.registration;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/*
########  #######  ########   ######    #######  ########    ########     ###     ######   ######  ##      ##  #######  ########  ########  
##       ##     ## ##     ## ##    ##  ##     ##    ##       ##     ##   ## ##   ##    ## ##    ## ##  ##  ## ##     ## ##     ## ##     ## 
##       ##     ## ##     ## ##        ##     ##    ##       ##     ##  ##   ##  ##       ##       ##  ##  ## ##     ## ##     ## ##     ## 
######   ##     ## ########  ##   #### ##     ##    ##       ########  ##     ##  ######   ######  ##  ##  ## ##     ## ########  ##     ## 
##       ##     ## ##   ##   ##    ##  ##     ##    ##       ##        #########       ##       ## ##  ##  ## ##     ## ##   ##   ##     ## 
##       ##     ## ##    ##  ##    ##  ##     ##    ##       ##        ##     ## ##    ## ##    ## ##  ##  ## ##     ## ##    ##  ##     ## 
##        #######  ##     ##  ######    #######     ##       ##        ##     ##  ######   ######   ###  ###   #######  ##     ## ########  

*/
/*
 *This java class sends the OTP to the owner through smtp.
 * 
 */
@WebServlet("/forgotPassword")
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String nic = request.getParameter("nic");
		RequestDispatcher dispatcher = null;
		int otpvalue = 0;
		HttpSession mySession = request.getSession();
		
//		if(email!=null || !email.equals("")) {
//			Random rand = new Random();
//			otpvalue = rand.nextInt(1255650);
//			String to = email;
//			Properties props = new Properties();
//			props.put("mail.smtp.host", "smtp.google.com");
//			props.put("mail.smtp.socketFactory.port", "465");
//			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
//			props.put("mail.smtp.auth", "true");
//			props.put("mail.smtp.port", "465");
//			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
//				protected PasswordAuthentication getPasswordAuthentication() {
//					// PROVIDE A VALID G-MAIL AND ITS PASSWORD
//					// MINE DOESN'T WORK
//					return new PasswordAuthentication("kavindulakshitha84@gmail.com", "oozjgovuwfkohbsi");
//				}
//			});
//			try {
//				MimeMessage message = new MimeMessage(session);
//				message.setFrom(new InternetAddress(email));
//				message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
//				message.setSubject("One Time Password");
//				message.setText("your OTP is: " + otpvalue);
//				Transport.send(message);
//				System.out.println("message sent successfully"+otpvalue);
//			}catch (MessagingException e) {
//				System.out.println("message sent successfully"+otpvalue);
//				throw new RuntimeException(e);
//			}
			
// 			Just for the demonstration purposes. ---Avoids the mail scenario---
			Random rand = new Random();
			otpvalue = rand.nextInt(1255650);
			System.out.println("message sent successfully"+otpvalue);

			dispatcher = request.getRequestDispatcher("EnterOtp.jsp");
			request.setAttribute("message","OTP is sent to your email id");
			mySession.setAttribute("nic", nic);
			mySession.setAttribute("otp",otpvalue); 
			mySession.setAttribute("email",email); 
			dispatcher.forward(request, response);
		}
	}
