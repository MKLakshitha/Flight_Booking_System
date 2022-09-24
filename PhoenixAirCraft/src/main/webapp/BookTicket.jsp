<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="java.sql.*" %>
<%@page import="com.Kavindu.*"%>
<%@page import="java.util.*" %>

 <!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
<!-- help me -->
  <title>Phoenix Airline</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <script src="https://kit.fontawesome.com/83325a7e2a.js" crossorigin="anonymous"></script>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
  <!-- Favicons -->
  <link href="assets/img/Phoenix.svg" rel="icon">
  <link href="assets/img/Phoenix.svg" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

      
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
       
      <a href="index.html" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
       <img src="assets/img/Phoenix.svg" alt=""> 
        <h1>Phoenix Airline</h1>
      </a>

      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="index.jsp" >Home</a></li>
          <li><a href="Flights.jsp" class="active">Flight</a></li>
          <li><a href="services.html">Tickets</a></li>
          <li><a href="pricing.html">Dashboard</a></li>
          <li class="dropdown"><a href="about.html"><span>About Us</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
				<li><a href="about.html">Phoenix Airline</a></li>
              <li><a href="pricing.html">Offers</a></li>
              <li><a href="services.html">Services</a></li>       
              <li><a href="contact.html">Contact Us</a></li>  
              <li><a  href="get-a-quote.html">Get a Quote</a></li>

            </ul>
          </li>
         
               <li><a class="get-a-quote" href="#">SignUp/Login</a></li>
				<a href="#"> <img  src="assets/img/user-svgrepo-com.svg" alt="" style="visibility:visible; width:45px;height:45px; margin-left:0px; color:blue;"></a>


        </ul>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
  <!-- End Header -->

  <!-- ======= Hero Section ======= -->

  <section id="hero" class="hero d-flex align-items-center" style="background-color:#fff;">


<div class="container" style="background-color: #fff; border-radius:15px; height:620px; width:2700px;  align-items:center;">
	<div class="box-book" style=" background-color: blue;border-radius:15px; margin-top:10px;height:70px; width:1295px; align-items:center; padding-top:12px;">
	<div style="color:#fff; margin:7px; "> <span style="font-size:9px; padding-left:20px;">Read Instructions Carefully before proceeding</span><span style="float:right; padding-right:30px; padding-left:30px; font-weight:bold;"><img src="assets/img/icons8-circled-2-50.png"> PAY </span><span style="float:right; height:85px; font-weight:bold;padding: 0px 10px 0px 10px; background-color:#fff; color:blue; border-radius:10px;"><img src="assets/img/icons8-level-1-48.png">BOOKING DETAILS</span></div>
	</div>
	<div class="container-info" style="background: rgba(219, 239, 251, 0.5); border-radius:10px;  margin-top:40px; width:1295px; height: 200px; color:blue;" ><ul><li><p style="margin:10px 30px 0px 30px; color:black;">Passengers must have a medical certificate with a negative coronavirus (covid-19) RT-PCR test result. The test should have been conducted within 72 hours prior to undertaking the journey.</p></li><li><p style="margin:10px 30px 0px 30px; color:black;">Passengers must complete the self-declaration form on the Phoenix Airline portal <a href="">Portal here</a> before departure and to declare their travel history (of the past 14 days).</p></li><li><p style="margin:10px 30px 0px 30px; color:black;">Ensure to arrive to the airport before 5 hours from the departure time.</p></li><li><p style="margin:10px 30px 0px 30px; color:black;">Ensure that the weight of your luggage does not exceed the permitted weight. (Travel luggage - 30 kg, Hand luggage – 7kg)</p></li></ul>
	<input type="checkbox" name="check" style="margin:0px 15px 15px 900px;" ><span style="color:red;">I read all the instructions and conditions *</span></div>
	          

      </div>


	</div>
</div>
    
       <style>
			.pricingTable{
    font-family: 'Josefin Sans', sans-serif;
    background: #fff;
    text-align: center;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
    border-radius: 50px;
}
.pricingTable .pricingTable-header{
    color: #fff;
    background: linear-gradient(to bottom, #a7e6b7, #b3e73d);
    padding: 30px 0 15px;
    margin: 0 0 20px;
    border-radius: 45px 45px 0 0;
    text-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
    box-shadow: 0 -5px 10px -5px rgba(0, 0, 0, 0.4) inset;
}
.pricingTable .title{
    font-size: 40px;
    font-weight: 600;
    letter-spacing: 0.5px;
    text-transform: uppercase;
    margin: 0 0 10px;
}
.pricingTable .price-value{
    text-align: left;
    display: inline-block;
    width: 213px;
}
.pricingTable .price-value .currency{
    font-size: 40px;
    font-weight: 300;
    line-height: 50px;
    display: block;
    float: left;
}
.pricingTable .price-value .amount{
    font-size: 60px;
    font-weight: 250;
    line-height: 50px;
    margin-right: 5px;
    display: block;
    float: left;
}
.pricingTable .price-value .amount-sm{
    font-size: 30px;
    font-weight: 250;
    line-height: 30px;
    display: block;
}
.pricingTable .price-value .duration{
    font-size: 15px;
    font-weight: 300;
    text-transform: uppercase;
    line-height: 15px;
    display: block;
}
.pricingTable .icon{
    color: #b3e73d;
    font-size: 60px;
    line-height: 50px;
    margin: 0 0 15px;
}
.pricingTable .pricing-content{
    text-align: left;
    padding: 0;
    margin: 0 0 20px;
    list-style: none;
    display: inline-block;
}
.pricingTable .pricing-content li{
    color: #adabab;
    font-size: 18px;
    line-height: 22px;
    text-transform: uppercase;
    padding: 0 0 8px 30px;
    margin: 0 0 13px;
    border-bottom: 1px solid #adabab;
    position: relative;
}
.pricingTable .pricing-content li:last-child{
    margin-bottom: 0;
    border: none;
}
.pricingTable .pricing-content li:before{
    content: "\f00c";
    color: #b3e73d;
    font-size: 18px;
    line-height: 17px;
    font-family: "Font Awesome 5 Free";
    font-weight: 900;
    position: absolute;
    top: 0;
    left: 0;
}
.pricingTable .pricing-content li.disable:before{ content: "\f00d"; }
.pricingTable .pricingTable-signup{
    background: linear-gradient(to bottom, #a7e6b7, #b3e73d);
    padding: 40px 0 15px;
    border-radius: 0 0 50px 50px;
    box-shadow: 0 5px 10px -5px rgba(0, 0, 0, 0.4) inset;
    overflow: hidden;
    position: relative;
}
.pricingTable .pricingTable-signup:before{
    content: "";
    background: #fff;
    width: 30px;
    height: 30px;
    transform: translateX(-50%) rotate(-45deg);
    position: absolute;
    top: -15px;
    left: 50%;
    z-index: 1;
}
.pricingTable .pricingTable-signup a{
    color: #fff;
    font-size: 25px;
    font-weight: 500;
    line-height: 25px;
    text-transform: uppercase;
    text-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
    transition: all 0.3s;
}
.pricingTable .pricingTable-signup a:hover {
    text-shadow: -3px 3px 1px rgba(0, 0, 0, 0.4);
    letter-spacing: 2px;
}
.pricingTable.pink .pricingTable-header,
.pricingTable.pink .pricingTable-signup{
    background: linear-gradient(to bottom, #f03db5, #fe953a);
}
.pricingTable.pink .pricing-content li:before,
.pricingTable.pink .icon{
    color: #f03db5;
}
.pricingTable.purple .pricingTable-header,
.pricingTable.purple .pricingTable-signup{
    background: linear-gradient(to bottom, #ce41ff, #7e42fa);
}
.pricingTable.purple .pricing-content li:before,
.pricingTable.purple .icon{
    color: #ce41ff;
}
.pricingTable .pricing-content li.disable:before { color: #ababab; }
@media only screen and (max-width: 990px){
    .pricingTable{ margin-bottom: 40px; }
}
License Terms
       
       </style>
			
		
  </section><!-- End Hero Section -->

    <%  
    Vector flight = (Vector)request.getAttribute("Flights");


try {
	        Statement st;
	        String sql;
			String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","Kavindu84");
			st= (Statement) con.createStatement();

			 HttpSession sessionID = request.getSession(false);
			String id= sessionID.getAttribute("id").toString();
			String passenger = sessionID.getAttribute("passengers").toString();
		    sql ="Select * from Flights where id ='"+id+"'";
			
			ResultSet rs = st.executeQuery(sql);
			
	        while(rs.next()){%>

             
             
 <div class="demo">
    <div class="container" style="margin-bottom:20px; align-items:center;">
        <div class="row">

            <div class="col-md-4 col-sm-6">
                <div class="pricingTable pink">
                    <div class="pricingTable-header">
                    <% int  price = Integer.parseInt(rs.getString("Price"));
                      
                       int total = (Integer.parseInt(passenger)*price);
                    %>
                        <h3 class="title">	        	<%=rs.getString("Airline") %></h3>
                        <div class="price-value">
                            <span class="currency">$</span>
                            <span class="amount"><%=total%></span>
                            <span class="amount-sm">.00</span>
                            <span class="duration">U.S</span>
                        </div>
                    </div>
                    <div class="icon">      <img src="assets/img/Phoenix.svg" class="img-fluid rounded-start" alt="..." style="width:70px; height:70px;"></div>
                    <ul class="pricing-content">
                    
                 <li>Flight ID : <%=rs.getString("id") %>     </li>            
                <li> Depature : <%=rs.getString("Depature") %></li>
                <li> Destination : <%=rs.getString("Destination") %></li>
                <li> Date and Time : <%=rs.getString("DateTime") %></li>
                        <li>Passengers : <%=sessionID.getAttribute("passengers") %></li>
                        <li>Per Person : $<%=rs.getString("Price") %>.00 U.S</li>
                    </ul>
                    <div class="pricingTable-signup">
                        <a href="#">PAY HERE</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6" style="color:black; width:880px;"><h1 style="align-items:center;">Pay to Get your Boarding Pass</h1>
            <div class="up-ticket" style="position: absolute;
width: 610px;
height: 58px;


background: linear-gradient(90deg, #FFFFFF 0%, #0000FF 100%);
border-radius: 30px;">      <img src="assets/img/Phoenix.svg" class="img-fluid rounded-start" alt="..." style="width:40px; height:40px; position: absolute;
left: 10.57%;
right: 85.2%; margin-bottom:1px; margin-top:8px;"><br><span style="color:blue; font-size:15px; margin-top:0px; margin-left:109px;">Phoenix AirLine</span>
<span style="color:#fff; font-size:20px; margin-top:0px; margin-left:179px;">BOARDING PASS</span>
            </div>
            </div>

        </div>
    </div>
</div>

            <% }
            	
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
 }    

%> 

<script>
$(document).ready(function() {
    $('#example').DataTable(
        
         {     

      "aLengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]],
        "iDisplayLength": 5
       } 
        );
} );


function checkAll(bx) {
  var cbs = document.getElementsByTagName('input');
  for(var i=0; i < cbs.length; i++) {
    if(cbs[i].type == 'checkbox') {
      cbs[i].checked = bx.checked;
    }
  }
}
</script>
  <footer id="footer" class="footer">

    <div class="container">
      <div class="row gy-4">
        <div class="col-lg-5 col-md-12 footer-info">
          <a href="index.html" class="logo d-flex align-items-center">
            <span>Logis</span>
          </a>
          <p>Cras fermentum odio eu feugiat lide par naso tierra. Justo eget nada terra videa magna derita valies darta donna mare fermentum iaculis eu non diam phasellus.</p>
          <div class="social-links d-flex mt-4">
            <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
            <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
            <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
            <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

        <div class="col-lg-2 col-6 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About us</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Terms of service</a></li>
            <li><a href="#">Privacy policy</a></li>
          </ul>
        </div>

        <div class="col-lg-2 col-6 footer-links">
          <h4>Our Services</h4>
          <ul>
            <li><a href="#">Web Design</a></li>
            <li><a href="#">Web Development</a></li>
            <li><a href="#">Product Management</a></li>
            <li><a href="#">Marketing</a></li>
            <li><a href="#">Graphic Design</a></li>
          </ul>
        </div>

        <div class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
          <h4>Contact Us</h4>
          <p>
            A108 Adam Street <br>
            New York, NY 535022<br>
            United States <br><br>
            <strong>Phone:</strong> +1 5589 55488 55<br>
            <strong>Email:</strong> info@example.com<br>
          </p>

        </div>

      </div>
    </div>

    <div class="container mt-4">
      <div class="copyright">
        &copy; Copyright <strong><span>Logis</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/logis-bootstrap-logistics-website-template/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>

  </footer><!-- End Footer -->
  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
   <div id="preloader"></div>
   <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
</body>


