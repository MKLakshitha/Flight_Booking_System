<!DOCTYPE html>
<html lang="en">
        <%@page import="java.sql.*" %>
<%@page import="com.Kavindu.*"%>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
<!-- help me -->
  <title>Phoenix Airline</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <script src="https://kit.fontawesome.com/83325a7e2a.js" crossorigin="anonymous"></script>
  <!-- Favicons -->
  <link href="assets/img/Phoenix.svg" rel="icon">
  <link href="assets/img/Phoenix.svg" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="assets/Template-CreditCardPayment/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/Template-CreditCardPayment/font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="assets/Template-CreditCardPayment/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="assets/Template-CreditCardPayment/bootstrap/js/bootstrap.min.js"></script>

</head>

<body style="color:black;">

  <!-- ======= Header ======= -->
   <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
       
      <a href="index.html" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
       <img src="assets/img/Phoenix.svg" alt=""> 
        <h1>Phoenix Airline</h1>
      </a>
      <%!String role; %>
    <%


    HttpSession sessionUser = request.getSession(false);
    String user= sessionUser.getAttribute("user").toString();
  

try {
	        Statement st;
	        String sql;
			String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","Kavindu84");
			st= (Statement) con.createStatement();

		    sql ="select * from Users where memberID='"+sessionUser.getAttribute("MemberID")+"'";
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
			
			if(rs.getString("role").equals("User")){
				role="UserDashboard/html/UserDashboard.jsp";
			}
			else if(rs.getString("role").equals("Staff")){
				role="StaffDashboard/html/StaffDashboard.jsp";
			}
			else if(rs.getString("role").equals("Staff(A)")){
				role="StaffDashboard(Grade-A)/html/StaffDashboard.jsp";

			}
			else if(rs.getString("role").equals("admin")){
				role="adminDashboard/html/adminDashboard.jsp";
			}
    %>
      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="index.jsp" class="active">Home</a></li>
          <li><a href="Flights.jsp">Flight</a></li>
       
          <li><a href=<%=role %>>Dashboard</a></li>
          <li class="dropdown"><a href="about.jsp"><span>About Us</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
				<li><a href="index.jsp">Phoenix Airline</a></li>
              <li><a href="pricing.jsp">Offers</a></li>
              <li><a href="services.jsp">Services</a></li>       
              <li><a href="contact.jsp">Contact Us</a></li>  
              <li><a  href="get-a-quote.jsp">Get a Quote</a></li>

            </ul>
          </li>
          <%
			
			}
}catch(Exception e) {
	e.printStackTrace();
 }
	 


          %>
         
               <li class="dropdown" style="margin-top:17px;"> <a href="myAccount.jsp"><span>Hi,<%=user %></span><img  src="assets/img/icons8-male-user-50.png" alt="" style="visibility:visible; width:35px;height:35px; margin-left:5px;  color:blue;"><i class="bi bi-chevron-down dropdown-indicator"></i></a>
               <a href="#"> </a>
                           <ul>
				<li><a href="UserDashboard/html/pages-profile.jsp">Manage Account</a></li>
              <li><a href="login.jsp">Log Out</a></li>
            

            </ul>
               
               </li>
				


        </ul>
      </nav><!-- .navbar -->

    </div>
  </header>
  <!-- End Header -->

  <!-- ======= Hero Section ======= -->
 <!-- End Hero Section -->

   <!-- ======= Hero Section ======= -->
  <section id="hero"  style="background-image :url(assets/img/world.webp);  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  ">


<div class="container" style="background-color: #fff; border-radius:15px; height:620px; width:2700px;  align-items:center; margin-top:60px;">
	<div class="box-book" style=" background-color: blue;border-radius:15px; margin-top:10px;height:70px; width:1295px; align-items:center; padding-top:12px;">
	<div style="color:#fff; margin:7px; "> <span style="font-size:9px; padding-left:20px;" >Read Instructions Carefully before proceeding</span><span style="float:right; background:#fff; color:blue;padding: 0px 10px 10px 10px; border-radius:10px; padding-left:10px; font-weight:bold;"><img src="assets/img/icons8-circled-2-50.png"> PAY </span><span style="float:right; height:85px; font-weight:bold;padding: 0px 10px 0px 10px;  color:#fff; border-radius:10px;"><img src="assets/img/icons8-level-1-48.png">BOOKING DETAILS</span></div>
	</div>


<!-- Credit Card Payment Form - START -->
<div class="container-body" style="Width:1200px; heigth: 18
00px;margin-top:-40px;  margin-left:60px;padding:80px 0px 60px 0px; 
">    
<div class="container" style="">


    <div class="row"style=".col-md-offset-4 {
    margin-left: 10%; 
} ">
 <% String MemberID = sessionUser.getAttribute("MemberID").toString();
 HttpSession sessionPay = request.getSession(false);
	String id= sessionPay.getAttribute("id").toString();
	String price= sessionPay.getAttribute("price").toString();
	String Depature= sessionPay.getAttribute("Depature").toString();
	String Destination= sessionPay.getAttribute("Destination").toString();
	String Airline= sessionPay.getAttribute("Airline").toString();
	String total= sessionPay.getAttribute("total").toString();
	String DateTime= sessionPay.getAttribute("DateTime").toString();
	String passenger= sessionPay.getAttribute("passenger").toString();%>
	       <%  
  


try {
	        Statement st;
	        String sql;
			String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","Kavindu84");
			st= (Statement) con.createStatement();
			

			    
		    sql ="Insert Into UserBookings Values('"+MemberID+"','"+id+"','"+Airline+"','"+Depature+"','"+Destination+"','"+DateTime+"','"+passenger+"','"+price+"','"+total+"') ";
			
		     st.executeUpdate(sql);
		     }catch(Exception e){
	e.printStackTrace();
}
			
	        %>
       <div style="background-image:url(assets/img/LastBox.png);  border:blue;color:black; heigth:100px; width:550px; margin-left: 60px; padding-bottom:5  0px; border-radius:15px;  box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25), 0px 4px 4px rgba(0, 0, 0, 0.25);
       ">
       <div style="padding:20px;"> 
       <h1 align="center" style=" -webkit-text-stroke-width: 1px;
            -webkit-text-stroke-color: black;">Invoice</h1>
       <p>Dear,</p>
       <h4>Username</h4>
       <p>This is to Inform that your payment Details about your Tour.<span style="color:red;"><br>Please make sure all the Payment are none Refundable.</span></p>
       <table>
       <tr><td><h5 style="color:black; padding-left:80px;">Flight ID</h5></td><td><h5 style="color:black; padding-left:100px;">   <%=id %></h5></td></tr>
       <tr><td><h5 style="color:black; padding-left:80px;">Depature</h5></td><td><h5 style="color:black; padding-left:100px;">  <%=Depature %></h5></td></tr>
       <tr><td><h5 style="color:black; padding-left:80px;">Destination</h5></td><td><h5 style="color:black; padding-left:100px;"> 	<%=Destination %></h5></td></tr>
       <tr><td><h5 style="color:black; padding-left:80px;">Date and Time</h5></td><td><h5 style="color:black; padding-left:100px;">  <%=DateTime %></h5></td></tr>
       <tr><td><h5 style="color:black; padding-left:80px;">Per Person</h5></td><td><h5 style="color:black; padding-left:100px;">   $<%=price %>.00 U.S</h5></td></tr>
       <tr><td><h5 style="color:black; padding-left:80px;">passengers</h5> </td><td><h5 style="color:black; padding-left:100px;"> <%=passenger %></h5></td></tr>
       <tr style="background:black; margib-left:100px;"><td><h4 style="color:#fff; padding-left:80px; ">Total</h4></td><td><h4 style="color:#fff; padding-left:100px;"> $<%=total %>.00 U.S</h4></td><td><h4 style="color:#fff; padding-left:100px;"></h4></td></tr>
       </table>
       </div>
       </div>
       
        <div class="col-xs-12 col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <h3 class="text-center">Payment Details</h3>
                        <img class="img-responsive cc-img" src="http://www.prepbootstrap.com/Content/images/shared/misc/creditcardicons.png">
                    </div>
                </div>
                <div class="panel-body">
                    <form role="form">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>CARD NUMBER</label>
                                    <div class="form-group" style="">
                                        <input type="tel" class="form-control" placeholder="Valid Card Number"  />
                                        <span class="fa fa-credit-card" style="margin-left:300px;"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                    <input type="tel" class="form-control" placeholder="MM / YY" />
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label>CV CODE</label>
                                    <input type="tel" class="form-control" placeholder="CVC" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>CARD OWNER</label>
                                    <input type="text" class="form-control" placeholder="Card Owner Names" />
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="panel-footer">
                    <div class="row">
                        <div class="col-xs-12">
                            <button  class="btn btn-warning btn-lg btn-block" id="myBtn">Process payment</button>              
           <div id="myModal" class="modal">

<!-- Help Me -->
  <!-- Modal content -->
  <div class="modal-content">
  <div class="container" style="
width: 390px;
height: 350px;


background: #FFFFFF;
box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25), 0px 4px 4px rgba(0, 0, 0, 0.25);
border-radius: 15px;"> 
<div class="main-container">
  <div class="check-container">
    <div class="check-background">
      <svg viewBox="0 0 65 51" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M7 25L27.3077 44L58.5 7" stroke="white" stroke-width="13" stroke-linecap="round" stroke-linejoin="round" />
      </svg>
    </div>
    <div class="check-shadow"></div>
  </div>
   
  <h3 align="center" style="color:black;">Your Payment was Successful</h3>
  <a href="Ticket.jsp" class="btn btn-primary" id="myBtn" style="background-color:red;">Get Your Boarding Pass</a>
</div>
          
    </div>
     
  </div>


</div>
</div>

    
<style>

.main-container {
  width: 100%;
  height: 38vh;
  display: flex;
  flex-flow: column;
  justify-content: center;
  align-items: center;
  margin-bottom:300px;
}

.check-container {
  width: 16.25rem;
  height: 19.5rem;
  display: flex;
  flex-flow: column;
  align-items: center;
  justify-content: space-between;
}
.check-container .check-background {
  width: 100%;
  height: calc(100% - 1.25rem);
  background: linear-gradient(to bottom right, #5de593, #41d67c);
  box-shadow: 0px 0px 0px 65px rgba(255, 255, 255, 0.25) inset, 0px 0px 0px 65px rgba(255, 255, 255, 0.25) inset;
  transform: scale(0.84);
  border-radius: 50%;
  animation: animateContainer 0.75s ease-out forwards 0.75s;
  display: flex;
  align-items: center;
  justify-content: center;
  opacity: 0;
}
.check-container .check-background svg {
  width: 65%;
  transform: translateY(0.25rem);
  stroke-dasharray: 80;
  stroke-dashoffset: 80;
  animation: animateCheck 0.35s forwards 1.25s ease-out;
}
.check-container .check-shadow {
  bottom: calc(-15% - 5px);
  left: 0;
  border-radius: 50%;
  background: radial-gradient(closest-side, #49da83, transparent);
  animation: animateShadow 0.75s ease-out forwards 0.75s;
}

@keyframes animateContainer {
  0% {
    opacity: 0;
    transform: scale(0);
    box-shadow: 0px 0px 0px 65px rgba(255, 255, 255, 0.25) inset, 0px 0px 0px 65px rgba(255, 255, 255, 0.25) inset;
  }
  25% {
    opacity: 1;
    transform: scale(0.9);
    box-shadow: 0px 0px 0px 65px rgba(255, 255, 255, 0.25) inset, 0px 0px 0px 65px rgba(255, 255, 255, 0.25) inset;
  }
  43.75% {
    transform: scale(1.15);
    box-shadow: 0px 0px 0px 43.334px rgba(255, 255, 255, 0.25) inset, 0px 0px 0px 65px rgba(255, 255, 255, 0.25) inset;
  }
  62.5% {
    transform: scale(1);
    box-shadow: 0px 0px 0px 0px rgba(255, 255, 255, 0.25) inset, 0px 0px 0px 21.667px rgba(255, 255, 255, 0.25) inset;
  }
  81.25% {
    box-shadow: 0px 0px 0px 0px rgba(255, 255, 255, 0.25) inset, 0px 0px 0px 0px rgba(255, 255, 255, 0.25) inset;
  }
  100% {
    opacity: 1;
    box-shadow: 0px 0px 0px 0px rgba(255, 255, 255, 0.25) inset, 0px 0px 0px 0px rgba(255, 255, 255, 0.25) inset;
  }
}
@keyframes animateCheck {
  from {
    stroke-dashoffset: 80;
  }
  to {
    stroke-dashoffset: 0;
  }
}
@keyframes animateShadow {
  0% {
    opacity: 0;
    width: 100%;
    height: 15%;
  }
  25% {
    opacity: 0.25;
  }
  43.75% {
    width: 40%;
    height: 7%;
    opacity: 0.35;
  }
  100% {
    width: 85%;
    height: 15%;
    opacity: 0.25;
  }
}
View SCSS Code


Resources
/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {

background: linear-gradient(270deg, #0000FF 0%, #4B59DD 48.96%, #A7BAED 100%); ;
  margin: 15% auto; /* 15% from the top and centered */
  padding: 20px;
  border: 1px solid #888;
  width: 30%;
  height: 50%;
 box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25), 0px 4px 4px rgba(0, 0, 0, 0.25);
border-radius: 15px;
 /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
  color: red;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}
</style>
      <script>
   // Get the modal
      var modal = document.getElementById("myModal");

      // Get the button that opens the modal
      var btn = document.getElementById("myBtn");

      // Get the <span> element that closes the modal
      var span = document.getElementsByClassName("close")[0];

      // When the user clicks on the button, open the modal
      btn.onclick = function() {
        modal.style.display = "block";
      }

      // When the user clicks on <span> (x), close the modal
      span.onclick = function() {
        modal.style.display = "none";
      }

      // When the user clicks anywhere outside of the modal, close it
      window.onclick = function(event) {
        if (event.target == modal) {
          modal.style.display = "none";
        }
      }</script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</div>
<style>
    .cc-img {
        margin: 0 auto;
    }
</style>

 
 </section>

    




</body>
</html>