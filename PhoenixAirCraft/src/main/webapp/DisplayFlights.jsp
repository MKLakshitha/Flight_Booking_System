<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
    <%@page import="java.sql.*" %>
<%@page import="com.Kavindu.*"%>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html>
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
          <li class="dropdown"><a href="about.html"><span>About Us</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
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
  </header><!-- End Header -->
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero d-flex align-items-center" style="margin-bottom: -270px;
    margin-top: -180px; opacity:1;" >
    <div class="container" style="opacity:1;">
      
        <div class="col-lg-6 order-2 order-lg-1 d-flex flex-column justify-content-center">
       
               
          

          

        <div class="col-lg-5 order-1 order-lg-2 hero-img" data-aos="zoom-out">
          <img src="assets/img/" class="img-fluid mb-3 mb-lg-0" alt="">
        </div>

      </div>
       
    <form action="FlightServlet" class="form-search d-flex align-items-stretch mb-3" data-aos="fade-up" data-aos-delay="200" autocomplete="off" method="post">
    

  
    <img class="form-img" src="assets/img/Depart.svg" alt="">
    
          <div class="autocomplete" style="color:black;">
       
    <ul>
              <li class="dropdown"><a href="#"><span>Departure</span> </a>
                <ul>
                  <li><a href="#" >Sri Lanka</a></li>
                  <li><a href="#" >Japan</a></li>
                  <li><a href="#" >India</a></li>
                  <li><a href="#" >Russia</a></li>
                  <li><a href="#">UK</a></li>
                </ul>
              </li>
             
      </ul>
       <input type="text" name="From" placeholder="Sri Lanka" class="text-form1" id="myInput" >
      </div>  
      <img class="form-img2" src="assets/img/Down Icon.svg" alt="">



          <img class="form-img" src="assets/img/Return.svg" alt="">
        <div class="autocomplete" style="color:black;">
         
    <ul>
              <li class="dropdown"><a href="#"><span>Return</span> </a>
                <ul>
                  <li><a href="#">Australia</a></li>
                  <li><a href="#">Singappore</a></li>
                  <li><a href="#">USA</a></li>
                  <li><a href="#">German</a></li>
                  <li><a href="#">France</a></li>
                </ul>
              </li>
             
      </ul>
            <input type="text" name="To" placeholder="Japan" class="text-form1" id="myInput1">
      </div>
     
      <img class="form-img2" src="assets/img/Down Icon.svg" alt="">
      <img class="form-img" src="assets/img/Passenger.svg" alt="">
      <div >
      
       <ul>
              <li class="dropdown"><a href="#"><span>Passengers</span> </a>
                <ul>
                  <li><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                </ul>
              </li>
             
      </ul>
             <input type="number" name="passengers" placeholder="0" class="text-form1">
      </div>
       <img class="form-img2" src="assets/img/Down Icon.svg" alt="">
             <img class="form-img" src="assets/img/calendar-svgrepo-com.svg" alt="">
      <div >
      
       
      <ul>
              <li class="dropdown"><a href="#"><span>Date</span> </a>
             
      </ul>

             
      
      <input type="datetime-local" id="DateLocal" class="text-form1" name="date">
             
      </div>

      
       <div>
       <p class="exploremap">Looking for Travel ideas? <a href="https://www.google.com/travel/explore?tfs=CBwQAxofahEIAxINL2cvMTFmM3R6MThuchIKMjAyMi0wOS0yNxofEgoyMDIyLTEwLTAxchEIAxINL2cvMTFmM3R6MThucnACggELCP___________wFAAUgBmAEB&tfu=GioaKAoSCeeYtbO1MkNAEaKkYXZAHFpAEhIJVCIzmmPaJEARoqRhdnDkUkA&authuser=0"><span>Explore Map</span></a></p>
       
       <button type="submit" class="btn btn-primary">Show Flights</button>
           </div>
           <img class="form-img4" src="assets/img/Location.svg" alt="">
          </form>
          </div>
  </section><!-- End Hero Section -->
    <main id="main">
  <section>
  <!-- section -->
  <div class="data-ex" style="color:black; margin-top:220px;margin-left:50px; " width><h4 style="color: #3333ff;">Here's why travelers choose<br> Phoenix Airline<h4>
  <div class="data-box" style=" width:170px; height:150px; border: 2px solid #3333ff;
border-radius: 15px; margin-bottom:15px; padding:5px;"> <img src="assets/img/icons8-best-seller-50.png"><h6 style="color: #3333ff;">Best travel deals</h6><p style="font-size:11px;">Find the Best deals available from oursite.</p></div>
  <div class="data-box" style=" width:170px; height:150px; border: 2px solid #3333ff;
border-radius: 15px; margin-bottom:15px; padding:5px;"><img src="assets/img/icons8-clock-checked-50.png"><h6 style="color: #3333ff;">Search without worry</h6><p style="font-size:11px;">The prices you see aren't affected by your searches.</p></div>
  <div class="data-box" style=" width:170px; height:150px; border: 2px solid #3333ff;
border-radius: 15px; margin-bottom:15px; margin-left:200px;  margin-top:-330px; padding:5px;"> <img src="assets/img/icons8-booking-50.png"><h6 style="color: #3333ff;">Book with flexibility</h6><p style="font-size:11px;">Easily find flights that have flexible bookings.</p></div>  <div class="data-box" style=" width:170px; height:150px; border: 2px solid #3333ff;
border-radius: 15px; margin-bottom:15px; margin-left:200px; padding:5px;"> <img src="assets/img/icons8-trust-50.png"><h6 style="color: #3333ff;">Trusted and free</h6><p style="font-size:11px;">We're completely free to use - no hidden charges or fees.</p></div>
<div class="data-box" style="  margin-bottom:15px; margin-top:-520px; padding:5px;"><img src="assets/img/5382690.jpg" style="margin-top:120px; margin-left:400px; padding:5px; height:400px; width:400px;"></div>
  </div>
  
  
  
  <div class="container-data" style="background: #FFFFFF;
 
border-radius: 10px; padding:10px; margin-left:130px;">
   <div class="data" style="align-items:center; margin-top:-435px; margin-left:750px;">
   

                              <%  
    Vector flight = (Vector)request.getAttribute("Flights");


try {
	        Statement st;
	        String sql;
			String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","Kavindu84");
			st= (Statement) con.createStatement();
			 HttpSession session =request.getSession(false);

			    
		    sql ="Select * from Flights where Depature='"+session.getAttribute("depature")+"' AND Destination='"+session.getAttribute("Destination")+"'";
			
			ResultSet rs = st.executeQuery(sql);
			
	        while(rs.next()){%>
	        <div class="card mb-3" style="max-width: 540px; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
border-radius: 15px; ">
  <div class="row g-0">
  
    <div class="col-md-4">
      <img src="assets/img/fly.png" class="img-fluid rounded-start" alt="..." style="border-radius: 15px;">
    </div>
    <div class="col-md-8">
      <div class="card-body" style="  background: linear-gradient(270deg, #0000FF 0%, #4B59DD 48.96%, #A7BAED 100%);      ; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
border-radius: 15px; ">
        <h5 class="card-title">
        
        <div class="data-table" style="background: #FFFFFF; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25), 0px 4px 4px rgba(0, 0, 0, 0.25); border-radius: 15px; color:black; padding:10px;">
        <table >        <h3  style="align-items:center; color:blue;"><%=rs.getString("Airline") %><h3>
						<hr>
                           <tr>
                       <td> Fligh ID</td>
                        <td><%=rs.getString("id") %></td></tr>
       <tr><td><%=rs.getString("Depature") %>  <img class="form-img" src="assets/img/Depart.svg" alt="" style="width:25px; height:25px;"></td>  <td><%=rs.getString("Destination") %>  <img class="form-img" src="assets/img/Return.svg" alt="" style="width:25px; height:25px;"></td></tr>     
               
                

                    <tr>
                        <td>Date             <img class="form-img" src="assets/img/calendar-svgrepo-com.svg" alt=""style="width:25px; height:25px;" > &nbsp; &nbsp; Time<img class="form-img" src="assets/img/icons8-time-machine-48.png" alt=""style="width:25px; height:25px;" ></td>
                        <td><%=rs.getString("DateTime") %></td>
                        </tr>
						<tr>
                        <td>Price   </td>
                        <td>$<%=rs.getString("Price") %> U.S</td>
                        </tr>

                
                 </table>
                 </div></h5>
        <p class="card-text">YOUR WINGS ALREADY EXIST ALL YOU HAVE TO DO IS FLY.</p>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
           <a href="#" class="btn btn-primary" id="myBtn" style="background-color:red;">Book Now</a>
              
           <div id="myModal" class="modal">

<!-- Help Me -->
  <!-- Modal content -->
  <div class="modal-content">
  <div class="container" style="
width: 390px;
height: 750px;


background: #FFFFFF;
box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25), 0px 4px 4px rgba(0, 0, 0, 0.25);
border-radius: 15px;">
    <span class="close">×</span>
     <img src="https://popup.popupsmart.com/assets/images/popup-images/popup-239.png" alt="" style="height:180px; width:367px; position :absolute; border-radius: 15px;margin-top:35px;">
     <div class="data" style="color:black; margin-top:235px;">
      <h3 align="center">How We Are Coping with Covid-19</h3>
      <p align="center">We Take all the necessary precautions<br> related to COVID-19.</p>
       <a href="https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public" target="blank"><button type="button" name="details" class="btn btn-primary" style="background-color:red; width:150px; height:45px;align-items:center;border: 1px solid black; margin-left:110px; border-radius: 20px;">Details</button></a>
      <form action="sample" method="post">  
      <table style="font-weight:bold; margin:15px;  align-items:center;" >
  <tr><td >Flight ID</td><td ><input type="text" name="id" style="width:75px; border-radius:15px; heigth:35px; margin-left:10px; text-align:center; "></td> 
  <td style="font-weight:bold;">Passengers</td><td style="width:75px; border-radius:15px; heigth:35px; ">  <input type="text" name="passengers" style="width:75px; border-radius:15px; heigth:35px;   text-align:center;"> </td></tr>

    </table>
     <a href="DisplayTicket.jsp"><input type="submit" name="details" class="btn btn-primary" value="Confirm Book" style="background-color:blue; width:150px;height:45px; margin-left:110px; margin-bottom:3px;align-items:center;border: 1px solid #fff; border-radius: 20px;"></a>
     </form> 
     </div>
    </div>
     
  </div>


</div>

<style>
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
  height: 72%;
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
	         
						    
			<% }
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
    }    

  %> 
           </div>
            
           </div>
          
  </section>
  </main>
<script>
function autocomplete(inp, arr) {
  /*the autocomplete function takes two arguments,
  the text field element and an array of possible autocompleted values:*/
  var currentFocus;
  /*execute a function when someone writes in the text field:*/
  inp.addEventListener("input", function(e) {
      var a, b, i, val = this.value;
      /*close any already open lists of autocompleted values*/
      closeAllLists();
      if (!val) { return false;}
      currentFocus = -1;
      /*create a DIV element that will contain the items (values):*/
      a = document.createElement("DIV");
      a.setAttribute("id", this.id + "autocomplete-list");
      a.setAttribute("class", "autocomplete-items");
      /*append the DIV element as a child of the autocomplete container:*/
      this.parentNode.appendChild(a);
      /*for each item in the array...*/
      for (i = 0; i < arr.length; i++) {
        /*check if the item starts with the same letters as the text field value:*/
        if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
          /*create a DIV element for each matching element:*/
          b = document.createElement("DIV");
          /*make the matching letters bold:*/
          b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
          b.innerHTML += arr[i].substr(val.length);
          /*insert a input field that will hold the current array item's value:*/
          b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
          /*execute a function when someone clicks on the item value (DIV element):*/
          b.addEventListener("click", function(e) {
              /*insert the value for the autocomplete text field:*/
              inp.value = this.getElementsByTagName("input")[0].value;
              /*close the list of autocompleted values,
              (or any other open lists of autocompleted values:*/
              closeAllLists();
          });
          a.appendChild(b);
        }
      }
  });
  /*execute a function presses a key on the keyboard:*/
  inp.addEventListener("keydown", function(e) {
      var x = document.getElementById(this.id + "autocomplete-list");
      if (x) x = x.getElementsByTagName("div");
      if (e.keyCode == 40) {
        /*If the arrow DOWN key is pressed,
        increase the currentFocus variable:*/
        currentFocus++;
        /*and and make the current item more visible:*/
        addActive(x);
      } else if (e.keyCode == 38) { //up
        /*If the arrow UP key is pressed,
        decrease the currentFocus variable:*/
        currentFocus--;
        /*and and make the current item more visible:*/
        addActive(x);
      } else if (e.keyCode == 13) {
        /*If the ENTER key is pressed, prevent the form from being submitted,*/
        e.preventDefault();
        if (currentFocus > -1) {
          /*and simulate a click on the "active" item:*/
          if (x) x[currentFocus].click();
        }
      }
  });
  function addActive(x) {
    /*a function to classify an item as "active":*/
    if (!x) return false;
    /*start by removing the "active" class on all items:*/
    removeActive(x);
    if (currentFocus >= x.length) currentFocus = 0;
    if (currentFocus < 0) currentFocus = (x.length - 1);
    /*add class "autocomplete-active":*/
    x[currentFocus].classList.add("autocomplete-active");
  }
  function removeActive(x) {
    /*a function to remove the "active" class from all autocomplete items:*/
    for (var i = 0; i < x.length; i++) {
      x[i].classList.remove("autocomplete-active");
    }
  }
  function closeAllLists(elmnt) {
    /*close all autocomplete lists in the document,
    except the one passed as an argument:*/
    var x = document.getElementsByClassName("autocomplete-items");
    for (var i = 0; i < x.length; i++) {
      if (elmnt != x[i] && elmnt != inp) {
        x[i].parentNode.removeChild(x[i]);
      }
    }
  }
  /*execute a function when someone clicks in the document:*/
  document.addEventListener("click", function (e) {
      closeAllLists(e.target);
  });
}

/*An array containing all the country names in the world:*/
var countries = ["Afghanistan","Albania","Algeria","Andorra","Angola","Anguilla","Antigua & Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia & Herzegovina","Botswana","Brazil","British Virgin Islands","Brunei","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Canada","Cape Verde","Cayman Islands","Central Arfrican Republic","Chad","Chile","China","Colombia","Congo","Cook Islands","Costa Rica","Cote D Ivoire","Croatia","Cuba","Curacao","Cyprus","Czech Republic","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Ethiopia","Falkland Islands","Faroe Islands","Fiji","Finland","France","French Polynesia","French West Indies","Gabon","Gambia","Georgia","Germany","Ghana","Gibraltar","Greece","Greenland","Grenada","Guam","Guatemala","Guernsey","Guinea","Guinea Bissau","Guyana","Haiti","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Isle of Man","Israel","Italy","Jamaica","Japan","Jersey","Jordan","Kazakhstan","Kenya","Kiribati","Kosovo","Kuwait","Kyrgyzstan","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Mauritania","Mauritius","Mexico","Micronesia","Moldova","Monaco","Mongolia","Montenegro","Montserrat","Morocco","Mozambique","Myanmar","Namibia","Nauro","Nepal","Netherlands","Netherlands Antilles","New Caledonia","New Zealand","Nicaragua","Niger","Nigeria","North Korea","Norway","Oman","Pakistan","Palau","Palestine","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Puerto Rico","Qatar","Reunion","Romania","Russia","Rwanda","Saint Pierre & Miquelon","Samoa","San Marino","Sao Tome and Principe","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","South Korea","South Sudan","Spain","Sri Lanka","St Kitts & Nevis","St Lucia","St Vincent","Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor L'Este","Togo","Tonga","Trinidad & Tobago","Tunisia","Turkey","Turkmenistan","Turks & Caicos","Tuvalu","Uganda","Ukraine","United Arab Emirates","United Kingdom","United States of America","Uruguay","Uzbekistan","Vanuatu","Vatican City","Venezuela","Vietnam","Virgin Islands (US)","Yemen","Zambia","Zimbabwe"];

/*initiate the autocomplete function on the "myInput" element, and pass along the countries array as possible autocomplete values:*/
autocomplete(document.getElementById("myInput"), countries);

function autocomplete(inp, arr) {
	  /*the autocomplete function takes two arguments,
	  the text field element and an array of possible autocompleted values:*/
	  var currentFocus;
	  /*execute a function when someone writes in the text field:*/
	  inp.addEventListener("input", function(e) {
	      var a, b, i, val = this.value;
	      /*close any already open lists of autocompleted values*/
	      closeAllLists();
	      if (!val) { return false;}
	      currentFocus = -1;
	      /*create a DIV element that will contain the items (values):*/
	      a = document.createElement("DIV");
	      a.setAttribute("id", this.id + "autocomplete-list");
	      a.setAttribute("class", "autocomplete-items");
	      /*append the DIV element as a child of the autocomplete container:*/
	      this.parentNode.appendChild(a);
	      /*for each item in the array...*/
	      for (i = 0; i < arr.length; i++) {
	        /*check if the item starts with the same letters as the text field value:*/
	        if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
	          /*create a DIV element for each matching element:*/
	          b = document.createElement("DIV");
	          /*make the matching letters bold:*/
	          b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
	          b.innerHTML += arr[i].substr(val.length);
	          /*insert a input field that will hold the current array item's value:*/
	          b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
	          /*execute a function when someone clicks on the item value (DIV element):*/
	          b.addEventListener("click", function(e) {
	              /*insert the value for the autocomplete text field:*/
	              inp.value = this.getElementsByTagName("input")[0].value;
	              /*close the list of autocompleted values,
	              (or any other open lists of autocompleted values:*/
	              closeAllLists();
	          });
	          a.appendChild(b);
	        }
	      }
	  });
	  /*execute a function presses a key on the keyboard:*/
	  inp.addEventListener("keydown", function(e) {
	      var x = document.getElementById(this.id + "autocomplete-list");
	      if (x) x = x.getElementsByTagName("div");
	      if (e.keyCode == 40) {
	        /*If the arrow DOWN key is pressed,
	        increase the currentFocus variable:*/
	        currentFocus++;
	        /*and and make the current item more visible:*/
	        addActive(x);
	      } else if (e.keyCode == 38) { //up
	        /*If the arrow UP key is pressed,
	        decrease the currentFocus variable:*/
	        currentFocus--;
	        /*and and make the current item more visible:*/
	        addActive(x);
	      } else if (e.keyCode == 13) {
	        /*If the ENTER key is pressed, prevent the form from being submitted,*/
	        e.preventDefault();
	        if (currentFocus > -1) {
	          /*and simulate a click on the "active" item:*/
	          if (x) x[currentFocus].click();
	        }
	      }
	  });
	  function addActive(x) {
	    /*a function to classify an item as "active":*/
	    if (!x) return false;
	    /*start by removing the "active" class on all items:*/
	    removeActive(x);
	    if (currentFocus >= x.length) currentFocus = 0;
	    if (currentFocus < 0) currentFocus = (x.length - 1);
	    /*add class "autocomplete-active":*/
	    x[currentFocus].classList.add("autocomplete-active");
	  }
	  function removeActive(x) {
	    /*a function to remove the "active" class from all autocomplete items:*/
	    for (var i = 0; i < x.length; i++) {
	      x[i].classList.remove("autocomplete-active");
	    }
	  }
	  function closeAllLists(elmnt) {
	    /*close all autocomplete lists in the document,
	    except the one passed as an argument:*/
	    var x = document.getElementsByClassName("autocomplete-items");
	    for (var i = 0; i < x.length; i++) {
	      if (elmnt != x[i] && elmnt != inp) {
	        x[i].parentNode.removeChild(x[i]);
	      }
	    }
	  }
	  /*execute a function when someone clicks in the document:*/
	  document.addEventListener("click", function (e) {
	      closeAllLists(e.target);
	  });
	}

	/*An array containing all the country names in the world:*/
	var countries = ["Afghanistan","Albania","Algeria","Andorra","Angola","Anguilla","Antigua & Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia & Herzegovina","Botswana","Brazil","British Virgin Islands","Brunei","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Canada","Cape Verde","Cayman Islands","Central Arfrican Republic","Chad","Chile","China","Colombia","Congo","Cook Islands","Costa Rica","Cote D Ivoire","Croatia","Cuba","Curacao","Cyprus","Czech Republic","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Ethiopia","Falkland Islands","Faroe Islands","Fiji","Finland","France","French Polynesia","French West Indies","Gabon","Gambia","Georgia","Germany","Ghana","Gibraltar","Greece","Greenland","Grenada","Guam","Guatemala","Guernsey","Guinea","Guinea Bissau","Guyana","Haiti","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Isle of Man","Israel","Italy","Jamaica","Japan","Jersey","Jordan","Kazakhstan","Kenya","Kiribati","Kosovo","Kuwait","Kyrgyzstan","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Mauritania","Mauritius","Mexico","Micronesia","Moldova","Monaco","Mongolia","Montenegro","Montserrat","Morocco","Mozambique","Myanmar","Namibia","Nauro","Nepal","Netherlands","Netherlands Antilles","New Caledonia","New Zealand","Nicaragua","Niger","Nigeria","North Korea","Norway","Oman","Pakistan","Palau","Palestine","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Puerto Rico","Qatar","Reunion","Romania","Russia","Rwanda","Saint Pierre & Miquelon","Samoa","San Marino","Sao Tome and Principe","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","South Korea","South Sudan","Spain","Sri Lanka","St Kitts & Nevis","St Lucia","St Vincent","Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor L'Este","Togo","Tonga","Trinidad & Tobago","Tunisia","Turkey","Turkmenistan","Turks & Caicos","Tuvalu","Uganda","Ukraine","United Arab Emirates","United Kingdom","United States of America","Uruguay","Uzbekistan","Vanuatu","Vatican City","Venezuela","Vietnam","Virgin Islands (US)","Yemen","Zambia","Zimbabwe"];
	

	/*initiate the autocomplete function on the "myInput" element, and pass along the countries array as possible autocomplete values:*/
	autocomplete(document.getElementById("myInput1"), countries);

</script>

  	
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
</html>