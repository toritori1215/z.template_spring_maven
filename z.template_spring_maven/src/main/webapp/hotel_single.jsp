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

   
	
	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->

	<section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/img/single_hotel_bg_1.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-2">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<span class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class=" icon-star-empty"></i></span>
						<h1>Mariott Hotel</h1>
						<span>Champ de Mars, 5 Avenue Anatole, 75007 Paris.</span>
					</div>
					<div class="col-md-4">
						<div id="price_single_main" class="hotel">
							from/per night <span><sup>$</sup>95</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End section -->

	<main>
		<div id="position">
			<div class="container">
				<ul>
					<li><a href="#">Home</a>
					</li>
					<li><a href="#">Category</a>
					</li>
					<li>Page active</li>
				</ul>
			</div>
		</div>
		<!-- End Position -->

		<div class="collapse" id="collapseMap">
			<div id="map" class="map"></div>
		</div>
		<!-- End Map -->

		<div class="container margin_60">
			<div class="row">
				<div class="col-lg-8" id="single_tour_desc">
					<div id="single_tour_feat">
						<ul>
							<li><i class="icon_set_2_icon-116"></i>Plasma TV</li>
							<li><i class="icon_set_1_icon-86"></i>Free Wifi</li>
							<li><i class="icon_set_2_icon-110"></i>Poll</li>
							<li><i class="icon_set_1_icon-59"></i>Breakfast</li>
							<li><i class="icon_set_1_icon-22"></i>Pet allowed</li>
							<li><i class="icon_set_1_icon-13"></i>Accessibiliy</li>
							<li><i class="icon_set_1_icon-27"></i>Parking</li>
						</ul>
					</div>
					<p class="d-none d-md-block d-block d-lg-none"><a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a>
					</p>
					<!-- Map button for tablets/mobiles -->
					<div id="Img_carousel" class="slider-pro">
						<div class="sp-slides">

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/css/images/blank.gif" data-src="${pageContext.request.contextPath}/resources/img/slider_single_tour/1_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_tour/1_small.jpg" data-medium="${pageContext.request.contextPath}/resources/img/slider_single_tour/1_medium.jpg" data-large="img/slider_single_tour/1_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_tour/1_large.jpg">
							</div>
							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/css/images/blank.gif" data-src="${pageContext.request.contextPath}/resources/img/slider_single_tour/2_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_tour/2_small.jpg" data-medium="${pageContext.request.contextPath}/resources/img/slider_single_tour/2_medium.jpg" data-large="img/slider_single_tour/2_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_tour/2_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/css/images/blank.gif" data-src="${pageContext.request.contextPath}/resources/img/slider_single_tour/3_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_tour/3_small.jpg" data-medium="${pageContext.request.contextPath}/resources/img/slider_single_tour/3_medium.jpg" data-large="img/slider_single_tour/3_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_tour/3_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/css/images/blank.gif" data-src="${pageContext.request.contextPath}/resources/img/slider_single_tour/4_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_tour/4_small.jpg" data-medium="${pageContext.request.contextPath}/resources/img/slider_single_tour/4_medium.jpg" data-large="img/slider_single_tour/4_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_tour/4_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/css/images/blank.gif" data-src="${pageContext.request.contextPath}/resources/img/slider_single_tour/5_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_tour/5_small.jpg" data-medium="${pageContext.request.contextPath}/resources/img/slider_single_tour/5_medium.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_tour/5_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_tour/5_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/css/images/blank.gif" data-src="${pageContext.request.contextPath}/resources/img/slider_single_tour/6_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_tour/6_small.jpg" data-medium="${pageContext.request.contextPath}/resources/img/slider_single_tour/6_medium.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_tour/6_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_tour/6_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/css/images/blank.gif" data-src="${pageContext.request.contextPath}/resources/img/slider_single_tour/7_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_tour/7_small.jpg" data-medium="${pageContext.request.contextPath}/resources/img/slider_single_tour/7_medium.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_tour/7_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_tour/7_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/css/images/blank.gif" data-src="${pageContext.request.contextPath}/resources/img/slider_single_tour/8_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_tour/8_small.jpg" data-medium="${pageContext.request.contextPath}/resources/img/slider_single_tour/8_medium.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_tour/8_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_tour/8_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/css/images/blank.gif" data-src="${pageContext.request.contextPath}/resources/img/slider_single_tour/9_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_tour/9_small.jpg" data-medium="${pageContext.request.contextPath}/resources/img/slider_single_tour/9_medium.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_tour/9_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_tour/9_large.jpg">
							</div>
						</div>
						<div class="sp-thumbnails">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/img/slider_single_tour/1_medium.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/img/slider_single_tour/2_medium.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/img/slider_single_tour/3_medium.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/img/slider_single_tour/4_medium.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/img/slider_single_tour/5_medium.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/img/slider_single_tour/6_medium.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/img/slider_single_tour/7_medium.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/img/slider_single_tour/8_medium.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/img/slider_single_tour/9_medium.jpg">
						</div>
					</div>

					<hr>

					<div class="row">
						<div class="col-lg-3">
							<h3>Description</h3>
						</div>
						<div class="col-lg-9">
							<p>
								Lorem ipsum dolor sit amet, at omnes deseruisse pri. Quo aeterno legimus insolens ad. Sit cu detraxit constituam, an mel iudico constituto efficiendi. Eu ponderum mediocrem has, vitae adolescens in pro. Mea liber ridens inermis ei, mei legendos vulputate an, labitur tibique te qui.
							</p>
							<h4>Hotel facilities</h4>
							<p>
								Lorem ipsum dolor sit amet, at omnes deseruisse pri. Quo aeterno legimus insolens ad. Sit cu detraxit constituam, an mel iudico constituto efficiendi.
							</p>
							<div class="row">
								<div class="col-md-6">
									<ul class="list_ok">
										<li>Lorem ipsum dolor sit amet</li>
										<li>No scripta electram necessitatibus sit</li>
										<li>Quidam percipitur instructior an eum</li>
										<li>Ut est saepe munere ceteros</li>
										<li>No scripta electram necessitatibus sit</li>
										<li>Quidam percipitur instructior an eum</li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul class="list_ok">
										<li>Lorem ipsum dolor sit amet</li>
										<li>No scripta electram necessitatibus sit</li>
										<li>Quidam percipitur instructior an eum</li>
										<li>No scripta electram necessitatibus sit</li>
									</ul>
								</div>
							</div>
							<!-- End row  -->
						</div>
						<!-- End col-md-9  -->
					</div>
					<!-- End row  -->

					<hr>

					<div class="row">
						<div class="col-lg-3">
							<h3>Rooms Types</h3>
						</div>
						<div class="col-lg-9">
							<h4>Single Room</h4>
							<p>
								Lorem ipsum dolor sit amet, at omnes deseruisse pri. Quo aeterno legimus insolens ad. Sit cu detraxit constituam, an mel iudico constituto efficiendi.
							</p>

							<div class="row">
								<div class="col-md-6">
									<ul class="list_icons">
										<li><i class="icon_set_1_icon-86"></i> Free wifi</li>
										<li><i class="icon_set_2_icon-116"></i> Plasma Tv</li>
										<li><i class="icon_set_2_icon-106"></i> Safety box</li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul class="list_ok">
										<li>Lorem ipsum dolor sit amet</li>
										<li>No scripta electram necessitatibus sit</li>
										<li>Quidam percipitur instructior an eum</li>
									</ul>
								</div>
							</div>
							<!-- End row  -->
							<div class="owl-carousel owl-theme carousel-thumbs-2 magnific-gallery">
								<div class="item">
									<a href="${pageContext.request.contextPath}/resources/img/carousel/1.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/resources/img/carousel/1.jpg" alt="Image">
									</a>
								</div>
								<div class="item">
									<a href="${pageContext.request.contextPath}/resources/img/carousel/2.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/resources/img/carousel/2.jpg" alt="Image">
									</a>
								</div>
								<div class="item">
									<a href="${pageContext.request.contextPath}/resources/img/carousel/3.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/resources/img/carousel/3.jpg" alt="Image">
									</a>
								</div>
								<div class="item">
									<a href="${pageContext.request.contextPath}/resources/img/carousel/4.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/resources/img/carousel/4.jpg" alt="Image">
									</a>
								</div>
							</div>
							<!-- End photo carousel  -->

							<hr>

							<h4>Double Room</h4>
							<p>
								Lorem ipsum dolor sit amet, at omnes deseruisse pri. Quo aeterno legimus insolens ad. Sit cu detraxit constituam, an mel iudico constituto efficiendi.
							</p>

							<div class="row">
								<div class="col-md-6">
									<ul class="list_icons">
										<li><i class="icon_set_1_icon-86"></i> Free wifi</li>
										<li><i class="icon_set_2_icon-116"></i> Plasma Tv</li>
										<li><i class="icon_set_2_icon-106"></i> Safety box</li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul class="list_ok">
										<li>Lorem ipsum dolor sit amet</li>
										<li>No scripta electram necessitatibus sit</li>
										<li>Quidam percipitur instructior an eum</li>
									</ul>
								</div>
							</div>
							<!-- End row  -->
							<div class="owl-carousel owl-theme carousel-thumbs-2 magnific-gallery">
								<div class="item">
									<a href="${pageContext.request.contextPath}/resources/img/carousel/1.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/resources/img/carousel/1.jpg" alt="Image">
									</a>
								</div>
								<div class="item">
									<a href="${pageContext.request.contextPath}/resources/img/carousel/2.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/resources/img/carousel/2.jpg" alt="Image">
									</a>
								</div>
								<div class="item">
									<a href="${pageContext.request.contextPath}/resources/img/carousel/3.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/resources/img/carousel/3.jpg" alt="Image">
									</a>
								</div>
								<div class="item">
									<a href="${pageContext.request.contextPath}/resources/img/carousel/4.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/resources/img/carousel/4.jpg" alt="Image">
									</a>
								</div>
							</div>
							<!-- End photo carousel  -->
						</div>
						<!-- End col-md-9  -->
					</div>
					<!-- End row  -->

					<hr>

					<div class="row">
						<div class="col-lg-3">
							<h3>Reviews</h3>
							<a href="#" class="btn_1 add_bottom_30" data-toggle="modal" data-target="#myReview">Leave a review</a>
						</div>
						<div class="col-lg-9">
							<div id="score_detail"><span>7.5</span>Good <small>(Based on 34 reviews)</small>
							</div>
							<!-- End general_rating -->
							<div class="row" id="rating_summary">
								<div class="col-md-6">
									<ul>
										<li>Position
											<div class="rating">
												<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</div>
										</li>
										<li>Comfort
											<div class="rating">
												<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i>
											</div>
										</li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul>
										<li>Price
											<div class="rating">
												<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</div>
										</li>
										<li>Quality
											<div class="rating">
												<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<!-- End row -->
							<hr>
							<div class="review_strip_single">
								<img src="${pageContext.request.contextPath}/resources/img/avatar1.jpg" alt="Image" class="rounded-circle">
								<small> - 10 March 2015 -</small>
								<h4>Jhon Doe</h4>
								<p>
									"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a lorem quis neque interdum consequat ut sed sem. Duis quis tempor nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus."
								</p>
								<div class="rating">
									<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
								</div>
							</div>
							<!-- End review strip -->

							<div class="review_strip_single">
								<img src="${pageContext.request.contextPath}/resources/img/avatar2.jpg" alt="Image" class="rounded-circle">
								<small> - 10 March 2015 -</small>
								<h4>Jhon Doe</h4>
								<p>
									"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a lorem quis neque interdum consequat ut sed sem. Duis quis tempor nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus."
								</p>
								<div class="rating">
									<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
								</div>
							</div>
							<!-- End review strip -->

							<div class="review_strip_single last">
								<img src="${pageContext.request.contextPath}/resources/img/avatar3.jpg" alt="Image" class="rounded-circle">
								<small> - 10 March 2015 -</small>
								<h4>Jhon Doe</h4>
								<p>
									"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a lorem quis neque interdum consequat ut sed sem. Duis quis tempor nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus."
								</p>
								<div class="rating">
									<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
								</div>
							</div>
							<!-- End review strip -->
						</div>
					</div>
				</div>
				<!--End  single_tour_desc-->

				<aside class="col-lg-4">
					<p class="d-none d-xl-block d-lg-block d-xl-none">
						<a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a>
					</p>
					<div class="box_style_1 expose">
						<h3 class="inner">Check Availability</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label><i class="icon-calendar-7"></i> Check in</label>
									<input class="date-pick form-control" data-date-format="M d, D" type="text">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label><i class="icon-calendar-7"></i> Check out</label>
									<input class="date-pick form-control" data-date-format="M d, D" type="text">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-6">
								<div class="form-group">
									<label>Adults</label>
									<div class="numbers-row">
										<input type="text" value="1" id="adults" class="qty2 form-control" name="quantity">
									</div>
								</div>
							</div>
							<div class="col-6">
								<div class="form-group">
									<label>Children</label>
									<div class="numbers-row">
										<input type="text" value="0" id="children" class="qty2 form-control" name="quantity">
									</div>
								</div>
							</div>
						</div>
						<br>

						<a class="btn_full" href="cart_hotel.html">Check now</a>
						<a class="btn_full_outline" href="#"><i class=" icon-heart"></i> Add to whislist</a>
					</div>
					<!--/box_style_1 -->

					<div class="box_style_4">
						<i class="icon_set_1_icon-90"></i>
						<h4><span>Book</span> by phone</h4>
						<a href="tel://004542344599" class="phone">+45 423 445 99</a>
						<small>Monday to Friday 9.00am - 7.30pm</small>
					</div>

				</aside>
			</div>
			<!--End row -->
		</div>
		<!--End container -->
        
        <div id="overlay"></div>
		<!-- Mask on input focus -->
    
	</main>
	<!-- End main -->
	
	<!-- Footer================================================== -->
	<jsp:include page="common_footer_2.jsp"/>
	<!-- End Footer -->
	
	<!-- Modal Review -->
	<div class="modal fade" id="myReview" tabindex="-1" role="dialog" aria-labelledby="myReviewLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myReviewLabel">Write your review</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div id="message-review">
					</div>
					<form method="post" action="${pageContext.request.contextPath}/resources/vassets/review_hotel.php" name="review_hotel" id="review_hotel">
						<input name="hotel_name" id="hotel_name" type="hidden" value="Mariott Hotel Paris">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input name="name_review" id="name_review" type="text" placeholder="Your name" class="form-control">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input name="lastname_review" id="lastname_review" type="text" placeholder="Your last name" class="form-control">
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input name="email_review" id="email_review" type="email" placeholder="Your email" class="form-control">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<select class="form-control" name="room_type_review" id="room_type_review">
										<option value="">Select room type</option>
										<option value="Single room">Single Room</option>
										<option value="Double Room">Double Room</option>
										<option value="King double room">King Double Room</option>
									</select>
								</div>
							</div>
						</div>
						<!-- End row -->
						<hr>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Cleanliness</label>
									<select class="form-control" name="cleanliness_review" id="cleanliness_review">
										<option value="">Please review</option>
										<option value="Low">Low</option>
										<option value="Sufficient">Sufficient</option>
										<option value="Good">Good</option>
										<option value="Excellent">Excellent</option>
										<option value="Superb">Super</option>
										<option value="Not rated">I don't know</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Comfort</label>
									<select class="form-control" name="comfort_review" id="comfort_review">
										<option value="">Please review</option>
										<option value="Low">Low</option>
										<option value="Sufficient">Sufficient</option>
										<option value="Good">Good</option>
										<option value="Excellent">Excellent</option>
										<option value="Superb">Super</option>
										<option value="Not rated">I don't know</option>
									</select>
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Price</label>
									<select class="form-control" name="price_review" id="price_review">
										<option value="">Please review</option>
										<option value="Low">Low</option>
										<option value="Sufficient">Sufficient</option>
										<option value="Good">Good</option>
										<option value="Excellent">Excellent</option>
										<option value="Superb">Super</option>
										<option value="Not rated">I don't know</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Quality</label>
									<select class="form-control" name="quality_review" id="quality_review">
										<option value="">Please review</option>
										<option value="Low">Low</option>
										<option value="Sufficient">Sufficient</option>
										<option value="Good">Good</option>
										<option value="Excellent">Excellent</option>
										<option value="Superb">Super</option>
										<option value="Not rated">I don't know</option>
									</select>
								</div>
							</div>
						</div>
						<!-- End row -->
						<div class="form-group">
							<textarea name="review_text" id="review_text" class="form-control" style="height:100px" placeholder="Write your review"></textarea>
						</div>
						<div class="form-group">
							<input type="text" id="verify_review" class=" form-control" placeholder="Are you human? 3 + 1 =">
						</div>
						<input type="submit" value="Submit" class="btn_1" id="submit-review">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- End modal review -->

	<!-- Date and time pickers -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.sliderPro.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function ($) {
			$('#Img_carousel').sliderPro({
				width: 960,
				height: 500,
				fade: true,
				arrows: true,
				buttons: false,
				fullScreen: false,
				smallSize: 500,
				startSlide: 0,
				mediumSize: 1000,
				largeSize: 3000,
				thumbnailArrows: true,
				autoplay: false
			});
		});
	</script>
	
	<!-- Date and time pickers -->
	<script>
		$('input.date-pick').datepicker('setDate', 'today');
	</script>
	
	<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>                      
	<script src="${pageContext.request.contextPath}/resources/js/map.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/infobox.js"></script>
	
	<!-- Carousel -->
	<script>
		$('.carousel-thumbs-2').owlCarousel({
		loop:false,
		margin:5,
		responsiveClass:true,
		nav:false,
		responsive:{
			0:{
				items:1
			},
			600:{
				items:3
			},
			1000:{
				items:4,
				nav:false
			}
		}
	});
	</script>

	<!--Review modal validation -->
	<script src="${pageContext.request.contextPath}/resources/assets/validate.js"></script>
	
	
</body>

</html>