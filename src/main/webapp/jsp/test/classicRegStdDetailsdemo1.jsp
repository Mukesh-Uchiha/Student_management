<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>Register Form </title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Classic Register form"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}\css\style1.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}\css\font-awesome.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //web-fonts -->
</head>

<body>
	<!--header-->
	<h1>
		<span>C</span>lassic
		<span>R</span>egister
		<span>F</span>orm</h1>
	<!--//header-->
	<!-- content -->
	<div class="main-content-agile">
		<div class="sub-main-w3">
			<form action="#" method="post">
				<div class="form-style-agile">
					<label>Your Name</label>
					<div class="pom-agile">
						<input placeholder="Your Name" name="Name" type="text" required="">
						<span class="fa fa-user-o" aria-hidden="true"></span>
					</div>
				</div>
				<div class="form-style-agile">
					<label>Email</label>
					<div class="pom-agile">
						<input placeholder="Email" name="Email" type="email" required="">
						<span class="fa fa-envelope" aria-hidden="true"></span>
					</div>
				</div>
				<div class="form-style-agile">
					<label>Password</label>
					<div class="pom-agile">
						<input placeholder="Password" name="Password" type="password" id="password1" required="">
						<span class="fa fa-key" aria-hidden="true"></span>
					</div>
				</div>
				<div class="form-style-agile">
					<label>Confirm Password</label>
					<div class="pom-agile">
						<input placeholder="Confirm Password" name="Confirm Password" type="password" id="password2" required="">
						<span class="fa fa-key" aria-hidden="true"></span>
					</div>
				</div>
				<div class="sub-agile">
					<input type="checkbox" id="brand1" value="">
					<label for="brand1">
						<span></span>I Accept to the Terms & Conditions</label>
				</div>
				<div class="clear"></div>
				<input type="submit" value="Register">
			</form>
		</div>
	</div>
	<!-- //content -->
	<!--footer-->
	
	<!--//footer-->


	<!-- password-script -->
	<script>
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->

</body>

</html>