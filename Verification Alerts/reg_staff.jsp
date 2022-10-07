
<!-- STAFF REGISTRATION!!! -->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Staff Registration</title>
<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign Up as a Staff member</h2>
					
						<form method="POST" action="register_staff" class="register-form" id="register-form">
							<!-- User registration -->
							<!-- NIC -->
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label>
									<input type="text" name="nic" placeholder="Your NIC Number" />
							</div>
							
							<!-- User Names -->
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="fname" placeholder="First Name" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="lname" placeholder="Last Name" />
							</div>
							
							<!-- Passwords -->
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="pass" placeholder="Password" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" placeholder="Repeat your password" />
							</div>
							
							<!-- Email -->
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="email" name="email" placeholder="Your Email" />
							</div>
							
							<!-- Contact Number -->
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" placeholder="Contact no" />
							</div>
							
							<!-- Ref Number -->
							<!-- To identify staff privileges. And for the administration purposes. -->
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="ref" placeholder="Reference Code" />
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
							<img src="images/admin.jpg" alt="sing up image">
						</figure>
						<!-- If the user is a member -->
						<a href="login.jsp" class="signup-image-link">I am already a member</a>
						
						<!-- To sign up as a member -->
						<a href="registration.jsp" class="signup-image-link">Back to sign up</a>
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
			swal("Account Created Successfully", "success");
		}
	</script>
</body>
</html>