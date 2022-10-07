<!DOCTYPE html>
<html dir="ltr" lang="en">        
<%@page import="java.sql.*" %>
<%@page import="com.Kavindu.*"%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Flexy lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Flexy admin lite design, Flexy admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="Flexy Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Phoenix Airline</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/Flexy-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/Phoenix.svg">
    <!-- Custom CSS -->
    <link href="../assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
    <link href="../assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../dist/css/style.min.css" rel="stylesheet">
      <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
<!-- help me -->

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
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
   <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
       
      <a href="index.html" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
                                   <img src="../assets/images/Phoenix.svg" style="width:50px; heigth:50px;" alt="homepage" class="" />
        <h1>Phoenix Airline</h1>
      </a>

      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
      <nav id="navbar" class="navbar">

        <ul>
          <li><a href="../../index.jsp" >Home</a></li>
          <li><a href="../../Flights.jsp">Flight</a></li>

          <li><a href="StaffDashboard(Grade-A)/html/StaffDashboard.jsp" class="active">Dashboard</a></li>
          <li class="dropdown"><a href="../../about.jsp"><span>About Us</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
				<li><a href="../about.html">Phoenix Airline</a></li>
              <li><a href="../pricing.html">Offers</a></li>
              <li><a href="../services.html">Services</a></li>       
              <li><a href="../contact.html">Contact Us</a></li>  
              <li><a  href="../get-a-quote.html">Get a Quote</a></li>

            </ul>
          </li>            

            </ul>
                         <%
          HttpSession sessionUser = request.getSession(false);
          String user= sessionUser.getAttribute("user").toString();
          String MemberID = sessionUser.getAttribute("MemberID").toString();
          try {
  	        Statement st;
  	        String sql;
  			String url="jdbc:mysql://localhost:3306/Phoenix_Airline_System?useSSL=false&allowPublicKeyRetrieval=True";
  			Class.forName("com.mysql.cj.jdbc.Driver");
  			Connection con = DriverManager.getConnection(url,"root","Kavindu84");
  			st= (Statement) con.createStatement();
  		    sql ="Select * from Users where memberID ='"+MemberID+"'";
  			
  			ResultSet rs = st.executeQuery(sql);

  	        		while(rs.next()){

  	          	    
         %>
               </li>
				        <ul class="navbar-nav float-end" style="margin-right:40px; margin-top:-20px;" >
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown" style="text-allign:center;">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <img src="../assets/images/icons8-male-user-50.png" alt="user" class="rounded-circle" width="31" style="margin-left:30px;">Hi,<%=user %>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end user-dd animated" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="pages-profile.jsp"><i class="ti-user m-r-5 m-l-5"></i>
                                    My Profile</a>
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-wallet m-r-5 m-l-5"></i>
                                    My Balance</a>
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-email m-r-5 m-l-5"></i>
                                    Inbox</a>
                            </ul>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                    </ul>


        </ul>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
 
 <div style="margin-top:60px;">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin6">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="index.html">
                        <!-- Logo icon -->

                        <!--End Logo icon -->
                        <!-- Logo text -->

                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i
                            class="ti-menu ti-close"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-start me-auto">
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                        <li class="nav-item search-box" style="margin-top:30px; width:100px;"> <a class="nav-link waves-effect waves-dark"
                                href="javascript:void(0)"><i class="mdi mdi-magnify me-1"></i> <span class="font-16">Search</span></a>
                            <form class="app-search position-absolute">
                                <input type="text" class="form-control" placeholder="Search &amp; enter" style="width:1100px;"> <a
                                    class="srh-btn"><i class="mdi mdi-window-close" style="margin-left: 1000px;"></i></a>
                            </form>
                        </li>
                    </ul>
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-end">
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">

                            </a>
                            <ul class="dropdown-menu dropdown-menu-end user-dd animated" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-user m-r-5 m-l-5"></i>
                                    My Profile</a>
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-wallet m-r-5 m-l-5"></i>
                                    My Balance</a>
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-email m-r-5 m-l-5"></i>
                                    Inbox</a>
                            </ul>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
       <aside class="left-sidebar" data-sidebarbg="skin6" style="margin-top:100px; ">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar" >
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav" >
                    <ul id="sidebarnav" >
                       <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="pages-profile.jsp" aria-expanded="false"><i
                                    class="mdi mdi-account-network"></i><span class="hide-menu">Profile</span></a></li>
                           <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="StaffDashboard.jsp" aria-expanded="false"><i class="mdi mdi-airplane"></i><span
                                    class="hide-menu">Available Flights</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="StaffBooking.jsp" aria-expanded="false"><i class="mdi mdi-cart"></i><span
                                    class="hide-menu">User Bookings</span></a></li>

                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="Users.jsp" aria-expanded="false"><i class="mdi mdi-account-circle"></i><span
                                    class="hide-menu">Users</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="Staff.jsp" aria-expanded="false"><i class="mdi mdi-account-star-variant"></i><span
                                    class="hide-menu">STAFF-Grade(2)</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="Tickets.jsp" aria-expanded="false"><i class="mdi mdi-ticket"></i><span
                                    class="hide-menu">Tickets</span></a></li>

                        
                        <li class="text-center p-40 upgrade-btn">
                            <a href="https://www.wrappixel.com/templates/flexy-bootstrap-admin-template/"
                                class="btn d-block w-100 btn-danger text-white" target="_blank">Tell Us</a>
                        </li>
                    </ul>

                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside> 
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row align-items-center">
                    <div class="col-6">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mb-0 d-flex align-items-center">
                              <li class="breadcrumb-item"><a href="index.html" class="link"><i class="mdi mdi-home-outline fs-4"></i></a></li>
                              <li class="breadcrumb-item active" aria-current="page">Profile</li>
                            </ol>
                          </nav>
                        <h1 class="mb-0 fw-bold">Profile</h1> 
                    </div>
                    <div class="col-6">
                        <div class="text-end upgrade-btn">
                            <a href="https://www.wrappixel.com/templates/flexy-bootstrap-admin-template/" class="btn btn-primary text-white"
                                target="_blank">Apply to Staff</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <!-- Row -->
                <div class="row">
                    <!-- Column -->
                    <div class="col-lg-4 col-xlg-3 col-md-5">
                        <div class="card">
                            <div class="card-body">
                              	 
  	        	        

  	        	      
                                <center class="m-t-30"> <img src="../../assets/img/UserMale.png"  class="rounded-circle" width="150" />
                                    <h4 class="card-title m-t-10"><%= rs.getString("name") %></h4>
                                    <h6 class="card-subtitle"><%=rs.getString("role") %></h6>

                                </center>
                            </div>
                            <div>
                                <hr>
                            </div>
                            <div class="card-body"> <small class="text-muted">Email address </small>
                                <h6><%=rs.getString("email") %></h6> <small class="text-muted p-t-30 db">Phone</small>
                                <h6><%= rs.getString("phone")%></h6><small class="text-muted p-t-30 db">Date of Birth</small>
                                <h6><%= rs.getString("dob")%></h6> <small class="text-muted p-t-30 db">Address</small>
                                <h6><%=  	        	          rs.getString("add1")%>
          	        	        <%=rs.getString("add2")%>
          	        	        <%=rs.getString("add3")%> <%= rs.getString("city")%> <%=rs.getString("country") %></h6>
                                <div class="map-box">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d15842.653724365557!2d79.88568169999999!3d6.930771549999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2slk!4v1664723833177!5m2!1sen!2slk" width="100%" height="150" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                   
                                </div> <small class="text-muted p-t-30 db">Social Profile</small>
                                <br />
                                <button class="btn btn-circle btn-secondary"><i class="fab fa-facebook-f"></i></button>
                                <button class="btn btn-circle btn-secondary"><i class="fab fa-twitter"></i></button>
                                <button class="btn btn-circle btn-secondary"><i class="fab fa-youtube"></i></button>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <style>
                    .col-md-12{
                    color:black;
                    }
                    </style>

                    <div class="col-lg-8 col-xlg-9 col-md-7">
                        <div class="card">
                            <div class="card-body">
                            <span style="color: red; font-size:12px;">${error}</span>
                                <form class="form-horizontal form-material mx-2" method="get" action="../../register">
                                
                                    <div class="form-group">
                                        <label class="col-md-12">Full Name</label>
                                        <div class="col-md-12">
                                            <input type="text" placeholder="<%= rs.getString("name") %>"
                                                class="form-control form-control-line" name="name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">Email</label>
                                        <div class="col-md-12">
                                            <input type="email" placeholder="<%=rs.getString("email") %>"
                                                class="form-control form-control-line" 
                                                id="example-email" name="email">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Password</label>
                                        <div class="col-md-12">
                                            <input type="password" placeholder="password"
                                                class="form-control form-control-line" name="password">
                                        </div>
                                    </div>
                                      <div class="form-group">
                                        <label class="col-md-12">Date of Birth</label>
                                        <div class="col-md-12">
                                            <input type="password" placeholder="<%=rs.getString("dob") %>"
                                                class="form-control form-control-line" name="dob">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Phone No</label>
                                        <div class="col-md-12">
                                            <input type="text" placeholder="<%= rs.getString("phone")%>"
                                                class="form-control form-control-line" name="phone">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-12" style="color:black;">Select Country</label>
                                        <div class="col-sm-12">
                                            <select class="form-select shadow-none form-control-line" name="country">
                                <option value="-1">Update Nationality</option>
                                <option value="AF">AFGHANISTAN</option>
                                <option value="AL">ALBANIA</option>
                                <option value="DZ">ALGERIA</option>
                                <option value="AS">AMERICAN SAMOA</option>
                                <option value="AD">ANDORRA</option>
                                <option value="AO">ANGOLA</option>
                                <option value="AI">ANGUILLA</option>
                                <option value="AQ">ANTARCTICA</option>
                                <option value="AG">ANTIGUA AND BARBUDA</option>
                                <option value="AR">ARGENTINA</option>
                                <option value="AM">ARMENIA</option>
                                <option value="AW">ARUBA</option>
                                <option value="AU">AUSTRALIA</option>
                                <option value="NT">AUSTRALIA GOLD COAST</option>
                                <option value="AT">AUSTRIA</option>
                                <option value="AZ">AZERBAIJAN</option>
                                <option value="BS">BAHAMAS</option>
                                <option value="BH">BAHRAIN</option>
                                <option value="BD">BANGLADESH</option>
                                <option value="BB">BARBADOS</option>
                                <option value="BY">BELARUS</option>
                                <option value="BE">BELGIUM</option>
                                <option value="BZ">BELIZE</option>
                                <option value="BJ">BENIN</option>
                                <option value="BM">BERMUDA</option>
                                <option value="BT">BHUTAN</option>
                                <option value="BO">BOLIVIA</option>
                                <option value="BA">BOSNIA AND HERZEGOVINA</option>
                                <option value="BW">BOTSWANA</option>
                                <option value="BV">BOUVET ISLAND</option>
                                <option value="BR">BRAZIL</option>
                                <option value="IO">BRITISH INDIAN OCEAN TERRITORY</option>
                                <option value="BN">BRUNEI DARUSSALAM</option>
                                <option value="BG">BULGARIA</option>
                                <option value="BF">BURKINA FASO</option>
                                <option value="BI">BURUNDI</option>
                                <option value="KH">CAMBODIA</option>
                                <option value="CM">CAMEROON</option>
                                <option value="CA">CANADA</option>
                                <option value="CE">CANARY ISLANDS</option>
                                <option value="CV">CAPE VERDE</option>
                                <option value="KY">CAYMAN ISLANDS</option>
                                <option value="CF">CENTRAL AFRICAN REPUBLIC</option>
                                <option value="TD">CHAD</option>
                                <option value="CL">CHILE</option>
                                <option value="CN">CHINA</option>
                                <option value="CX">CHRISTMAS ISLANDS</option>
                                <option value="CC">COCOS / KEELING ISLANDS</option>
                                <option value="CO">COLOMBIA</option>
                                <option value="KM">COMOROS</option>
                                <option value="CG">CONGO</option>
                                <option value="CK">COOK ISLANDS</option>
                                <option value="CR">COSTA RICA</option>
                                <option value="CI">COTE D IVOIRE</option>
                                <option value="HR">CROATIA</option>
                                <option value="CU">CUBA</option>
                                <option value="CY">CYPRUS</option>
                                <option value="CZ">CZECH REPUBLIC</option>
                                <option value="KP">DEMOCRATIC PEOPLES REPUBLIC OF KOREA</option>
                                <option value="CD">DEMOCRATIC REPUBLIC OF CONGO</option>
                                <option value="DK">DENMARK</option>
                                <option value="DJ">DJIBOUTI</option>
                                <option value="DM">DOMINICA</option>
                                <option value="DO">DOMINICAN REPUBLIC</option>
                                <option value="TP">EAST TIMOR</option>
                                <option value="EC">ECUADOR</option>
                                <option value="EG">EGYPT</option>
                                <option value="SV">EL SALVADOR</option>
                                <option value="GQ">EQUATORIAL GUINEA</option>
                                <option value="ER">ERITREA</option>
                                <option value="EE">ESTONIA</option>
                                <option value="ET">ETHIOPIA</option>
                                <option value="FK">FALKLAND ISLANDS</option>
                                <option value="FO">FAROE ISLANDS</option>
                                <option value="FJ">FIJI</option>
                                <option value="FI">FINLAND</option>
                                <option value="FR">FRANCE</option>
                                <option value="GF">FRENCH GUIANA</option>
                                <option value="PF">FRENCH POLYNESIA</option>
                                <option value="TF">FRENCH SOUTHERN TERRITORIES</option>
                                <option value="FX">FX3</option>
                                <option value="GA">GABON</option>
                                <option value="GM">GAMBIA</option>
                                <option value="GE">GEORGIA</option>
                                <option value="DE">GERMANY</option>
                                <option value="GH">GHANA</option>
                                <option value="GI">GIBRALTAR</option>
                                <option value="GR">GREECE</option>
                                <option value="GL">GREENLAND</option>
                                <option value="GD">GRENADA</option>
                                <option value="GP">GUADELOUPE</option>
                                <option value="GU">GUAM</option>
                                <option value="GT">GUATEMALA</option>
                                <option value="GG">GUERNSEY</option>
                                <option value="GN">GUINEA</option>
                                <option value="GW">GUINEA BISSAU</option>
                                <option value="GY">GUYANA</option>
                                <option value="HT">HAITI</option>
                                <option value="HM">HEARD AND MCDONALD ISLANDS</option>
                                <option value="HN">HONDURAS</option>
                                <option value="HK">HONG KONG (CHINA)</option>
                                <option value="HU">HUNGARY</option>
                                <option value="IS">ICELAND</option>
                                <option value="IN">INDIA</option>
                                <option value="ID">INDONESIA</option>
                                <option value="IR">IRAN</option>
                                <option value="IQ">IRAQ</option>
                                <option value="IE">IRELAND</option>
                                <option value="IM">ISLE OF MAN</option>
                                <option value="IL">ISRAEL</option>
                                <option value="IT">ITALY</option>
                                <option value="JM">JAMAICA</option>
                                <option value="JP">JAPAN</option>
                                <option value="JE">JERSEY</option>
                                <option value="JO">JORDAN</option>
                                <option value="KZ">KAZAKSTAN</option>
                                <option value="KE">KENYA</option>
                                <option value="KI">KIRIBATI</option>
                                <option value="RK">KOSOVO</option>
                                <option value="KW">KUWAIT</option>
                                <option value="KG">KYRGYZSTAN</option>
                                <option value="LA">LAO PEOPLES DEMOCRATIC REPUBLIC</option>
                                <option value="LV">LATVIA</option>
                                <option value="LB">LEBANON</option>
                                <option value="LS">LESOTHO</option>
                                <option value="LR">LIBERIA</option>
                                <option value="LY">LIBYAN ARAB JAMAHIRIYA</option>
                                <option value="LI">LIECHTENSTEIN</option>
                                <option value="LT">LITHUANIA</option>
                                <option value="LU">LUXEMBOURG</option>
                                <option value="MO">MACAO (CHINA)</option>
                                <option value="MK">MACEDONIA FORMER YUGOSLAV REP</option>
                                <option value="MG">MADAGASCAR</option>
                                <option value="MW">MALAWI</option>
                                <option value="MY">MALAYSIA</option>
                                <option value="MV">MALDIVES</option>
                                <option value="ML">MALI</option>
                                <option value="MT">MALTA</option>
                                <option value="MH">MARSHALL ISLANDS</option>
                                <option value="MQ">MARTINIQUE</option>
                                <option value="MR">MAURITANIA</option>
                                <option value="MU">MAURITIUS</option>
                                <option value="YT">MAYOTTE</option>
                                <option value="MX">MEXICO</option>
                                <option value="FM">MICRONESIA</option>
                                <option value="MD">MOLDOVA REP OF</option>
                                <option value="MC">MONACO</option>
                                <option value="MN">MONGOLIA</option>
                                <option value="MS">MONTSERRAT</option>
                                <option value="MA">MOROCCO</option>
                                <option value="MZ">MOZAMBIQUE</option>
                                <option value="MM">MYANMAR</option>
                                <option value="NA">NAMIBIA</option>
                                <option value="NR">NAURU</option>
                                <option value="ND">ND</option>
                                <option value="NP">NEPAL</option>
                                <option value="NL">NETHERLANDS</option>
                                <option value="AN">NETHERLANDS ANTILLES</option>
                                <option value="NC">NEW CALEDONIA</option>
                                <option value="NZ">NEW ZEALAND</option>
                                <option value="NI">NICARAGUA</option>
                                <option value="NE">NIGER</option>
                                <option value="NG">NIGERIA</option>
                                <option value="NU">NIUE</option>
                                <option value="NF">NORFOLK ISLAND</option>
                                <option value="MP">NORTHERN MARIANA ISLANDS</option>
                                <option value="NO">NORWAY</option>
                                <option value="OM">OMAN</option>
                                <option value="PK">PAKISTAN</option>
                                <option value="PW">PALAU</option>
                                <option value="PS">PALESTINIAN TERRITORIES</option>
                                <option value="PA">PANAMA</option>
                                <option value="PG">PAPUA NEW GUINEA</option>
                                <option value="PY">PARAGUAY</option>
                                <option value="PE">PERU</option>
                                <option value="PH">PHILIPPINES</option>
                                <option value="PN">PITCAIRN ISLAND</option>
                                <option value="PL">POLAND</option>
                                <option value="PT">PORTUGAL</option>
                                <option value="PR">PUERTO RICO</option>
                                <option value="QA">QATAR</option>
                                <option value="KR">REPUBLIC OF KOREA (SOUTH KOREA)</option>
                                <option value="RS">REPUBLIC OF SERBIA</option>
                                <option value="YE">REPUBLIC OF YEMEN</option>
                                <option value="RE">REUNION</option>
                                <option value="RO">ROMANIA</option>
                                <option value="RU">RUSSIAN FEDERATION</option>
                                <option value="RW">RWANDA</option>
                                <option value="LC">SAINT LUCIA</option>
                                <option value="WS">SAMOA</option>
                                <option value="SM">SAN MARINO</option>
                                <option value="ST">SAO TOME AND PRINCIPE</option>
                                <option value="SA">SAUDI ARABIA</option>
                                <option value="SN">SENEGAL</option>
                                <option value="CS">SERBIA AND MONTENEGRO</option>
                                <option value="SC">SEYCHELLES</option>
                                <option value="SL">SIERRA LEONE</option>
                                <option value="SG">SINGAPORE</option>
                                <option value="SK">SLOVAKIA</option>
                                <option value="SI">SLOVENIA</option>
                                <option value="SB">SOLOMON ISLANDS</option>
                                <option value="SO">SOMALIA</option>
                                <option value="ZA">SOUTH AFRICA</option>
                                <option value="GS">SOUTH GEORGIA</option>
                                <option value="ES">SPAIN</option>
                                <option value="LK">SRI LANKA</option>
                                <option value="SH">ST HELENA</option>
                                <option value="KN">ST KITTS AND NEVIS</option>
                                <option value="PM">ST PIERRE AND MIQUELON</option>
                                <option value="VC">ST VINCENT AND THE GRENADINES</option>
                                <option value="SD">SUDAN</option>
                                <option value="SR">SURINAM</option>
                                <option value="SJ">SVALBARD AND JAN MEYEN ISLANDS</option>
                                <option value="SZ">SWAZILAND</option>
                                <option value="SE">SWEDEN</option>
                                <option value="CH">SWITZERLAND</option>
                                <option value="SY">SYRIAN ARAB REPUBLIC</option>
                                <option value="TW">TAIWAN (CHINA)</option>
                                <option value="TJ">TAJIKISTAN</option>
                                <option value="TZ">TANZANIA</option>
                                <option value="TH">THAILAND</option>
                                <option value="TI">TI7</option>
                                <option value="TG">TOGO</option>
                                <option value="TK">TOKELAU</option>
                                <option value="TO">TONGA</option>
                                <option value="TT">TRINIDAD AND TOBAGO</option>
                                <option value="TN">TUNISIA</option>
                                <option value="TR">TURKEY</option>
                                <option value="TM">TURKMENISTAN</option>
                                <option value="TC">TURKS AND CAICOS ISLANDS</option>
                                <option value="TV">TUVALU</option>
                                <option value="UG">UGANDA</option>
                                <option value="UA">UKRAINE</option>
                                <option value="AE">UNITED ARAB EMIRATES</option>
                                <option value="GB">UNITED KINGDOM</option>
                                <option value="UM">UNITED STATES MINOR OUTLYING ISLANDS</option>
                                <option value="US">UNITED STATES OF AMERICA</option>
                                <option value="UY">URUGUAY</option>
                                <option value="UZ">UZBEKISTAN</option>
                                <option value="VU">VANUATU</option>
                                <option value="VA">VATICAN CITY STATE</option>
                                <option value="VE">VENEZUELA</option>
                                <option value="VN">VIETNAM</option>
                                <option value="VG">VIRGIN ISLANDS</option>
                                <option value="VI">VIRGIN ISLANDS ... U.S.</option>
                                <option value="WF">WALLIS AND FUTUNA ISLANDS</option>
                                <option value="EH">WESTERN SAHARA</option>
                                <option value="YU">YUGOSLAVIA</option>
                                <option value="ZR">ZAIRE</option>
                                <option value="ZM">ZAMBIA</option>
                                <option value="ZW">ZIMBABWE</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Message</label>
                                        <div class="col-md-12">
                                            <textarea rows="5" class="form-control form-control-line"></textarea>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <input type="submit" class="btn btn-success text-white" value="Update Profile">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                </div>
                <%  }  }
  	       catch(Exception e){
  	    	   e.printStackTrace();
  	        	
  	        }
          %>
                <!-- Row -->
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->

            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
</script>
    
  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
   <div id="preloader"></div>
    <script src="../assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../dist/js/app-style-switcher.js"></script>
    <!--Wave Effects -->
    <script src="../dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../dist/js/custom.js"></script>
    <!--This page JavaScript -->
    <!--chartis chart-->
    <script src="../assets/libs/chartist/dist/chartist.min.js"></script>
    <script src="../assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
    <script src="../dist/js/pages/dashboards/dashboard1.js"></script>
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