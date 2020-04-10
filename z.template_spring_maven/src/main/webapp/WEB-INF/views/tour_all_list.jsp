<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
	<meta name="author" content="Ansonika">
	<title>Silicon Village｜Tours</title>

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

	<section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/img/home_bg_1.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>Daily Tours</h1>
				<p>from spectacular adventures to leisurely time in nature...</p>
			</div>
		</div>
	</section>
	<!-- End section -->

	<main>

		<div id="position">
			<div class="container">
				<ul>
					<li><a href="main">Home</a>
					</li>
					<li><a href="tour_list">Tours</a>
					</li>
					<li>Tour List</li>
				</ul>
			</div>
		</div>
		<!-- Position -->

		<div class="collapse" id="collapseMap">
			<div id="map" class="map"></div>
		</div>
		<!-- End Map -->


		<div class="container margin_60">

			<div class="row">
				<aside class="col-lg-3">
					<p>
						<a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a>
					</p>

					<div class="box_style_cat">
						<ul id="cat_nav">
							<li><a href="#" id="active"><i class="icon_set_1_icon-51"></i>All tours <span>(141)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_1_icon-3"></i>City sightseeing <span>(20)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_1_icon-4"></i>Museum tours <span>(16)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_1_icon-44"></i>Historic Buildings <span>(12)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_1_icon-37"></i>Walking tours <span>(11)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_1_icon-14"></i>Eat & Drink <span>(20)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_1_icon-43"></i>Churces <span>(08)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_1_icon-28"></i>Skyline tours <span>(11)</span></a>
							</li>
						</ul>
					</div>

					<div id="filters_col">
						<a data-toggle="collapse" href="#collapseFilters" aria-expanded="false" aria-controls="collapseFilters" id="filters_col_bt"><i class="icon_set_1_icon-65"></i>Filters</a>
						<div class="collapse show" id="collapseFilters">
							<div class="filter_type">
								<h6>Price</h6>
								<input type="text" id="range" name="range" value="">
							</div>
							<div class="filter_type">
								<h6>Rating</h6>
								<ul>
									<li>
										<label>
											<input type="checkbox" id="rating5"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox" id="rating4"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox" id="rating3"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox" id="rating2"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox" id="rating1"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
								</ul>
							</div>
							<div class="filter_type">
								<h6>Facility</h6>
								<ul>
									<li>
										<label>
											<input type="checkbox">Pet allowed
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox">Groups allowed
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox">Tour guides
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox">Access for disabled
										</label>
									</li>
								</ul>
							</div>
						</div>
						<!--End collapse -->
					</div>
					<!--End filters col-->
					<div class="box_style_2">
						<i class="icon_set_1_icon-57"></i>
						<h4>Need <span>Help?</span></h4>
						<a href="tel://004542344599" class="phone">+45 423 445 99</a>
						<small>Monday to Friday 9.00am - 7.30pm</small>
					</div>
				</aside>
				<!--End aside -->
				<div class="col-lg-9">

					<div id="tools">
						<div class="row">
							<div class="col-md-3 col-sm-4 col-6">
								<div class="styled-select-filters">
									<select name="sort_price" id="sort_price">
										<option value="" selected>Sort by price</option>
										<option value="lower">Lowest price</option>
										<option value="higher">Highest price</option>
									</select>
								</div>
							</div>
							<div class="col-md-3 col-sm-4 col-6">
								<div class="styled-select-filters">
									<select name="sort_rating" id="sort_rating">
										<option value="" selected>Sort by ranking</option>
										<option value="lower">Lowest ranking</option>
										<option value="higher">Highest ranking</option>
									</select>
								</div>
							</div>
							<div class="col-md-6 col-sm-4 d-none d-sm-block text-right">
								<a href="tour_grid" class="bt_filters"><i class="icon-th"></i></a> <a href="#" class="bt_filters"><i class=" icon-list"></i></a>
							</div>

						</div>
					</div>
					<!--/tools -->
					
					
					<div class="strip_all_tour_list wow fadeIn" data-wow-delay="0.1s">
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="wishlist">
									<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
								</div>
								<div class="img_list">
									<a href="single_tour.html"><img src="${pageContext.request.contextPath}/resources/img/tour_box_1.jpg" alt="Image">
										<div class="short_info"><i class="icon_set_1_icon-4"></i>Museums </div>
									</a>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="tour_list_desc">
									<div class="rating"><i class="icon-smile voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<h3><strong>Arch Triomphe</strong> tour</h3>
									<p>Lorem ipsum dolor sit amet, quem convenire interesset ut vix, ad dicat sanctus detracto vis. Eos modus dolorum ex, qui adipisci maiestatis inciderint no, eos in elit dicat.....</p>
									<ul class="add_info">
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-83"></i></span>
												<div class="tooltip-content">
													<h4>Schedule</h4>
													<strong>Monday to Friday</strong> 09.00 AM - 5.30 PM
													<br>
													<strong>Saturday</strong> 09.00 AM - 5.30 PM
													<br>
													<strong>Sunday</strong> <span class="label label-danger">Closed</span>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-41"></i></span>
												<div class="tooltip-content">
													<h4>Address</h4> Musée du Louvre, 75058 Paris - France
													<br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-97"></i></span>
												<div class="tooltip-content">
													<h4>Languages</h4> English - French - Chinese - Russian - Italian
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-27"></i></span>
												<div class="tooltip-content">
													<h4>Parking</h4> 1-3 Rue Elisée Reclus
													<br> 76 Rue du Général Leclerc
													<br> 8 Rue Caillaux 94923
													<br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-25"></i></span>
												<div class="tooltip-content">
													<h4>Transport</h4>
													<strong>Metro: </strong>Musée du Louvre station (line 1)
													<br>
													<strong>Bus:</strong> 21, 24, 27, 39, 48, 68, 69, 72, 81, 95
													<br>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-lg-2 col-md-2">
								<div class="price_list">
									<div><sup>$</sup>39*<span class="normal_price_list">$99</span><small>*Per person</small>
										<p><a href="single_tour.html" class="btn_1">Details</a>
										</p>
									</div>

								</div>
							</div>
						</div>
					</div>
					<!--End strip -->

					<div class="strip_all_tour_list wow fadeIn" data-wow-delay="0.2s">
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="wishlist">
									<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
								</div>
								<div class="img_list">
									<a href="single_tour.html"><img src="${pageContext.request.contextPath}/resources/img/tour_box_2.jpg" alt="Image">
										<div class="short_info"><i class="icon_set_1_icon-44"></i>Churches</div>
									</a>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="tour_list_desc">
									<div class="rating"><i class="icon-smile voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<h3><strong>Notredame</strong> tour</h3>
									<p>Lorem ipsum dolor sit amet, quem convenire interesset ut vix, ad dicat sanctus detracto vis. Eos modus dolorum ex, qui adipisci maiestatis inciderint no, eos in elit dicat.....</p>
									<ul class="add_info">
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-83"></i></span>
												<div class="tooltip-content">
													<h4>Schedule</h4>
													<strong>Monday to Friday</strong> 09.00 AM - 5.30 PM
													<br>
													<strong>Saturday</strong> 09.00 AM - 5.30 PM
													<br>
													<strong>Sunday</strong> <span class="label label-danger">Closed</span>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-41"></i></span>
												<div class="tooltip-content">
													<h4>Address</h4> Musée du Louvre, 75058 Paris - France
													<br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-97"></i></span>
												<div class="tooltip-content">
													<h4>Languages</h4> English - French - Chinese - Russian - Italian
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-27"></i></span>
												<div class="tooltip-content">
													<h4>Parking</h4> 1-3 Rue Elisée Reclus
													<br> 76 Rue du Général Leclerc
													<br> 8 Rue Caillaux 94923
													<br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-25"></i></span>
												<div class="tooltip-content">
													<h4>Transport</h4>
													<strong>Metro: </strong>Musée du Louvre station (line 1)
													<br>
													<strong>Bus:</strong> 21, 24, 27, 39, 48, 68, 69, 72, 81, 95
													<br>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-lg-2 col-md-2">
								<div class="price_list">
									<div><sup>$</sup>42*<span class="normal_price_list">$99</span><small>*Per person</small>
										<p><a href="single_tour.html" class="btn_1">Details</a>
										</p>
									</div>

								</div>
							</div>
						</div>
					</div>
					<!--End strip -->

					<div class="strip_all_tour_list wow fadeIn" data-wow-delay="0.3s">
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<div class="ribbon_3"><span>Top rated</span>
								</div>
								<div class="wishlist">
									<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
								</div>
								<div class="img_list">
									<a href="single_tour.html"><img src="${pageContext.request.contextPath}/resources/img/tour_box_3.jpg" alt="Image">
										<div class="short_info"><i class="icon_set_1_icon-44"></i>Historic Buildings</div>
									</a>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="tour_list_desc">
									<div class="rating"><i class="icon-smile voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<h3><strong>Versailles</strong> tour</h3>
									<p>Lorem ipsum dolor sit amet, quem convenire interesset ut vix, ad dicat sanctus detracto vis. Eos modus dolorum ex, qui adipisci maiestatis inciderint no, eos in elit dicat.....</p>
									<ul class="add_info">
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-83"></i></span>
												<div class="tooltip-content">
													<h4>Schedule</h4>
													<strong>Monday to Friday</strong> 09.00 AM - 5.30 PM
													<br>
													<strong>Saturday</strong> 09.00 AM - 5.30 PM
													<br>
													<strong>Sunday</strong> <span class="label label-danger">Closed</span>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-41"></i></span>
												<div class="tooltip-content">
													<h4>Address</h4> Musée du Louvre, 75058 Paris - France
													<br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-97"></i></span>
												<div class="tooltip-content">
													<h4>Languages</h4> English - French - Chinese - Russian - Italian
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-27"></i></span>
												<div class="tooltip-content">
													<h4>Parking</h4> 1-3 Rue Elisée Reclus
													<br> 76 Rue du Général Leclerc
													<br> 8 Rue Caillaux 94923
													<br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-25"></i></span>
												<div class="tooltip-content">
													<h4>Transport</h4>
													<strong>Metro: </strong>Musée du Louvre station (line 1)
													<br>
													<strong>Bus:</strong> 21, 24, 27, 39, 48, 68, 69, 72, 81, 95
													<br>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-lg-2 col-md-2">
								<div class="price_list">
									<div><sup>$</sup>39*<span class="normal_price_list">$99</span><small>*Per person</small>
										<p><a href="single_tour.html" class="btn_1">Details</a>
										</p>
									</div>

								</div>
							</div>
						</div>
					</div>
					<!--End strip -->

					<div class="strip_all_tour_list wow fadeIn" data-wow-delay="0.4s">
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<div class="ribbon_3"><span>Top rated</span>
								</div>
								<div class="wishlist">
									<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
								</div>
								<div class="img_list">
									<a href="single_tour.html"><img src="${pageContext.request.contextPath}/resources/img/tour_box_4.jpg" alt="Image">
										<div class="short_info"><i class="icon_set_1_icon-37"></i>Walking tour</div>
									</a>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="tour_list_desc">
									<div class="rating"><i class="icon-smile voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<h3><strong>Pompidue</strong> tour</h3>
									<p>Lorem ipsum dolor sit amet, quem convenire interesset ut vix, ad dicat sanctus detracto vis. Eos modus dolorum ex, qui adipisci maiestatis inciderint no, eos in elit dicat.....</p>
									<ul class="add_info">
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-83"></i></span>
												<div class="tooltip-content">
													<h4>Schedule</h4>
													<strong>Monday to Friday</strong> 09.00 AM - 5.30 PM
													<br>
													<strong>Saturday</strong> 09.00 AM - 5.30 PM
													<br>
													<strong>Sunday</strong> <span class="label label-danger">Closed</span>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-41"></i></span>
												<div class="tooltip-content">
													<h4>Address</h4> Musée du Louvre, 75058 Paris - France
													<br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-97"></i></span>
												<div class="tooltip-content">
													<h4>Languages</h4> English - French - Chinese - Russian - Italian
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-27"></i></span>
												<div class="tooltip-content">
													<h4>Parking</h4> 1-3 Rue Elisée Reclus
													<br> 76 Rue du Général Leclerc
													<br> 8 Rue Caillaux 94923
													<br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-25"></i></span>
												<div class="tooltip-content">
													<h4>Transport</h4>
													<strong>Metro: </strong>Musée du Louvre station (line 1)
													<br>
													<strong>Bus:</strong> 21, 24, 27, 39, 48, 68, 69, 72, 81, 95
													<br>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-lg-2 col-md-2">
								<div class="price_list">
									<div><sup>$</sup>69*<span class="normal_price_list">$59</span><small>*Per person</small>
										<p><a href="single_tour.html" class="btn_1">Details</a>
										</p>
									</div>

								</div>
							</div>
						</div>
					</div>
					<!--End strip -->

					<div class="strip_all_tour_list wow fadeIn" data-wow-delay="0.5s">
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<div class="ribbon_3"><span>Top rated</span>
								</div>
								<div class="wishlist">
									<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
								</div>
								<div class="img_list">
									<a href="single_tour.html"><img src="${pageContext.request.contextPath}/resources/img/tour_box_14.jpg" alt="Image">
										<div class="short_info"><i class="icon_set_1_icon-28"></i>Skyline tour</div>
									</a>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="tour_list_desc">
									<div class="rating"><i class="icon-smile voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<h3><strong>Tour Eiffel</strong> tour</h3>
									<p>Lorem ipsum dolor sit amet, quem convenire interesset ut vix, ad dicat sanctus detracto vis. Eos modus dolorum ex, qui adipisci maiestatis inciderint no, eos in elit dicat.....</p>
									<ul class="add_info">
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-83"></i></span>
												<div class="tooltip-content">
													<h4>Schedule</h4>
													<strong>Monday to Friday</strong> 09.00 AM - 5.30 PM
													<br>
													<strong>Saturday</strong> 09.00 AM - 5.30 PM
													<br>
													<strong>Sunday</strong> <span class="label label-danger">Closed</span>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-41"></i></span>
												<div class="tooltip-content">
													<h4>Address</h4> Musée du Louvre, 75058 Paris - France
													<br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-97"></i></span>
												<div class="tooltip-content">
													<h4>Languages</h4> English - French - Chinese - Russian - Italian
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-27"></i></span>
												<div class="tooltip-content">
													<h4>Parking</h4> 1-3 Rue Elisée Reclus
													<br> 76 Rue du Général Leclerc
													<br> 8 Rue Caillaux 94923
													<br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-25"></i></span>
												<div class="tooltip-content">
													<h4>Transport</h4>
													<strong>Metro: </strong>Musée du Louvre station (line 1)
													<br>
													<strong>Bus:</strong> 21, 24, 27, 39, 48, 68, 69, 72, 81, 95
													<br>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-lg-2 col-md-2">
								<div class="price_list">
									<div><sup>$</sup>49*<span class="normal_price_list">$59</span><small>*Per person</small>
										<p><a href="single_tour.html" class="btn_1">Details</a>
										</p>
									</div>

								</div>
							</div>
						</div>
					</div>
					<!--End strip -->

					<div class="strip_all_tour_list wow fadeIn" data-wow-delay="0.7s">
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<div class="ribbon_3"><span>Top rated</span>
								</div>
								<div class="wishlist">
									<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
								</div>
								<div class="img_list">
									<a href="single_tour.html"><img src="${pageContext.request.contextPath}/resources/img/tour_box_5.jpg" alt="Image">
										<div class="short_info"><i class="icon_set_1_icon-44"></i>Historic Building</div>
									</a>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="tour_list_desc">
									<div class="rating"><i class="icon-smile voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<h3><strong>Pantheon</strong> tour</h3>
									<p>Lorem ipsum dolor sit amet, quem convenire interesset ut vix, ad dicat sanctus detracto vis. Eos modus dolorum ex, qui adipisci maiestatis inciderint no, eos in elit dicat.....</p>
									<ul class="add_info">
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-83"></i></span>
												<div class="tooltip-content">
													<h4>Schedule</h4>
													<strong>Monday to Friday</strong> 09.00 AM - 5.30 PM
													<br>
													<strong>Saturday</strong> 09.00 AM - 5.30 PM
													<br>
													<strong>Sunday</strong> <span class="label label-danger">Closed</span>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-41"></i></span>
												<div class="tooltip-content">
													<h4>Address</h4> Musée du Louvre, 75058 Paris - France
													<br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-97"></i></span>
												<div class="tooltip-content">
													<h4>Languages</h4> English - French - Chinese - Russian - Italian
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-27"></i></span>
												<div class="tooltip-content">
													<h4>Parking</h4> 1-3 Rue Elisée Reclus
													<br> 76 Rue du Général Leclerc
													<br> 8 Rue Caillaux 94923
													<br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i class="icon_set_1_icon-25"></i></span>
												<div class="tooltip-content">
													<h4>Transport</h4>
													<strong>Metro: </strong>Musée du Louvre station (line 1)
													<br>
													<strong>Bus:</strong> 21, 24, 27, 39, 48, 68, 69, 72, 81, 95
													<br>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-lg-2 col-md-2">
								<div class="price_list">
									<div><sup>$</sup>49*<span class="normal_price_list">$59</span><small>*Per person</small>
										<p><a href="single_tour.html" class="btn_1">Details</a>
										</p>
									</div>

								</div>
							</div>
						</div>
					</div>
					<!--End strip -->

					<hr>

					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center">
							<li class="page-item">
								<a class="page-link" href="#" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
									<span class="sr-only">Previous</span>
								</a>
							</li>
							<li class="page-item active"><span class="page-link">1<span class="sr-only">(current)</span></span>
							</li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item">
								<a class="page-link" href="#" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
									<span class="sr-only">Next</span>
								</a>
							</li>
						</ul>
					</nav>
					<!-- end pagination-->

				</div>
				<!-- End col lg-9 -->
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</main>
	<!-- End main -->

	<!-- Footer================================================== -->
	<jsp:include page="common_footer_2.jsp"/>
	<!-- End Footer -->

	<!-- Specific scripts -->
	<!-- Cat nav mobile -->
	<script src="${pageContext.request.contextPath}/resources/js/cat_nav_mobile.js"></script>
	<script>
		$('#cat_nav').mobileMenu();
	</script>

	<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/map.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/infobox.js"></script>
	
	<!-- Check box and radio style iCheck -->
	<script>
		$('input').iCheck({
		   checkboxClass: 'icheckbox_square-grey',
		   radioClass: 'iradio_square-grey'
		 });
	</script>
	
</body>

</html>