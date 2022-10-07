<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Log In</title>
<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<!-- 
 ######  ##       #### ######## ##    ## ########          ##  ######  ########  
##    ## ##        ##  ##       ###   ##    ##             ## ##    ## ##     ## 
##       ##        ##  ##       ####  ##    ##             ## ##       ##     ## 
##       ##        ##  ######   ## ## ##    ##             ##  ######  ########  
##       ##        ##  ##       ##  ####    ##       ##    ##       ## ##        
##    ## ##        ##  ##       ##   ###    ##       ##    ## ##    ## ##        
 ######  ######## #### ######## ##    ##    ##        ######   ######  ##     
 -->
<body>
	<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
	<div class="main">
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/signin-image.jpg" alt="sign up image">
						</figure>
						<a href="registration.jsp" class="signup-image-link">Create an account</a>
					</div>
					<div class="signin-form">
						<h2 class="form-title">Log In</h2>
						<form method="POST" action="login" class="register-form"
							id="login-form">
							<!-- NIC as the user name -->
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username"
									placeholder="National Identity Card Number" required="required"/>
							</div>
							
							<!-- Password -->
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" required="required"/>
									<!-- Required field allows the user to insert the required values -->
							</div>
							<!-- <div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember
									me</label>
							</div> -->
							<div class = "forn-group">
								<a href="forgotPassword.jsp">Forgot Password</a>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>
						<div class="social-login">
							<span class="social-label">Or login with</span>
							<ul class="socials">
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>
						<a href="staff_admin_login.jsp">Other</a>
					</div>
				</div>
			</div>
		</section>
	</div>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	
	
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
		else if(status=="resetSuccess"){
			swal("Password Reset Successful", "", "success");
		}
		else if(status=="resetFailed"){
			swal("Password Reset Faied", "", "error");
		}
	</script>
</body>
</html>
