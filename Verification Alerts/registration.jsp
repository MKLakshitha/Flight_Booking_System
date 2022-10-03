
<!-- CLIENT REGISTRATION!!! -->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up</title>
<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<!-- Clients Register here. Basic data must be provided -->
<!-- Pick the relevant icons from "https://zavoloklom.github.io/material-design-iconic-font/icons.html#editor" -->
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
	<div class="main">
		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="POST" action="register" class="register-form" id="register-form">
							<!-- User registration -->
							<!-- NIC -->
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label>
									<input type="text" name="nic" placeholder="Your NIC Number" required="required"/>
									<!-- Required is the CLIENT SIDE VALIDATION -->
							</div>
							
							<!-- User Names -->
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="fname" placeholder="First Name" required="required"/>
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="lname" placeholder="Last Name" required="required"/>
							</div>
							
							<!-- Passwords -->
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="pass" placeholder="Password" required="required"/>
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" placeholder="Repeat your password" required="required"/>
							</div>
							
							<!-- Email -->
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="email" name="email" placeholder="Your Email" required="required"/>
							</div>
							
							<!-- Contact Number -->
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-phone"></i></label>
								<input type="text" name="contact" placeholder="Contact no" required="required"/>
							</div>
							
							
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<!-- Insert a sign up related image. Not this one -->
							<img src="images/signup-image.jpg" alt="sign up image">
						</figure>
						
						<!-- If already a member, user can login from this hyperlink -->
						<a href="login.jsp" class="signup-image-link">I am already a member</a>
						
						<!-- Staff registration happens here -->
						<a href="reg_staff.jsp" class="signup-image-link">Staff Registration</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script>
		var status = document.getElementById("status").value;
		if(status=="success"){
			swal("Account Created Successfully. Go back to Login", "", "success");
		
		}
		else if(status=="invalidNIC"){
			swal("Enter your National Identity Card Number", "", "error");
		
		}
		if(status=="invalidfName"){
			swal("Enter your first name", "", "error");
		
		}
		if(status=="invalidlName"){
			swal("Enter your last name", "", "error");
		
		}
		if(status=="invalidPsswd"){
			swal("Enter a password", "", "error");
		
		}
		if(status=="invalidRePsswd"){
			swal("Passwords doesn't match", "", "error");
		
		}
		if(status=="invalidEmail"){
			swal("Enter an email", "", "error");
		
		}
		if(status=="invalidMobile"){
			swal("Enter a mobile phone number", "", "error");
		
		}
		if(status=="invalidMobileLength"){
			swal("Enter a valid phone number", "", "error");
		
		}
		
	</script>
</body>
</html>
