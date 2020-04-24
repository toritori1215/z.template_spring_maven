<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<div id="preloader">
	<div class="sk-spinner sk-spinner-wave">
		<div class="sk-rect1"></div>
		<div class="sk-rect2"></div>
		<div class="sk-rect3"></div>
		<div class="sk-rect4"></div>
		<div class="sk-rect5"></div>
	</div>
</div>
<!-- End Preload -->

<div class="layer"></div>
<!-- Mobile menu overlay mask -->

<header>
	<div id="top_line" class="visible_on_mobile">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-5">
					<i class="icon-phone"></i><strong> 010-7141-6646</strong>
				</div>
				<div class="col-sm-6 col-7">
					<ul id="top_links">
						<li><a href="main" id=""><i class="icon-link-ext"></i>Main Page</a></li>
					</ul>
				</div>
			</div>
			<!-- End row -->
		</div>
		<!-- End container-->
	</div>
	<!-- End top line-->

	<div class="container">
		<div class="row">
			<div class="col-3">
				<div id="logo_home">
					<h1>
						<a href="main" title="Silicon Village Hotel & Tours">Silicon Village</a>
					</h1>
				</div>
			</div>
			<nav class="col-9">
				<a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);">
				<span>Menu mobile</span></a>
				<div class="main-menu">
					<div id="header_menu">
						<a href="main">
						<img src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/SiliconVillage_S_Black.png" 
								width="210" height="90" alt="City tours" data-retina="true"></a>
					</div>
					<a href="#" class="open_close" id="close_in"><i class="icon_set_1_icon-77"></i></a>
					<ul>
						<li class="submenu">
							<a href="javascript:void(0);" class="show-submenu">Home<i class="icon-down-open-mini"></i></a>
							<ul>
								<li><a href="main">Main page</a></li>
							</ul>
						</li>
						<li class="submenu">
							<a href="javascript:void(0);" class="show-submenu">Tours<i class="icon-down-open-mini"></i></a>
							<ul>
								<li><a href="tour_list">All Tours</a></li>
								<li><a href="tour_detail?pNo=1">Trekking</a></li>
								<li><a href="tour_detail?pNo=2">Glacier Walking</a></li>
								<li><a href="tour_detail?pNo=3">Golf</a></li>
								<li><a href="tour_detail?pNo=4">Fishing</a></li>
								<li><a href="tour_detail?pNo=5">Ice Cave</a></li>
							</ul>
						</li>
						<li class="submenu">
							<a href="javascript:void(0);" class="show-submenu">Restaurants<i class="icon-down-open-mini"></i></a>
							<ul>
								<li><a href="member_about">Main page</a></li>
								<li><a href="member_about">Main page</a></li>
								<li><a href="member_about">Main page</a></li>
								<li><a href="member_about">Main page</a></li>
								<li><a href="member_about">Main page</a></li>
							</ul>
						</li>
						<li class="submenu">
							<a href="javascript:void(0);" class="show-submenu">Blog<i class="icon-down-open-mini"></i></a>
							<ul>
								<li><a href="blog_right_sidebar">All Blogs</a></li>
								<li><a href="blog_post_right_sidebar?type=Tour">Tour Blogs</a></li>
								<li><a href="blog_post_right_sidebar?type=Restaurant">Restaurant Blogs</a></li>
							</ul>
						</li>
						<li class="submenu">
							<a href="javascript:void(0);" class="show-submenu">Pages<i class="icon-down-open-mini"></i></a>
							<ul>
								<li><a href="member_about">About us</a></li>
								<li><a href="member_faq">FAQ</a></li>
								<li><a href="member_login_form">Login</a></li>
								<li><a href="member_insert_form">Register</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<!-- End main-menu -->
				
				<!-- cart icon -->
				<ul id="top_tools">
					<li>
						<div class="dropdown dropdown-cart">
							<a href="cart_services" class="cart_bt"><i class="icon_bag_alt"></i> Tour</a><font color="white">&nbsp;&nbsp; or &nbsp;&nbsp;</font><a href="restaurant_cart_fixed_sidebar" class="cart_bt"><i class="icon_bag_alt"></i> Restaurant</a>
						</div>
						<!-- End dropdown-cart-->
					</li>
				</ul>
			</nav>
		</div>
	</div>
	<!-- container -->
</header>
<!-- End Header -->
    
	<main>
    <section id="hero" class="login">
    	<div class="container">
        	<div class="row justify-content-center">
            	<div class="col-xl-4 col-lg-5 col-md-6 col-sm-8">
                	<div id="login">
                   		<div class="text-center"><img src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/SiliconVillage_S_Black.png" style="margin-left: 30px" width: 233px" height="100px" alt="Image" data-retina="true" ></div>
                        <c:if test="${(msg1 == null || msg1 eq '') && (msg2 == null || msg2 eq '') && (msg3 == null || msg3 eq '') && (msg4 == null || msg4 eq '')}">
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
	                                  <input type="password" class=" form-control" id="password" placeholder="Password" name="mPassword" value="">
									  <i class="icon-lock"></i>
	                              </div>
	                              <p>
	                                  <a href="#forgot-password" id="access_link2" style="text-align: left;">Forgot Password?</a>
	                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                                  <a href="#reactivate-account" id="access_link3" style="text-align: right;">Reactivate Account</a>
	                              </p>
	                              <!-- <a href="#" class="btn_full">Sign in</a>  -->
	                              <input class="btn_full" type="submit" value="Sign in">
	                              <a href="member_insert_form" class="btn_full_outline">Register</a>
	                        	</div>
	                        </form>
                        </c:if>
                        <c:if test="${msg1 != null and msg1 ne ''}">
                        	<div class="divider"></div>
	                        <h5 align="center">
	                        	당신의 임시비밀번호는:<br>
		                        <font style="font-style: normal; font-size: 15px; color: red;">
		                        ${msg1}
		                        </font><br>
		                        입니다!
	                        </h5>
	                        <br><br><br>
	                        <a href="member_login_form" class="btn_full">Go to Sign in</a>
                        </c:if>
                        <c:if test="${msg2 != null and msg2 ne ''}">
	                        <div class="divider"><span><font style="font-style: normal; font-size: 15px; color: red;">${msg2}</font></span></div>
	                        <form id="login_form" method="post" action="member_get_temppassword">
	                        	<div id="login-form">
	                              <div class="form-group">
										<label>Username</label>
										<input type="text" class="form-control" name="mId" value="${mId}" placeholder="Username">
										<i class="icon-user"></i>
									</div>
									<div class="form-group">
										<label>First Name</label>
										<input type="text" class="form-control" name="mFirstName" value="${mFirstName}" placeholder="First Name">
										<i class="icon_set_1_icon-68"></i>
									</div>
									<div class="form-group">
										<label>Last Name</label>
										<input type="text" class="form-control" name="mLastName" value="${mLastName}" placeholder="Last Name">
										<i class="icon_set_1_icon-68"></i>
									</div>
									<div class="form-group">
										<label>Tel</label>
										<input type="text" class="form-control" name="mTel" value="${mTel}" placeholder="Phone">
										<i class="icon-phone"></i>
									</div>
									<div class="form-group">
										<label>Email</label>
										<input type="text" class="form-control" name="mEmail" value="${mEmail}" placeholder="Email">
										<i class="icon-mail"></i>
									</div>
									<div class="form-group">
										<label>Birth</label>
										<input type="text" class="form-control" name="mBirth" value="${mBirth}" placeholder="Birth">
										<i class="icon-calendar"></i>
									</div>
									<div class="text-center">
										<input type="submit" value="Get Password" class="btn_login">
									</div>
									<div class="text-center">
										Remember Your Password?&nbsp;&nbsp;&nbsp;<a href="member_login_form">Sign in</a>
									</div>
	                        	</div>
	                        </form>
                        </c:if>
                        <c:if test="${msg3 != null and msg3 ne ''}">
	                        <div class="divider"><span><font style="font-style: normal; font-size: 15px; color: red;">${msg3}</font></span></div>
	                        <form id="login_form" method="post" action="reactive_account">
	                        	<div id="login-form">
	                            	<div class="form-group">
										<label>Username</label>
										<input type="text" class="form-control" name="mId" value="${mId}" placeholder="Username">
										<i class="icon-user"></i>
									</div>
									<div class="form-group">
	                                  <label>Password</label>
	                                  <input type="password" class=" form-control" placeholder="Password" name="mPassword" value="${mPassword}">
									  <i class="icon-lock"></i>
	                          		</div>
									<div class="form-group">
										<label>First Name</label>
										<input type="text" class="form-control" name="mFirstName" value="${mFirstName}" placeholder="First Name">
										<i class="icon_set_1_icon-68"></i>
									</div>
									<div class="form-group">
										<label>Last Name</label>
										<input type="text" class="form-control" name="mLastName" value="${mLastName}" placeholder="Last Name">
										<i class="icon_set_1_icon-68"></i>
									</div>
									<div class="form-group">
										<label>Tel</label>
										<input type="text" class="form-control" name="mTel" value="${mTel}" placeholder="Phone">
										<i class="icon-phone"></i>
									</div>
									<div class="form-group">
										<label>Email</label>
										<input type="text" class="form-control" name="mEmail" value="${mEmail}" placeholder="Email">
										<i class="icon-mail"></i>
									</div>
									<div class="form-group">
										<label>Birth</label>
										<input type="text" class="form-control" name="mBirth" value="${mBirth}" placeholder="Birth">
										<i class="icon-calendar"></i>
									</div>
									<div class="text-center">
										<input type="submit" value="Re-active Account" class="btn_login">
									</div>
									<div class="text-center">
										Remember Your Password?&nbsp;&nbsp;&nbsp;<a href="member_login_form">Sign in</a>
									</div>
	                        	</div>
	                        </form>
                        </c:if>
                        <c:if test="${msg4 != null and msg4 ne ''}">
                        	<div class="divider"></div>
	                        <h5 align="center">
	                        	<br>
		                        <font style="font-style: normal; font-size: 15px; color: red;">
		                        ${msg4}
		                        </font>
	                        </h5>
	                        <br><br><br>
	                        <a href="member_login_form" class="btn_full">Go to Sign in</a>
                        </c:if>
             		</div>
                </div>
            </div>
        </div>
    </section>
	</main><!-- End main -->
	
	<!-- Footer================================================== -->
	<jsp:include page="common_footer_2.jsp"/>
	<!-- End Footer -->
	
  </body>
</html>