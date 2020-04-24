<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->

	<section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/img/restaurant_top_in.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-2">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h1>Bella Napoli</h1>
						<span>Champ de Mars, 5 Avenue Anatole, 75007 Paris.</span>
						<span class="rating"><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small></span>
					</div>
					<div class="col-md-4">
						<div id="price_single_main">
							from/per person <span><sup>$</sup>52</span>
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
							<li><i class="icon_set_3_restaurant-1"></i>Pizza /Italian</li>
							<li><i class="icon_set_1_icon-13"></i>Accessibiliy</li>
							<li><i class="icon_set_1_icon-82"></i>144 Likes</li>
							<li><i class="icon_set_1_icon-22"></i>Pet allowed</li>
							<li><i class="icon_set_1_icon-27"></i>Parking</li>
							<li><i class="icon_set_1_icon-47"></i>No smoking area</li>
						</ul>
					</div>

					<p class="d-none d-md-block d-block d-lg-none"><a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a></p>
					<!-- Map button for tablets/mobiles -->

					<div id="Img_carousel" class="slider-pro">
						<div class="sp-slides">

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/css/images/blank.gif" data-src="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/1_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/1_small.jpg" data-medium="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/1_medium.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/1_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/1_large.jpg">
							</div>
							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/css/images/blank.gif" data-src="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/2_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/2_small.jpg" data-medium="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/2_medium.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/2_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/2_large.jpg">
								<h3 class="sp-layer sp-black sp-padding" data-horizontal="40" data-vertical="40" data-show-transition="left">
                        Lorem ipsum dolor sit amet </h3>
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/css/images/blank.gif" data-src="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/3_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/3_small.jpg" data-medium="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/3_medium.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/3_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/3_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/css/images/blank.gif" data-src="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/4_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/4_small.jpg" data-medium="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/4_medium.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/4_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/4_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/css/images/blank.gif" data-src="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/5_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/5_small.jpg" data-medium="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/5_medium.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/5_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/5_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/css/images/blank.gif" data-src="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/6_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/6_small.jpg" data-medium="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/6_medium.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/6_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/6_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/css/images/blank.gif" data-src="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/7_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/7_small.jpg" data-medium="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/7_medium.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/7_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/7_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/css/images/blank.gif" data-src="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/8_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/8_small.jpg" data-medium="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/8_medium.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/8_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/8_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/css/images/blank.gif" data-src="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/9_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/9_small.jpg" data-medium="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/9_medium.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/9_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/9_large.jpg">
							</div>
						</div>
						<div class="sp-thumbnails">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/1_medium.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/2_medium.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/3_medium.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/4_medium.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/5_medium.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/6_medium.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/7_medium.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/8_medium.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/img/slider_single_restaurant/9_medium.jpg">
						</div>
					</div>

					<hr>

					<div class="row">
						<div class="col-lg-3">
							<h3>Description</h3>
						</div>
						<div class="col-lg-9">
							<h4>About us</h4>
							<p>
								Lorem ipsum dolor sit amet, at omnes deseruisse pri. Quo aeterno legimus insolens ad. Sit cu detraxit constituam, an mel iudico constituto efficiendi. Eu ponderum mediocrem has, vitae adolescens in pro. Mea liber ridens inermis ei, mei legendos vulputate an, labitur tibique te qui.
							</p>
							<h4>Menu and dishes</h4>
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
					</div>
					<hr>

					<div class="row">
						<div class="col-lg-3">
							<h3>Opening time</h3>
						</div>
						<div class="col-lg-9">
							<div class=" table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th colspan="2">
												1st March to 31st October
											</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												Monday
											</td>
											<td>
												10.00 - 17.30
											</td>
										</tr>
										<tr>
											<td>
												Tuesday
											</td>
											<td>
												09.00 - 17.30
											</td>
										</tr>
										<tr>
											<td>
												Wednesday
											</td>
											<td>
												09.00 - 17.30
											</td>
										</tr>
										<tr>
											<td>
												Thursday
											</td>
											<td>
												<span class="label label-danger">Closed</span>
											</td>
										</tr>
										<tr>
											<td>
												Friday
											</td>
											<td>
												09.00 - 17.30
											</td>
										</tr>
										<tr>
											<td>
												Saturday
											</td>
											<td>
												09.00 - 17.30
											</td>
										</tr>
										<tr>
											<td>
												Sunday
											</td>
											<td>
												10.00 - 17.30
											</td>
										</tr>
									</tbody>
								</table>
							</div>

						</div>
					</div>

					<hr>

					<div class="row">
						<div class="col-lg-3">
							<h3>Reviews </h3>
							<a href="#" class="btn_1 add_bottom_30" data-toggle="modal" data-target="#myReview">Leave a review</a>
						</div>
						<div class="col-lg-9">
							<div id="general_rating">11 Reviews
								<div class="rating">
									<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
								</div>
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
										<li>Service
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

							<div class="review_strip_single last">
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
						</div>
					</div>
				</div>
				<!--End  single_tour_desc-->

				<aside class="col-lg-4">
					<p class="d-none d-xl-block d-lg-block d-xl-none">
						<a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a>
					</p>
					<div class="box_style_1 expose">
						<h3 class="inner">- Booking -</h3>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label><i class="icon-calendar-7"></i> Select a date</label>
									<input class="date-pick form-control" data-date-format="M d, D" type="text">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label><i class=" icon-clock"></i> Time</label>
									<input class="time-pick form-control" value="12:00 AM" type="text">
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
						<hr>
						<a class="btn_full" href="cart.html">Book now</a>
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
					<form method="post" action="${pageContext.request.contextPath}/resources/assets/review_restaurant.php" name="review_restaurant" id="review_restaurant">
						<input name="restaurant_name" id="restaurant_name" type="hidden" value="Mexican Taco Mex">
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
						</div>
						<!-- End row -->
						<hr>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Position</label>
									<select class="form-control" name="position_review" id="position_review">
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
									<label>Service</label>
									<select class="form-control" name="service_review" id="service_review">
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

	<!-- Specific scripts -->
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
		$('input.time-pick').timepicker({
			minuteStep: 15,
			showInpunts: false
		})
	</script>

	<!--Review modal validation -->
	<script src="${pageContext.request.contextPath}/resources/assets/validate.js"></script>

	<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyB4JNh6iELs0fU_OpkHc1sFUzYeR5Mtxk8"></script>               
	<script src="${pageContext.request.contextPath}/resources/js/map.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/infobox.js"></script>
	
	
</body>

</html>