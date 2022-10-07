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
  <!-- Favicons -->
  <link href="assets/img/Phoenix.svg" rel="icon">
  <link href="assets/img/Phoenix.svg" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->

 
  <!-- Template Main CSS File -->


   <link rel="stylesheet" href="assets/css/login.css">
</head>

<body background="assets/css/HomeBack.png" >
 
	<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
    <div class="box" style="top:100px;" ></div>
          <div img class="box-img" style="background-image:url(assets/css/Login.png); top:100px;">
            <div class="container">
                <div class="user">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--! Font Awesome Pro 6.2.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M256 288c79.5 0 144-64.5 144-144S335.5 0 256 0S112 64.5 112 144s64.5 144 144 144zm-94.7 32C72.2 320 0 392.2 0 481.3c0 17 13.8 30.7 30.7 30.7H481.3c17 0 30.7-13.8 30.7-30.7C512 392.2 439.8 320 350.7 320H161.3z"/></svg>
                </div>
                <h2 class="login">Login Account</h2>
                <div class="form">
                    <form action="client_login" method="post">
                         <div class="inner-form">
                            <h4 class="memberno" style="top:130px; left:40px;">Membership Number</h4>
                              <div>
                                <input class="inputBox1"  style="top:140px; left:240px; padding-left:20px;"type="text" name="memberno">
                              </div>
                        <br>
                         
                            <h4 class="memberno" style="top:185px; left:40px;">Nick Name</h4>
                              <div>
                                <input class="inputBox1" type="text" name="user" style="top:195px; left:240px; padding-left:20px;">
                              </div>
                        <br> 
                            <h4 class="password" style="top:240px; left:40px;">Password</h4>
                              <div>
                                <input class="inputBox2" type="password" name="password" style="top:250px; left:240px;padding-left:20px;">
                              </div>
                        </div>
                        <br>
                        <div>
                            <input class="checkBox" type="checkbox" style="top:290px; left:40px;"> <p class="signed" style="top:278px; left:70px;">Keep me signed in</p>
                        </div>
                        <p class="forget" style="top:340px; left:40px;"> <a href="forgotPassword.jsp">Forgot your credentials?</a> </p>
                        <p><span style="color: red; font-size:16px; top:380px; left:40px;">${error}</span></p>
                        <div>
                          <input class="inputBox" type="submit" style="top:380px;" value="LOG IN">
                        </div>
                          <p class="join" style="top:420px;">Not a Member? <a href="Register.jsp">Join Now</a> </p>
                    </form>
                  </div>
              </div>
          </div>  
            
        </div>
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
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script>
		var status = document.getElementById("status").value;
		if(status=="failed"){
			swal("Username and Password doesn't match", "Login Failed", "error");
		
		}
		else if(status=="invalidUsn"){
			swal("Enter a Username", "Empty Field", "error");
		
		}
		else if(status=="invalidPsswd"){
			swal("Enter a password", "Empty Field", "error");
		}
		else if(status=="pending"){
			swal("Wait until admin to Approve Your Account", "", "error");
		}
		else if(status=="resetSuccess"){
			swal("Password Reset Successful", "", "success");
		}
		
		else if(status=="resetFailed"){
			swal("Password Reset Faied", "", "error");
		}
	</script>
    
</body>
</html>