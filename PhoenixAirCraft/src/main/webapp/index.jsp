<!DOCTYPE html>
<html lang="en">
<%@page import="java.sql.*" %>

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
      <link rel="stylesheet" href="static/css/chat.css">
    <link rel="stylesheet" href="static/css/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>

<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">

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
  </header><!-- End Header -->
  <!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero d-flex align-items-center">
    <div class="container">
      <div class="row gy-4 d-flex justify-content-between">
        <div class="col-lg-6 order-2 order-lg-1 d-flex flex-column justify-content-center">
          <h2 data-aos="fade-up">Life is Short And<br> The World is Wide!</h2>
          <p data-aos="fade-up" data-aos-delay="100">To Get the best of your adventure you just need to leave and<br>
go where you like. We are waiting for you.</p>
           <a href="Flights.jsp"><button type="button" id="">Book Your Flight</button></a>
           
          

          

        <div class="col-lg-5 order-1 order-lg-2 hero-img" data-aos="zoom-out">
          <img src="assets/img/" class="img-fluid mb-3 mb-lg-0" alt="">
        </div>

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

       <button type="submit" class="btn btn-primary" >Show Flights</button>
      
       
           </div>
           <img class="form-img4" src="assets/img/Location.svg" alt="">
          </form>
          </div>
  </section><!-- End Hero Section -->

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

  <main id="main">

    <!-- ======= Featured Services Section ======= -->
     <section id="featured-services" class="featured-services">
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-4 col-md-6 service-item d-flex" data-aos="fade-up">
            <div class="icon flex-shrink-0"><i class="fa-solid fa-cart-flatbed"></i></div>
            <div>
              <h4 class="title">Bag</h4>
              <p class="description">Those who need to store baggage temporarily can use the secure short-term baggage storage facility on Level 5 of Terminal</p>
              <a href="service-details.html" class="readmore stretched-link"><span>Learn More</span><i class="bi bi-arrow-right"></i></a>
            </div>
          </div>
          <!-- End Service Item -->

          <div class="col-lg-4 col-md-6 service-item d-flex" data-aos="fade-up" data-aos-delay="100">
            <div class="icon flex-shrink-0"><i class="fa-solid fa-truck"></i></div>
            <div>
              <h4 class="title">Meals</h4>
              <p class="description">An airline meal, airline food, or in-flight meal is a meal served to passengers on board a commercial airliner. These meals are prepared by specialist airline catering services and normally served to passengers using an airline service trolley.</p>
              <a href="service-details.html" class="readmore stretched-link"><span>Learn More</span><i class="bi bi-arrow-right"></i></a>
            </div>
          </div><!-- End Service Item -->

          <div class="col-lg-4 col-md-6 service-item d-flex" data-aos="fade-up" data-aos-delay="200">
            <div class="icon flex-shrink-0"><i class="fa-solid fa-truck-ramp-box"></i></div>
            <div>
              <h4 class="title">checked baggages </h4>
              <p class="description">as a service we take the responsibility of all the passengers. so we do check every baggages by our Airline as a service for the passengers.</p>
              <a href="service-details.html" class="readmore stretched-link"><span>Learn More</span><i class="bi bi-arrow-right"></i></a>
            </div>
          </div><!-- End Service Item -->

        </div>

      </div>
    </section><!-- End Featured Services Section -->
    <!-- ======= About Us Section ======= -->
    <!-- ======= Stats Counter Section ======= -->
    <section id="stats-counter" class="stats-counter pt-0">
      <div class="container" data-aos="fade-up">

        <div class="row gy-4">

          <div class="col-lg-3 col-md-6">
            <div class="stats-item text-center w-100 h-100">
              <span data-purecounter-start="0" data-purecounter-end="232" data-purecounter-duration="1" class="purecounter"></span>
              <p>Clients</p>
            </div>
          </div><!-- End Stats Item -->

          <div class="col-lg-3 col-md-6">
            <div class="stats-item text-center w-100 h-100">
              <span data-purecounter-start="0" data-purecounter-end="521" data-purecounter-duration="1" class="purecounter"></span>
              <p>Projects</p>
            </div>
          </div><!-- End Stats Item -->

          <div class="col-lg-3 col-md-6">
            <div class="stats-item text-center w-100 h-100">
              <span data-purecounter-start="0" data-purecounter-end="1453" data-purecounter-duration="1" class="purecounter"></span>
              <p>Hours Of Support</p>
            </div>
          </div><!-- End Stats Item -->

          <div class="col-lg-3 col-md-6">
            <div class="stats-item text-center w-100 h-100">
              <span data-purecounter-start="0" data-purecounter-end="32" data-purecounter-duration="1" class="purecounter"></span>
              <p>Workers</p>
            </div>
          </div><!-- End Stats Item -->

        </div>

      </div>
    </section>

    <!-- ======= Services Section ======= -->
    <!-- ======= Services Section ======= -->
    <section id="service" class="services pt-0">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <span>Our Services</span>
          <h2>Our Services</h2>

        </div>

        <div class="row gy-4">

          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
            <div class="card">
              <div class="card-img">
                <img src="assets/img/storage-service.jpg" alt="" class="img-fluid">
              </div>
              <h3><a href="service-details.html" class="stretched-link">Storage</a></h3>
              <p>The schedule of all maintenance tasks and repetitive ground checks (together with the corresponding Job Cards) as specified in the Airbus documentation during 
                aircraft parking and storage can assist operators in this activity.</p>
            </div>
          </div><!-- End Card Item -->

          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="200">
            <div class="card">
              <div class="card-img">
                <img src="assets/img/logistics-service.jpg" alt="" class="img-fluid">
              </div>
              <h3><a href="service-details.html" class="stretched-link">Logistics</a></h3>
              <p>Logistics management and aviation are two of the most crucial areas of growth in companies throughout Texas and the United States. NAFTA, Alliance Airport, Love Field and the expansion of D/FW International 
                Airport make the Dallas/Fort Worth metroplex a major force in the aviation logistics field.</p>
            </div>
          </div><!-- End Card Item -->

          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="300">
            <div class="card">
              <div class="card-img">
                <img src="assets/img/cargo-service.jpg" alt="" class="img-fluid">
              </div>
              <h3><a href="service-details.html" class="stretched-link">Cargo</a></h3>
              <p>When looking at the various types of cargo transported by air, they fall into two main groups: General Cargo and Special Cargo.
                Special Cargo is then divided up into smaller specialized sub-groups.
                It is these specialized sub-groups we will take a much closer look at further on.</p>
            </div>
          </div><!-- End Card Item -->

          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="400">
            <div class="card">
              <div class="card-img">
                <img src="assets/img/trucking-service.jpg" alt="" class="img-fluid">
              </div>
              <h3><a href="service-details.html" class="stretched-link">Trucking</a></h3>
              <p>To provide greater convenience to our express air customers, Polar offers scheduled trucking services.
                Forward cargo quickly and dependably—from air to ground to final destination—using a single carrier.
                Our trucking fleet features GPS tracking systems, roller bed floors, dry vans, and refrigerated trucks. Our services include:</p>
            </div>
          </div><!-- End Card Item -->

          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="500">
            <div class="card">
              <div class="card-img">
                <img src="assets/img/packaging-service.jpg" alt="" class="img-fluid">
              </div>
              <h3><a href="service-details.html" class="stretched-link">Packaging</a></h3>
              <p>Packaging offers strength and durability that are demanded during transportation. 
                Tex Year has kept paying effort to R&D and innovation in order to assure the workable packaging on products,
                 stability, safety, and the consistence which is not compromised by temperature or weight variation. </p>
            </div>
          </div><!-- End Card Item -->

          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="600">
            <div class="card">
              <div class="card-img">
                <img src="assets/img/warehousing-service.jpg" alt="" class="img-fluid">
              </div>
              <h3><a href="service-details.html" class="stretched-link">Warehousing</a></h3>
              <p>As part of our laundry and logistics screening facility, we offer warehousing and supply chain management services to airlines.
                We operate a bonded warehouse providing you with confidence that your supplies are as secure as they would be in an airside facility.</p>
            </div>
          </div><!-- End Card Item -->

        </div>

      </div>
    </section><!-- End Services Section -->    <!-- ======= Call To Action Section ======= -->

    <!-- ======= Call To Action Section ======= -->
    <section id="call-to-action" class="call-to-action">
      <div class="container" data-aos="zoom-out">

        <div class="row justify-content-center">
          <div class="col-lg-8 text-center">
            <h3>Call To Action</h3>
            <p>We would be more than happy to help you. If you are unable to find what you are looking for here, please call</p>
            <a class="cta-btn" href="#">Call To Action</a>
          </div>
        </div>

      </div>
    </section><!-- End Call To Action Section -->

    <!-- ======= Features Section ======= -->
        <!-- ======= Features Section ======= -->
    <section id="features" class="features">
      <div class="container">

        <div class="row gy-4 align-items-center features-item" data-aos="fade-up">

          <div class="col-md-5">
            <img src="assets/img/features-1.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7">
            <h3>Best Customer Service</h3>
            <p class="fst-italic">
          
            </p>
            <ul style="color:black;">
              <li><i class="bi bi-check"></i>24 hr care and sefety. </li>
              <li><i class="bi bi-check"></i>Kindness and unblievable support to Passengers. </li>
              <li><i class="bi bi-check"></i>Just having satisfied customers isn't good enough anymore</li>
            </ul>
          </div>
        </div><!-- Features Item -->

        <div class="row gy-4 align-items-center features-item" data-aos="fade-up">
          <div class="col-md-5 order-1 order-md-2">
            <img src="assets/img/features-2.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 order-2 order-md-1">
            <h3>Best Home Delivery Service</h3>  
                        <ul style="color:black;">
              <li><i class="bi bi-check"></i>100% Guranteed. </li>
              <li><i class="bi bi-check"></i>Safety and Durable. </li>
            
            </ul>
                   
        </div><!-- Features Item -->
      </div>
    </section><!-- End Features Section -->
    <!-- ======= Pricing Section ======= -->
     <section id="pricing" class="pricing">
      <div class="container" data-aos="fade-up">

        <div class="row gy-4">

          <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
            <div class="pricing-item">
              <h3>Free Plan</h3>
              <h4><sup>$</sup>0<span> / month</span></h4>
              <ul>
                <li><i class="bi bi-check"></i> Industry-leading ticketing system</li>
                <li><i class="bi bi-check"></i> Messaging across web, mobile and social</li>
                <li><i class="bi bi-check"></i> Email, voice, SMS, and live chat support</li>
                <li class="na"><i class="bi bi-x"></i> <span>Service Level Agreement (SLA) management</span></li>
                <li class="na"><i class="bi bi-x"></i> <span>+Extra Services</span></li>
              </ul>
              <a href="#" class="buy-btn">Buy Now</a>
            </div>
          </div><!-- End Pricing Item -->

          <div class="col-lg-4" data-aos="fade-up" data-aos-delay="200">
            <div class="pricing-item featured">
              <h3>Business Plan</h3>
              <h4><sup>$</sup>29<span> / month</span></h4>
              <ul>
                <li><i class="bi bi-check"></i> Industry-leading ticketing system</li>
                <li><i class="bi bi-check"></i> Messaging across web, mobile and social</li>
                <li><i class="bi bi-check"></i> Email, voice, SMS, and live chat support</li>
                <li><i class="bi bi-check"></i> Service Level Agreement (SLA) management</li>
                <li><i class="bi bi-check"></i> +Extra Services</li>
              </ul>
              <a href="#" class="buy-btn">Buy Now</a>
            </div>
          </div><!-- End Pricing Item -->

          <div class="col-lg-4" data-aos="fade-up" data-aos-delay="300">
            <div class="pricing-item">
              <h3>Developer Plan</h3>
              <h4><sup>$</sup>49<span> / month</span></h4>
              <ul>
                <li><i class="bi bi-check"></i> Industry-leading ticketing system</li>
                <li><i class="bi bi-check"></i> Messaging across web, mobile and social</li>
                <li><i class="bi bi-check"></i> Email, voice, SMS, and live chat support</li>
                <li><i class="bi bi-check"></i> Service Level Agreement (SLA) management</li>
                <li><i class="bi bi-check"></i> +Extra Services</li>
              </ul>
              <a href="#" class="buy-btn">Buy Now</a>
            </div>
          </div><!-- End Pricing Item -->

        </div>

      </div>
    </section><!-- End Pricing Section -->

    <!-- ======= Testimonials Section ======= -->
<section id="testimonials" class="testimonials">
      <div class="container">

        <div class="slides-1 swiper" data-aos="fade-up">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="images/Kavindu.png" class="testimonial-img" alt="">
                <h3>Kavindu Lakshitha</h3>
                <h4>Ceo &amp;Phoenix Air line</h4>
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  <i class="bi bi-quote quote-icon-left"></i>
                  I would highly recommend. They are great to work with. 
                  <i class="bi bi-quote quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="images/madawa.png" class="testimonial-img" alt="">
                <h3>Madawa de Silva</h3>
                <h4>Operations manager</h4>
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  <i class="bi bi-quote quote-icon-left"></i>
                  Very User Friendly and love it.
                  <i class="bi bi-quote quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="images/Ridmi.png" class="testimonial-img" alt="">
                <h3>Ridmi Bandara</h3>
                <h4>Receptionist</h4>
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  <i class="bi bi-quote quote-icon-left"></i>
                   site is beautiful! It is easy to navigate.and more helpful.
                  <i class="bi bi-quote quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

           
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->

    <!-- ======= Frequently Asked Questions Section ======= -->
<section id="faq" class="faq">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <span>Frequently Asked Questions</span>
          <h2>Frequently Asked Questions</h2>

        </div>

        <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="200">
          <div class="col-lg-10">

            <div class="accordion accordion-flush" id="faqlist">

              <div class="accordion-item">
                <h3 class="accordion-header">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-1">
                    <i class="bi bi-question-circle question-icon"></i>
                    What can I use pheonix airline Wi-Fi for?
                  </button>
                </h3>
                <div id="faq-content-1" class="accordion-collapse collapse" data-bs-parent="#faqlist">
                  <div class="accordion-body">
                    You can use SriLankan's in-flight wi-fi network to surf the internet, use email, instant messaging and social networking like you would on ground.
                  </div>
                </div>
              </div><!-- # Faq item-->

              <div class="accordion-item">
                <h3 class="accordion-header">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-2">
                    <i class="bi bi-question-circle question-icon"></i>
                    What devices can I use with pheonix airline Wi-Fi?
                  </button>
                </h3>
                <div id="faq-content-2" class="accordion-collapse collapse" data-bs-parent="#faqlist">
                  <div class="accordion-body">
                    Card types available are Visa, Master, AMEX, JCB CUP, MAESTRO  
                    Some card types will be shown only for applicable payment currencies
                    Supported currencies for each card type are as follows.  
                    JCB - USD, EUR, THB, GBP, CHF, HKD, SDG, JPY
                    Maestro – GBP, EUR, SGD, USD, JPY, HKD, MYR, THB, SAR, AED, QAR, KWD, CHF
                    AMEX – LKR, GBP, EUR, SGD, USD, JPY, HKD, MYR, THB, SAR, AED, QAR, KWD, CHF
                    UnionPay - USD, CNY, HKD (only for flights departing China & Hong Kong)
                    
                  </div>
                </div>
              </div><!-- # Faq item-->

              <div class="accordion-item">
                <h3 class="accordion-header">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-3">
                    <i class="bi bi-question-circle question-icon"></i>
                    Can my child travel alone on a pheonix Airlins Flight?
                  </button>
                </h3>
                <div id="faq-content-3" class="accordion-collapse collapse" data-bs-parent="#faqlist">
                  <div class="accordion-body">
                    Children between the ages of 5 and 16 travelling alone are classified as Unaccompanied Minors. When booking a ticket for an unaccompanied minor,
                     please make sure that you keep the airline alerted to ensure that special arrangements are made for the care of the Unaccompanied Minor during their travel.
                     Tickets for Unaccompanied minors cannot be purchased online. Please contact nearest ticket office, global call center in such instances.
                  </div>
                </div>
              </div><!-- # Faq item-->

              <div class="accordion-item">
                <h3 class="accordion-header">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-4">
                    <i class="bi bi-question-circle question-icon"></i>
                    What is the classification for Adult, Young Adult, Child, and Infant?
                  </button>
                </h3>
                <div id="faq-content-4" class="accordion-collapse collapse" data-bs-parent="#faqlist">
                  <div class="accordion-body">
                    <i class="bi bi-question-circle question-icon"></i>
                    Young adults (12-15 years of age and before reaching the 16th birthday)
These bookings must include an adult when booking online. Young adults can travel alone but these flights can only be booked through our Global Contact Center or at your nearest ticket office

Children (under 12 years and between age 2 and 11 years)
Cannot travel alone and these bookings must include an adult.

Infants (under 2 years of age)
These bookings must include one adult for every infant when booking online. This is because infants are seated on an adult’s lap instead of getting their own seats. Please contact us via our Global Contact Center or through your nearest ticket office.

                  </div>
                </div>
              </div><!-- # Faq item-->
            </div>

          </div>
        </div>

      </div>
    </section><!-- End Frequently Asked Questions Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
    <div>
          <iframe style="border:0; width: 100%; height: 340px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.5757962996736!2d80.03938421482283!3d6.821334421521578!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2523b05555555%3A0x546c34cd99f6f488!2sNSBM%20Green%20University!5e0!3m2!1sen!2slk!4v1665120632620!5m2!1sen!2slk" " frameborder="0" allowfullscreen></iframe>
        </div><!-- End Google Maps -->
  
  <footer id="footer" class="footer">

    <div class="container">                                   
      <div class="row gy-4">
        <div class="col-lg-5 col-md-12 footer-info">
          <a href="about.jsp" class="logo d-flex align-items-center">
            <span>About</span>
            
          </a>
                    <img src="assets/img/Phoenix.svg" style="width:100px; height:100px; margin:30px 0px 30px 0px;">
          <p>Occasionally we have to interpret an international treaty - one, perhaps, affecting airlines and liability for injury to passengers or damage to goods. Then, of course, we have to look to the precedents of other member nations in resolving issues.At Phoenix Airlines, we have built a business around the love of travel that has lasted three-quarters of a century. And I'm pretty sure we were just getting started.</p>

          <div class="social-links d-flex mt-4">
            <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
            <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
            <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
            <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

        <div class="col-lg-2 col-6 footer-links">
          <h4>Useful Links</h4>
          <ul  >
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
            <li><a href="#">Touring</a></li>
            <li><a href="#">Cargo Service</a></li>
            <li><a href="#">Best Deals</a></li>
            <li><a href="#">24/hr call center</a></li>
            <li><a href="#">Care and sharing hands</a></li>
          </ul>
        </div>

        <div class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
          <h4>Contact Us</h4>
          <p>
            colombo,535022 <br>
            Sri Lanka <br><br>
            <strong>Phone:</strong> +94 589 55488 55<br>
            <strong>Email:</strong> Phoenix.com/en_uk/lk<br>
          </p>

        </div>

      </div>
    </div>

    <div class="container mt-4">
      <div class="copyright">
        &copy; Copyright <strong><span>Phoenix Air Line</span></strong>. All Rights Reserved<img src="assets/img/Phoenix.svg" style="margin-left:10px;width:30px; height:30px;">
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/logis-bootstrap-logistics-website-template/ -->
        Designed by <a href="index.jsp">Phoenix Airlines</a>
      </div>
    </div>

  </footer>

  <!-- End Footer -->
  <div class="chat-bar-collapsible">
        <button id="chat-button" type="button" class="collapsible">Chat with us!
            <i id="chat-icon" style="color: #fff;" class="fa fa-fw fa-comments-o"></i>
        </button>
        <div class="content">
            <div class="full-chat-block">
                <div class="outer-container">
                    <div class="chat-container">
                        <div id="chatbox">
                            <h5 id="chat-timestamp" style="color:black;"></h5>
                            <p id="botStarterMessage" class="botText"><span>Loading...</span></p>
                        </div>
                        <div class="chat-bar-input-block">
                            <div id="userInput">
                                <input id="textInput" class="input-box" type="text" name="msg"
                                    placeholder="Tap 'Enter' to send a message">
                                <p></p>
                            </div>

                            <div class="chat-bar-icons">
                                <i id="chat-icon" style="color: crimson;" class="fa fa-fw fa-heart"
                                    onclick="heartButton()"></i>
                                <i id="chat-icon" style="color: #333;" class="fa fa-fw fa-send"
                                    onclick="sendButton()"></i>
                            </div>
                        </div>

                        <div id="chat-bar-bottom">
                            <p></p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

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
    <script src="assets/js/main.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
   <script>
		var status = document.getElementById("status").value;
         if(status=="success"){
			swal("Flight Inserted Successfully", "Insert Success", "success");
		}
         else if(status=="AddBooking"){
        	 swal("New User Booking Inserted Successfully", "Insert Success", "success");

         }

	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="static/scripts/responses.js"></script>
<script src="static/scripts/chat.js"></script>
</body>

</html>