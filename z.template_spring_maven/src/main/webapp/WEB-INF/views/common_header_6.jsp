<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
    <meta name="author" content="Ansonika">
    <title>Silicon Village</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/SiliconVillage.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="${pageContext.request.contextPath}/resources/img/apple-touch-icon-144x144-precomposed.png">

	<!-- COMMON CSS -->
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/vendors.css" rel="stylesheet">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Gochi+Hand|Montserrat:300,400,700" rel="stylesheet">

	<!-- REVOLUTION SLIDER CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/rev-slider-files/fonts/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/rev-slider-files/css/settings.css">
    
    <!-- REVOLUTION LAYERS STYLES -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/z.SiliconVillage/css/specific.css">
	
	<!-- SPECIFIC CSS - GRID GALLERY -->
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/finaltilesgallery.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/lightbox2.css" rel="stylesheet">
	
	<!-- SPECIFIC CSS -->
	<link href="${pageContext.request.contextPath}/resources/css/admin.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/blog.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/shop.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/timeline.css" rel="stylesheet">
	
	<!-- CUSTOM CSS -->
	<link href="${pageContext.request.contextPath}/resources/z.SiliconVillage/css/member.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/z.SiliconVillage/gu-upload/css/guupload.css"/>

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
						<c:choose>
							<c:when test="${sUser != null and sUser ne ''}">
								<li>Hello ${sUser.mId}!</a></li>
								<li><a href="member_logout" id="sign-out-link">Sign Out</a></li>
								<li><a href="member_mypage" id="mypage-link">MyPage</a></li>
								<li><a href="wishlist_list" id="wishlist_link">Wishlist</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="#sign-in-dialog" id="access_link">Sign in</a></li>
							</c:otherwise>
						</c:choose>
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
								<li><a href="restaurants_all_list">All Foods</a></li>
								<li><a href="restaurants_all_list?category=America">American Food</a></li>
								<li><a href="restaurants_all_list?category=Europe">European Food</a></li>
								<li><a href="restaurants_all_list?category=Japanese">Japanese Food</a></li>
								<li><a href="restaurants_all_list?category=Chinese">Chinese Food</a></li>
								<li><a href="restaurants_all_list?category=Dessert">Dessert</a></li>
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