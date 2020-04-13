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
					<i class="icon-phone"></i><strong>0045 043204434</strong>
				</div>

				<div class="col-sm-6 col-7">
					<ul id="top_links">
						<li><a href="#sign-in-dialog" id="access_link">Sign in</a></li>
						<li><a href="wishlist.html" id="wishlist_link">Wishlist</a></li>
						<li>
							<div class="dropdown dropdown-mini">
								<a href="#" data-toggle="dropdown" id="lang_link">English</a>
								<div class="dropdown-menu">
									<ul id="lang_menu">
										<li><a href="#0">Spanish</a></li>
										<li><a href="#0">French</a></li>
										<li><a href="#0">German</a></li>
										<li><a href="#0">Italian</a></li>
										<li><a href="#0">Japanese</a></li>
									</ul>
								</div>
							</div> <!-- End Dropdown access -->
						</li>
						<li>
							<div class="dropdown dropdown-mini">
								<a href="#" data-toggle="dropdown" id="currency_link">Euro</a>
								<div class="dropdown-menu">
									<ul id="lang_menu">
										<li><a href="#0">USD</a></li>
										<li><a href="#0">GBP</a></li>
										<li><a href="#0">EUR</a></li>
										<li><a href="#0">CHF</a></li>
										<li><a href="#0">BRL</a></li>
									</ul>
								</div>
							</div> <!-- End Dropdown access -->
						</li>
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
						<a href="index.html" title="City tours travel template">City
							Tours travel template</a>
					</h1>
				</div>
			</div>
			<nav class="col-9">
				<a class="cmn-toggle-switch cmn-toggle-switch__htx open_close"
					href="javascript:void(0);"><span>Menu mobile</span></a>
				<div class="main-menu">
					<div id="header_menu">
						<img
							src="${pageContext.request.contextPath}/resources/img/logo_sticky.png"
							width="160" height="34" alt="City tours" data-retina="true">
					</div>
					<a href="#" class="open_close" id="close_in"><i
						class="icon_set_1_icon-77"></i></a>
					<ul>
						<li class="submenu"><a href="javascript:void(0);"
							class="show-submenu">Home <i class="icon-down-open-mini"></i></a>
							<ul>
								<li><a href="index.html">Owl Carousel Slider</a></li>
								<li><a href="index_22.html">Home items with Carousel</a></li>
								<li><a href="index_23.html">Home with Search V2</a></li>
								<li class="third-level"><a href="javascript:void(0);">Revolution
										slider</a>
									<ul>
										<li><a href="index_24.html">Default slider</a></li>
										<li><a href="index_20.html">Basic slider</a></li>
										<li><a href="index_14.html">Youtube Hero</a></li>
										<li><a href="index_15.html">Vimeo Hero</a></li>
										<li><a href="index_17.html">Youtube 4K</a></li>
										<li><a href="index_16.html">Carousel</a></li>
										<li><a href="index_19.html">Mailchimp Newsletter</a></li>
										<li><a href="index_18.html">Fixed Caption</a></li>
									</ul></li>
								<li><a href="index_12.html">Layer slider</a></li>
								<li><a href="index_2.html">With Only tours</a></li>
								<li><a href="index_3.html">Single image</a></li>
								<li><a href="index_4.html">Header video</a></li>
								<li><a href="index_7.html">With search panel</a></li>
								<li><a href="index_13.html">With tabs</a></li>
								<li><a href="index_5.html">With map</a></li>
								<li><a href="index_6.html">With search bar</a></li>
								<li><a href="index_8.html">Search bar + Video</a></li>
								<li><a href="index_9.html">With Text Rotator</a></li>
								<li><a href="index_10.html">With Cookie Bar (EU law)</a></li>
								<li><a href="index_11.html">Popup Advertising</a></li>
							</ul></li>
						<li class="submenu"><a href="javascript:void(0);"
							class="show-submenu">Tours <i class="icon-down-open-mini"></i></a>
							<ul>
								<li><a href="all_tours_list.html">All tours list</a></li>
								<li><a href="all_tours_grid.html">All tours grid</a></li>
								<li><a href="all_tours_grid_masonry.html">All tours
										Sort Masonry</a></li>
								<li><a href="all_tours_map_listing.html">All tours map
										listing</a></li>
								<li><a href="single_tour.html">Single tour page</a></li>
								<li><a href="single_tour_with_gallery.html">Single tour
										with gallery</a></li>
								<li class="third-level"><a href="javascript:void(0);">Single
										tour fixed sidebar</a>
									<ul>
										<li><a href="single_tour_fixed_sidebar.html">Single
												tour fixed sidebar</a></li>
										<li><a href="single_tour_with_gallery_fixed_sidebar.html">Single
												tour 2 Fixed Sidebar</a></li>
										<li><a href="cart_fixed_sidebar.html">Cart Fixed
												Sidebar</a></li>
										<li><a href="payment_fixed_sidebar.html">Payment
												Fixed Sidebar</a></li>
										<li><a href="confirmation_fixed_sidebar.html">Confirmation
												Fixed Sidebar</a></li>
									</ul></li>
								<li><a href="single_tour_working_booking.php">Single
										tour working booking</a></li>
								<li><a href="single_tour_datepicker_v2.html">Date and
										time picker V2</a></li>
								<li><a href="cart.html">Single tour cart</a></li>
								<li><a href="payment.html">Single tour booking</a></li>
							</ul></li>
						<li class="submenu"><a href="javascript:void(0);"
							class="show-submenu">Hotels <i class="icon-down-open-mini"></i></a>
							<ul>
								<li><a href="all_hotels_list.html">All hotels list</a></li>
								<li><a href="all_hotels_grid.html">All hotels grid</a></li>
								<li><a href="all_hotels_grid_masonry.html">All hotels
										Sort Masonry</a></li>
								<li><a href="all_hotels_map_listing.html">All hotels
										map listing</a></li>
								<li><a href="single_hotel.html">Single hotel page</a></li>
								<li><a href="single_hotel_datepicker_adv.html">Single
										hotel datepicker adv</a></li>
								<li><a href="single_hotel_datepicker_v2.html">Date and
										time picker V2</a></li>
								<li><a href="single_hotel_working_booking.php">Single
										hotel working booking</a></li>
								<li><a href="single_hotel_contact.php">Single hotel
										contact working</a></li>
								<li><a href="cart_hotel.html">Cart hotel</a></li>
								<li><a href="payment_hotel.html">Booking hotel</a></li>
								<li><a href="confirmation_hotel.html">Confirmation
										hotel</a></li>
							</ul></li>
						<li class="submenu"><a href="javascript:void(0);"
							class="show-submenu">Transfers <i class="icon-down-open-mini"></i></a>
							<ul>
								<li><a href="all_transfer_list.html">All transfers list</a></li>
								<li><a href="all_transfer_grid.html">All transfers grid</a></li>
								<li><a href="all_transfer_grid_masonry.html">All
										transfers Sort Masonry</a></li>
								<li><a href="single_transfer.html">Single transfer page</a></li>
								<li><a href="single_transfer_datepicker_v2.html">Date
										and time picker V2</a></li>
								<li><a href="cart_transfer.html">Cart transfers</a></li>
								<li><a href="payment_transfer.html">Booking transfers</a></li>
								<li><a href="confirmation_transfer.html">Confirmation
										transfers</a></li>
							</ul></li>
						<li class="submenu"><a href="javascript:void(0);"
							class="show-submenu">Restaurants <i
								class="icon-down-open-mini"></i></a>
							<ul>
								<li><a href="all_restaurants_list.html">All restaurants
										list</a></li>
								<li><a href="all_restaurants_grid.html">All restaurants
										grid</a></li>
								<li><a href="all_restaurants_grid_masonry.html">All
										restaurants Sort Masonry</a></li>
								<li><a href="all_restaurants_map_listing.html">All
										restaurants map listing</a></li>
								<li><a href="single_restaurant.html">Single restaurant
										page</a></li>
								<li><a href="single_restaurant_datepicker_v2.html">Date
										and time picker V2</a></li>
								<li><a href="payment_restaurant.html">Booking
										restaurant</a></li>
								<li><a href="confirmation_restaurant.html">Confirmation
										transfers</a></li>
							</ul></li>
						<li class="megamenu submenu"><a href="javascript:void(0);"
							class="show-submenu-mega">Bonus<i class="icon-down-open-mini"></i></a>
							<div class="menu-wrapper">
								<div class="row">
									<div class="col-lg-4">
										<h3>Header styles</h3>
										<ul>
											<li><a href="index.html">Default transparent</a></li>
											<li><a href="header_2.html">Plain color</a></li>
											<li><a href="header_3.html">Plain color on scroll</a></li>
											<li><a href="header_4.html">With socials on top</a></li>
											<li><a href="header_5.html">With language selection</a></li>
											<li><a href="header_6.html">With lang and conversion</a></li>
											<li><a href="header_7.html">With full horizontal
													menu</a></li>
										</ul>
									</div>
									<div class="col-lg-4">
										<h3>Footer styles</h3>
										<ul>
											<li><a href="index.html">Footer default</a></li>
											<li><a href="footer_2.html">Footer style 2</a></li>
											<li><a href="footer_3.html">Footer style 3</a></li>
											<li><a href="footer_4.html">Footer style 4</a></li>
											<li><a href="footer_5.html">Footer style 5</a></li>
											<li><a href="footer_6.html">Footer style 6</a></li>
											<li><a href="footer_7.html">Footer style 7</a></li>
										</ul>
									</div>
									<div class="col-lg-4">
										<h3>Shop section</h3>
										<ul>
											<li><a href="shop.html">Shop</a></li>
											<li><a href="shop-single.html">Shop single</a></li>
											<li><a href="shopping-cart.html">Shop cart</a></li>
											<li><a href="checkout.html">Shop Checkout</a></li>
										</ul>
									</div>
								</div>
								<!-- End row -->
							</div> <!-- End menu-wrapper --></li>
						<li class="megamenu submenu"><a href="javascript:void(0);"
							class="show-submenu-mega">Pages<i class="icon-down-open-mini"></i></a>
							<div class="menu-wrapper">
								<div class="row">
									<div class="col-lg-4">
										<h3>Pages</h3>
										<ul>
											<li><a href="about.html">About us</a></li>
											<li><a href="general_page.html">General page</a></li>
											<li><a href="tourist_guide.html">Tourist guide</a></li>
											<li><a href="wishlist.html">Wishlist page</a></li>
											<li><a href="faq.html">Faq</a></li>
											<li><a href="faq_2.html">Faq smooth scroll</a></li>
											<li><a href="pricing_tables.html">Pricing tables</a></li>
											<li><a href="gallery_3_columns.html">Gallery 3
													columns</a></li>
											<li><a href="gallery_4_columns.html">Gallery 4
													columns</a></li>
											<li><a href="grid_gallery_1.html">Grid gallery</a></li>
											<li><a href="grid_gallery_2.html">Grid gallery with
													filters</a></li>
										</ul>
									</div>
									<div class="col-lg-4">
										<h3>Pages</h3>
										<ul>
											<li><a href="contact_us_1.html">Contact us 1</a></li>
											<li><a href="contact_us_2.html">Contact us 2</a></li>
											<li><a href="blog_right_sidebar.html">Blog</a></li>
											<li><a href="blog.html">Blog left sidebar</a></li>
											<li><a href="login.html">Login</a></li>
											<li><a href="register.html">Register</a></li>
											<li><a href="invoice.html" target="_blank">Invoice</a></li>
											<li><a href="404.html">404 Error page</a></li>
											<li><a href="site_launch/index.html">Site launch /
													Coming soon</a></li>
											<li><a href="timeline.html">Tour timeline</a></li>
											<li><a href="page_with_map.html"><i class="icon-map"></i>
													Full screen map</a></li>
										</ul>
									</div>
									<div class="col-lg-4">
										<h3>Elements</h3>
										<ul>
											<li><a href="footer_2.html"><i class="icon-columns"></i>
													Footer with working newsletter</a></li>
											<li><a href="footer_5.html"><i class="icon-columns"></i>
													Footer with Twitter feed</a></li>
											<li><a href="icon_pack_1.html"><i
													class="icon-inbox-alt"></i> Icon pack 1 (1900)</a></li>
											<li><a href="icon_pack_2.html"><i
													class="icon-inbox-alt"></i> Icon pack 2 (100)</a></li>
											<li><a href="icon_pack_3.html"><i
													class="icon-inbox-alt"></i> Icon pack 3 (30)</a></li>
											<li><a href="icon_pack_4.html"><i
													class="icon-inbox-alt"></i> Icon pack 4 (200)</a></li>
											<li><a href="icon_pack_5.html"><i
													class="icon-inbox-alt"></i> Icon pack 5 (360)</a></li>
											<li><a href="shortcodes.html"><i class="icon-tools"></i>
													Shortcodes</a></li>
											<li><a href="newsletter_template/newsletter.html"
												target="blank"><i class=" icon-mail"></i> Responsive
													email template</a></li>
											<li><a href="admin.html"><i class="icon-cog-1"></i>
													Admin area</a></li>
										</ul>
									</div>
								</div>
								<!-- End row -->
							</div> <!-- End menu-wrapper --></li>
					</ul>
				</div>
				<!-- End main-menu -->
				<ul id="top_tools">
					<li><a href="javascript:void(0);"
						class="search-overlay-menu-btn"><i class="icon_search"></i></a></li>
					<li>
						<div class="dropdown dropdown-cart">
							<a href="#" data-toggle="dropdown" class="cart_bt"><i
								class="icon_bag_alt"></i><strong>3</strong></a>
							<ul class="dropdown-menu" id="cart_items">
								<li>
									<div class="image">
										<img src="${pageContext.request.contextPath}/resources/img/thumb_cart_1.jpg"
											alt="image">
									</div> <strong><a href="#">Louvre museum</a>1x $36.00 </strong> <a
									href="#" class="action"><i class="icon-trash"></i></a>
								</li>
								<li>
									<div class="image">
										<img
											src="${pageContext.request.contextPath}/resources/img/thumb_cart_2.jpg"
											alt="image">
									</div> <strong><a href="#">Versailles tour</a>2x $36.00 </strong> <a
									href="#" class="action"><i class="icon-trash"></i></a>
								</li>
								<li>
									<div class="image">
										<img
											src="${pageContext.request.contextPath}/resources/img/thumb_cart_3.jpg"
											alt="image">
									</div> <strong><a href="#">Versailles tour</a>1x $36.00 </strong> <a
									href="#" class="action"><i class="icon-trash"></i></a>
								</li>
								<li>
									<div>
										Total: <span>$120.00</span>
									</div> <a href="cart.html" class="button_drop">Go to cart</a> <a
									href="payment.html" class="button_drop outline">Check out</a>
								</li>
							</ul>
						</div> <!-- End dropdown-cart-->
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
                   		<div class="text-center"><img src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/youngae.jpg" width="120px" height="150px" alt="Image" data-retina="true" ></div>
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
	                                  <input type="password" class=" form-control" placeholder="Password" name="mPassword" value="">
									  <i class="icon-lock"></i>
	                              </div>
	                              <div class="clearfix add_bottom_15">
									  <div class="checkboxes float-left">
										  <input id="remember-me" type="checkbox" name="check">
										  <label for="remember-me">Remember Me</label>
									  </div>
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
	                        <a href="member_login.jsp" class="btn_full">Go to Sign up</a>
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
	                                  <input type="password" class=" form-control" placeholder="Password" name="mPassword" value="">
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
                        	<div class="divider"><span><font style="font-style: normal; font-size: 15px; color: red;">${msg4}</font></span></div>
	                        <a href="member_login.jsp" class="btn_full">Go to Sign up</a>
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