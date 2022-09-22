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

      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="index.jsp" class="active">Home</a></li>
          <li><a href="about.html">Flight</a></li>
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
  <div class="data-ex" style="color:black; margin-top:300px;margin-left:50px; "><h3>HERE YOUR FLIGHTS!<h3></div>
  
  <div class="container-data" style="background: #FFFFFF;

border-radius: 10px; padding:10px; margin-left:130px;">
   <div class="data" style="align-items:center; margin-top:-150px; margin-left:300px;">
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
border-radius: 15px; border: 2px solid #120686;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="assets/img/Phoenix.svg" class="img-fluid rounded-start" alt="..." style="width:150px; height:285px;">
    </div>
    <div class="col-md-8">
      <div class="card-body" style="background-color: #3333ff; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
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
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Book Now
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="body {
  display: flex;
  justify-content: center;
  margin-top: 200px;
  background-image: url('data:image/svg+xml,%3Csvg xmlns="http://www.w3.org/2000/svg" width="100" height="100" viewBox="0 0 100 100"%3E%3Cg fill-rule="evenodd"%3E%3Cg fill="%239C92AC" fill-opacity="0.4"%3E%3Cpath opacity=".5" d="M96 95h4v1h-4v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4h-9v4h-1v-4H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15v-9H0v-1h15V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h9V0h1v15h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9h4v1h-4v9zm-1 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm9-10v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-10 0v-9h-9v9h9zm-9-10h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9zm10 0h9v-9h-9v9z"/%3E%3Cpath d="M6 5V0H5v5H0v1h5v94h1V6h94V5H6z"/%3E%3C/g%3E%3C/g%3E%3C/svg%3E');
}

.modal-body {
  display: flex;
  padding: 0;
  border-radius: 4rem;
  font-family: 'PT Sans', sans-serif;
}

.modal-content {
  border-radius: 4rem;
  width: 140%;
  -webkit-box-shadow: -1px -2px 42px -19px rgba(0,0,0,0.74);
-moz-box-shadow: -1px -2px 42px -19px rgba(0,0,0,0.74);
box-shadow: -1px -2px 42px -19px rgba(0,0,0,0.74);
}
.modal-content h1, .modal-content h2, .modal-content h3 {
    text-align: center;
}
.modal-content h1 {
  font-size: 1.3em;
  text-transform: uppercase;
}

.modal-content h2 {
    font-size: 1.1em;
}
.modal-content h3 {
  font-size: .8em;
  letter-spacing: 2px;
}
form {
    font-size: .8em;
}
.column {
  flex: 50%;
  padding: 10px;
}

.column#main {
  flex: 75%;
  padding: 50px;
  margin-top: 30px;
  margin-left: 15px;
}

#secondary {
  background-color: #F9BC35;
  border-radius: 0 4rem 4rem 0;
  text-align: center;
}

#main .form-control {
  border-radius: 0;
  font-size: .9em;
}

.btn {
  text-transform: uppercase;
  border-radius: .15rem;
  width: 200px;
  padding: .150rem .75rem;
  margin: 30px auto;
  font-family: 'PT Sans', sans-serif;
  letter-spacing: 2px;
}

.btn-primary {
  border-color: rgba( 255, 255, 255, 0);
  background: #f1da36; /* Old browsers */
background: -moz-linear-gradient(left, #f1da36 0%, #fca86c 99%); /* FF3.6-15 */
background: -webkit-linear-gradient(left, #f1da36 0%,#fca86c 99%); /* Chrome10-25,Safari5.1-6 */
background: linear-gradient(to right, #f1da36 0%,#fca86c 99%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f1da36', endColorstr='#fca86c',GradientType=1 ); /* IE6-9 */
Color format:     Comments
}

.btn-primary:hover {
  border-color: rgba( 255, 255, 255, 0);
}

#main .btn-primary {
  width: 100%;
}
#secondary .btn-primary {
  background: #f8f9fa4f;
  color: #000;
}
.modal-body label {
  margin-bottom: 0;
}

.sec-content {
  margin-top: 85%;
}">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body">
        <div class="column" id="main">
          <h1>Sign Up </h1>
          <h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>
          <form>
            <div class="form-group">
              <label for="exampleInputName">Name</label>
              <input type="name" class="form-control" id="exampleInputName" placeholder="Name">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">E-mail </label>
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="E-mail">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Password</label>
              <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            <button type="submit" class="btn btn-primary">Sign Up</button>
          </form>
        </div>
        <div>
          <?xml version="1.0" encoding="UTF-8"?>
          <svg width="67px" height="578px" viewBox="0 0 67 578" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
              <!-- Generator: Sketch 53.2 (72643) - https://sketchapp.com -->
              <title>Path</title>
              <desc>Created with Sketch.</desc>
              <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <path d="M11.3847656,-5.68434189e-14 C-7.44726562,36.7213542 5.14322917,126.757812 49.15625,270.109375 C70.9827986,341.199016 54.8877465,443.829224 0.87109375,578 L67,578 L67,-5.68434189e-14 L11.3847656,-5.68434189e-14 Z" id="Path" fill="#F9BC35"></path>
              </g>
          </svg>
        </div>
        <div class="column" id="secondary">
          <div class="sec-content">
            <h2>Welcome Back!</h2>
            <h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>
            <button type="button" class="btn btn-primary">Login</button>
          </div>
        </div>
      </div>
    </div>
  </div>
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