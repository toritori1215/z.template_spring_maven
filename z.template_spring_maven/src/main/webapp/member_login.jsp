<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
    <meta name="author" content="Ansonika">
    <title>CITY TOURS - City tours and travel site template by Ansonika</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="${pageContext.request.contextPath}/resources/img/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Gochi+Hand|Montserrat:300,400,700" rel="stylesheet">

    <!-- COMMON CSS -->
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/vendors.css" rel="stylesheet">
	
	<!-- CUSTOM CSS -->
	<link href="${pageContext.request.contextPath}/resources/z.SiliconVillage/css/member.css" rel="stylesheet">
        
</head>
<body>

	<!-- Header================================================== -->
	<jsp:include page="z.references/common_header_6.jsp"/>
	<!-- End Header -->
    
	<main>
    <section id="hero" class="login">
    	<div class="container">
        	<div class="row justify-content-center">
            	<div class="col-xl-4 col-lg-5 col-md-6 col-sm-8">
                	<div id="login">
                   		<div class="text-center"><img src="${pageContext.request.contextPath}/resources/img/z.youngae.jpg" width="120px" height="150px" alt="Image" data-retina="true" ></div>
						<div class="divider"><span><font style="font-style: normal; font-size: 15px; color: red;">${msg}</font></span></div>
                        <form id="login_form" method="post" action="member_login_action">
                        	<div id="login-form">
                              <div class="form-group">
                                  <label>Username</label>
                                  <input type="text" class=" form-control " placeholder="Username" name="mId" value="">
                              	  <i class="icon-user-1"></i>
                              </div>
                              <div class="form-group">
                                  <label>Password</label>
                                  <input type="password" class=" form-control" placeholder="Password" name="mPassword" value="">
								  <i class="icon_lock_alt"></i>
                              </div>
                              <p class="small">
                                  <a href="#forgot-password" id="access_link2">Forgot Password?</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <a href="#">Re-activate Your Account</a>
                              </p>
                              <!-- <a href="#" class="btn_full">Sign in</a>  -->
                              <input class="btn_full" type="submit" value="Sign in">
                              <a href="member_insert_form" class="btn_full_outline">Register</a>
                        	</div>
                        </form>
             		</div>
                </div>
            </div>
        </div>
    </section>
	</main><!-- End main -->
	
	<!-- Sign In Popup -->
	<div id="forgot-password" class="zoom-anim-dialog mfp-hide">
		<div class="small-dialog-header">
			<h3>Get TempPassword</h3>
		</div>
		<div class="text-center">
	    	<img src="${pageContext.request.contextPath}/resources/img/logo_sticky.png" alt="Image" data-retina="true" >
	    </div>
		<form method="post" action="member_get_temppassword">
			<div class="divider"><span><font style="font-style: normal; font-size: 15px; color: red;">${msg}</font></span></div>
			<div class="sign-in-wrapper">
				<div class="form-group">
					<label>Username</label>
					<input type="text" class="form-control" name="id" id="id" value="" placeholder="Username">
					<i class="icon-user"></i>
				</div>
				<div class="form-group">
					<label>First Name</label>
					<input type="password" class="form-control" name="firstname" id="firstname" value="" placeholder="First Name">
					<i class="icon_set_1_icon-68"></i>
				</div>
				<div class="form-group">
					<label>Last Name</label>
					<input type="password" class="form-control" name="lastname" id="lastname" value="" placeholder="Last Name">
					<i class="icon_set_1_icon-68"></i>
				</div>
				<div class="form-group">
					<label>Tel</label>
					<input type="password" class="form-control" name="tel" id="tel" value="" placeholder="Phone">
					<i class="icon-phone"></i>
				</div>
				<div class="form-group">
					<label>Email</label>
					<input type="password" class="form-control" name="email" id="email" value="" placeholder="Email">
					<i class="icon-mail"></i>
				</div>
				<div class="form-group">
					<label>Birth</label>
					<input type="password" class="form-control" name="birth" id="birth" value="" placeholder="Birth">
					<i class="icon-calendar"></i>
				</div>
				<div class="text-center">
					<input type="submit" value="Get TempPassword" class="btn_login">
				</div>
				<div class="text-center">
					I Remember my Password <a href="member_login_form">Login</a>
				</div>
			</div>
		</form>
	<!--form -->
	</div>
	<!-- Sign In Popup -->
	
	<!-- Sign In Popup -->
	<div id="reActive-Account" class="zoom-anim-dialog mfp-hide">
		<div class="small-dialog-header">
			<h3>Get TempPassword</h3>
		</div>
		<div class="text-center">
	    	<img src="${pageContext.request.contextPath}/resources/img/logo_sticky.png" alt="Image" data-retina="true" >
	    </div>
		<form method="post" action="member_get_temppassword">
			<div class="divider"><span><font style="font-style: normal; font-size: 15px; color: red;">${msg}</font></span></div>
			<div class="sign-in-wrapper">
				<div class="form-group">
					<label>Username</label>
					<input type="text" class="form-control" name="id" id="id" value="" placeholder="Username">
					<i class="icon-user"></i>
				</div>
				<div class="form-group">
					<label>First Name</label>
					<input type="password" class="form-control" name="password" id="password" value="" placeholder="Password">
					<i class="icon_set_1_icon-68"></i>
				</div>
				<div class="form-group">
					<label>Last Name</label>
					<input type="password" class="form-control" name="password" id="password" value="" placeholder="Password">
					<i class="icon_set_1_icon-68"></i>
				</div>
				<div class="form-group">
					<label>Tel</label>
					<input type="password" class="form-control" name="password" id="password" value="" placeholder="Password">
					<i class="icon-phone"></i>
				</div>
				<div class="form-group">
					<label>Email</label>
					<input type="password" class="form-control" name="password" id="password" value="" placeholder="Password">
					<i class="icon-mail"></i>
				</div>
				<div class="form-group">
					<label>Birth</label>
					<input type="password" class="form-control" name="password" id="password" value="" placeholder="Password">
					<i class="icon-calendar"></i>
				</div>
				<div class="text-center">
					<input type="submit" value="Get TempPassword" class="btn_login">
				</div>
				<div class="text-center">
					I Remember my Password <a href="member_login_form">Login</a>
				</div>
			</div>
		</form>
	<!--form -->
	</div>
	<!-- Sign In Popup -->
	
	<!-- Footer================================================== -->
	<jsp:include page="z.references/common_footer_22.jsp"/>
	<!-- End Footer -->
	
	<script src="${pageContext.request.contextPath}/resources/z.SiliconVillage/js/member.js"></script>
	
  </body>
</html>