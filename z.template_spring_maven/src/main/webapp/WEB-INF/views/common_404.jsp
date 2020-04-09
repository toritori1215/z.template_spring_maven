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
	<link href="${pageContext.request.contextPath}/resources/css/custom.css" rel="stylesheet">

</head>

<body>
	
	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->

	<section id="hero">
		<div class="intro_title error">
			<h1 class="animated fadeInDown">404</h1>
			<p class="animated fadeInDown">Oops!! Page not found</p>
			<a href="index.html" class="animated fadeInUp button_intro">Back to home</a> <a href="all_tours_list.html" class="animated fadeInUp button_intro outline">View all tours</a>
		</div>

	</section>
	<!-- End hero -->

	<main>
		<div class="container margin_60">

			<div class="banner colored add_bottom_30">
				<h4>Discover our Top tours <span>from $34</span></h4>
				<p>
					Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in.
				</p>
				<a href="single_tour.html" class="btn_1 white">Read more</a>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 text-center">
					<p>
						<a href="#"><img src="${pageContext.request.contextPath}/resources/img/bus.jpg" alt="Pic" class="img-fluid">
						</a>
					</p>
					<h4><span>Sightseen tour</span> booking</h4>
					<p>
						Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex.
					</p>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<p>
						<a href="#"><img src="${pageContext.request.contextPath}/resources/img/transfer.jpg" alt="Pic" class="img-fluid">
						</a>
					</p>
					<h4><span>Transfer</span> booking</h4>
					<p>
						Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex.
					</p>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<p>
						<a href="#"><img src="${pageContext.request.contextPath}/resources/img/guide.jpg" alt="Pic" class="img-fluid">
						</a>
					</p>
					<h4><span>Tour guide</span> booking</h4>
					<p>
						Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex.
					</p>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<p>
						<a href="#"><img src="${pageContext.request.contextPath}/resources/img/hotel.jpg" alt="Pic" class="img-fluid">
						</a>
					</p>
					<h4><span>Hotel</span> booking</h4>
					<p>
						Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex.
					</p>
				</div>
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</main>
	<!-- End main -->

	<!-- Footer================================================== -->
	<jsp:include page="common_footer_2.jsp"/>
	<!-- End Footer -->
	

</body>

</html>