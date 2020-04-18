<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	
	<!-- Header================================================== -->
	<jsp:include page="/WEB-INF/views/common_header_6.jsp"/>
	<!-- End Header -->
	
	<!-- CUSTOM CSS -->
	<link href="${pageContext.request.contextPath}/resources/z.SiliconVillage/css/product.css" rel="stylesheet">

	<section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-2">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h1>${product.pName}</h1>
						<span>${product.rCount} of our fellow travellers rate this tour as... &nbsp;&nbsp;</span>
						<span class="rating">
							<c:forEach var="index" begin="1" end="${Math.round(product.pRate/2)}">
								<i class="icon-smile voted"></i>
							</c:forEach>
							<c:forEach var="index" begin="1" end="${5-Math.round(product.pRate/2)}">
								<i class="icon-smile"></i>
							</c:forEach>
							<small>(${product.pRate})</small>
						</span>
					</div>
					<div class="col-md-4">
						<div id="price_single_main">
							<span><sup>￦</sup>${product.pPrice/10000}만</span> / person 
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
					<li><a href="main">Home</a>
					</li>
					<li><a href="tour_list">Tours</a>
					</li>
					<li>${product.pName}</li>
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
							<li> 
								<c:choose>
								    <c:when test="${product.foodCategory eq 'water'}">
								       	<i class="pe-7s-drop"></i>Above water
								    </c:when>
								    <c:when test="${product.foodCategory eq 'ice'}">
								       	<i class="icon-snow"></i>Icy surface
								    </c:when>
								    <c:otherwise>
								       	<i class="pe-7s-leaf"></i>Green field
								    </c:otherwise>
								</c:choose>
							</li>
							<li><i class="icon_set_1_icon-83"></i>3 Hours</li>
							<li><i class="icon_set_1_icon-13"></i>Accessibiliy</li>
							<li><i class="icon_set_1_icon-82"></i>${product.wCount} Likes</li>
							<li><i class="icon_set_1_icon-22"></i>Pet allowed</li>
							<li><i class="pe-7s-coffee"></i>Refreshments</li>
							<li><i class="icon_set_1_icon-29"></i>Tour guide</li>
						</ul>
					</div>

					<p class="d-none d-md-block d-block d-lg-none"><a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a>
					</p><!-- Map button for tablets/mobiles -->

					<div id="Img_carousel" class="slider-pro">
						<div class="sp-slides">

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}1.jpg" data-src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}1.jpg" data-small="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}1.jpg" data-medium="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}1.jpg" data-large="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}1.jpg" data-retina="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}1.jpg">
							</div>
							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}2.jpg" data-src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}1.jpg" data-small="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}2.jpg" data-medium="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}2.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_tour/2_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_tour/2_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}3.jpg" data-src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}1.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_tour/3_small.jpg" data-medium="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}3.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_tour/3_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_tour/3_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}4.jpg" data-src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}1.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_tour/4_small.jpg" data-medium="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}4.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_tour/4_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_tour/4_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}5.jpg" data-src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}1.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_tour/5_small.jpg" data-medium="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}5.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_tour/5_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_tour/5_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}6.jpg" data-src="${pageContext.request.contextPath}/resources/img/slider_single_tour/6_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_tour/6_small.jpg" data-medium="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}6.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_tour/6_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_tour/6_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}7.jpg" data-src="${pageContext.request.contextPath}/resources/img/slider_single_tour/7_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_tour/7_small.jpg" data-medium="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}7.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_tour/7_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_tour/7_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}8.jpg" data-src="${pageContext.request.contextPath}/resources/img/slider_single_tour/8_medium.jpg" data-small="${pageContext.request.contextPath}/resources/img/slider_single_tour/8_small.jpg" data-medium="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}8.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_tour/8_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_tour/8_large.jpg">
							</div>

							<div class="sp-slide">
								<img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}9.jpg" data-src="${pageContext.request.contextPath}/resources/img/slider_single_tour/9_medium.jpg" data-small="../resourcesimg/slider_single_tour/9_small.jpg" data-medium="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}9.jpg" data-large="${pageContext.request.contextPath}/resources/img/slider_single_tour/9_large.jpg" data-retina="${pageContext.request.contextPath}/resources/img/slider_single_tour/9_large.jpg">
							</div>
						</div>
						<div class="sp-thumbnails">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}1.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}2.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}3.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}4.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}5.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}6.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}7.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}8.jpg">
							<img alt="Image" class="sp-thumbnail" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}9.jpg">
						</div>
					</div>

					<hr>

					<div class="row">
						<div class="col-lg-3">
							<h3>Description</h3>
							<a href="#" class="btn_1 white add_bottom_30" data-toggle="modal" data-target="#tourGuide">GUIDE INFO</a>
						</div>
						<div class="col-lg-9">
							<h4>Paris in love</h4>
							<p>
								${product.pDesc}
							</p>
							<h4>What's include</h4>
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
							<h3>Schedule</h3>
							<a href="#" class="btn_1 outline add_bottom_30" data-toggle="modal" data-target="#timeline">　TIMELINE　</a>
						</div>
						<div class="col-lg-9">

							<div class="table-responsive">
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
										<tr>
											<td>
												<strong><em>Last Admission</em></strong>
											</td>
											<td>
												<strong>17.00</strong>
											</td>
										</tr>
									</tbody>
								</table>
							</div>

							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th colspan="2">
												1st November to 28th February
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
										<tr>
											<td>
												<strong><em>Last Admission</em></strong>
											</td>
											<td>
												<strong>17.00</strong>
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
										<li>Tour guide
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
								<small> - 10 March 2015 - </small>
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
									<input class="date-pick form-control" data-date-format="M d, D" type="text" name="date">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label><i class=" icon-clock"></i> Time</label>
									<input disabled class="time-pick form-control" value="08:00 AM" type="text">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-12">
								<div class="form-group">
									<label><i class="icon-adult"></i> Travellers</label>
									<div class="numbers-row1">
										<input type="text" value="1" id="travellers" class="qty2 form-control" name="quantity">
										<div class="inc button_inc1">+</div>
										<div class="dec button_inc1">-</div>
									</div>
									<input type="hidden" id="pNo" value="${product.pNo}">
								</div>
							</div>
						</div>
						<br>
						<table class="table table_summary">
							<tbody>
								<tr>
									<td>
										Travellers
									</td>
									<td id="travellers_cnt" class="text-right">
										
									</td>
								</tr>
								<tr>
									<td>
										Tour price
									</td>
									<td class="text-right">
										x &nbsp;&nbsp;&nbsp; ￦${product.pPrice/10000}만
									</td>
								</tr>
								<tr class="total">
									<td>
										Total cost
									</td>
									<td id="total_cost" class="text-right">
										￦${product.pPrice/10000}만
									</td>
								</tr>
							</tbody>
						</table>
						<a class="btn_full" href="cart.html">Book now</a>
						<div id="addWishlistParam" mNo="${sUser.mNo}" pNo="${product.pNo}">
							<a class="btn_full_outline" id="addWishlist" href="#"><i class=" icon-heart"></i> Add to wishlist</a>
						</div>
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
					<form method="post" action="${pageContext.request.contextPath}/resources/assets/review_tour.php" name="review_tour" id="review_tour">
						<input name="tour_name" id="tour_name" type="hidden" value="Paris Arch de Triomphe Tour">
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
									<label>Tourist guide</label>
									<select class="form-control" name="guide_review" id="guide_review">
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
	
	<!-- Modal Timeline -->
	<div class="modal fade" id="timeline" tabindex="-1" role="dialog" aria-labelledby="timelineLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<div class="container margin_60">
						<div class="main_title">
							<h2><span>TIMELINE</span> for ${product.pName} Tour</h2>
							<p>Quisque at tortor a libero posuere laoreet vitae sed arcu. Curabitur consequat.</p>
						</div>
					</div>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div class="container margin_60">
						<ul class="cbp_tmtimeline">
							<li>
								<time class="cbp_tmtime" datetime="09:30"><span>30 minutes</span> <span>09:30</span></time>
								<div class="cbp_tmicon timeline_icon_point"></div>
									<div class="cbp_tmlabel">
										<div class="float-right d-none d-md-block">Guide <strong>John Doe</strong><img src="${pageContext.request.contextPath}/resources/img/guide_1.jpg" alt="Image" class="rounded-circle speaker">
										</div>
										<h2><span>Lorem ipsum</span>Meeting point</h2>
										<p>Winter purslane courgette pumpkin quandong komatsuna fennel green bean cucumber watercress. Pea sprouts wattle seed rutabaga okra yarrow cress avocado grape radish bush tomato ricebean black-eyed pea maize eggplant. </p>
									</div>
							</li>
							<li>
								<time class="cbp_tmtime" datetime="11:30"><span>2 hours</span> <span>11:30</span>
								</time>
								<div class="cbp_tmicon timeline_icon_pic"></div>
								<div class="cbp_tmlabel">
									<div class="float-right d-none d-md-block">Guide <strong>John Doe</strong><img src="${pageContext.request.contextPath}/resources/img/guide_2.jpg" alt="Image" class="rounded-circle speaker">
									</div>
									<h2><span>Lorem ipsum</span>Exhibitions</h2>
									<p>Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette lettuce. Celery coriander bitterleaf epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi.</p>
								</div>
							</li>
							<li>
								<time class="cbp_tmtime" datetime="13:30"><span>1 hour</span> <span>13:30</span>
								</time>
								<div class="cbp_tmicon timeline_icon_break"></div>
								<div class="cbp_tmlabel">
									<h2><span>Lorem ipsum</span>Lunch and coffee break</h2>
									<p>Parsnip lotus root celery yarrow seakale tomato collard greens tigernut epazote ricebean melon tomatillo soybean chicory broccoli beet greens peanut salad. </p>
								</div>
							</li>
							<li>
								<time class="cbp_tmtime" datetime="14:30"><span>2 hours</span> <span>14:30</span>
								</time>
								<div class="cbp_tmicon timeline_icon_audio"></div>
								<div class="cbp_tmlabel">
									<div class="float-right d-none d-md-block">Guide <strong>John Doe</strong><img src="${pageContext.request.contextPath}/resources/img/guide_1.jpg" alt="Image" class="rounded-circle speaker">
									</div>
									<h2><span>Lorem ipsum</span>The auditorium Louvre</h2>
									<p>Peanut gourd nori welsh onion rock melon mustard jícama. Desert raisin amaranth kombu aubergine kale seakale brussels sprout pea. Black-eyed pea celtuce bamboo shoot salad kohlrabi leek squash prairie turnip catsear rock melon chard taro broccoli turnip greens. Fennel quandong potato watercress ricebean swiss chard garbanzo. Endive daikon brussels sprout lotus root silver beet epazote melon shallot.</p>
								</div>
							</li>
							<li>
								<time class="cbp_tmtime" datetime="16:30"><span>2 hours</span> <span>16:30</span>
								</time>
								<div class="cbp_tmicon timeline_icon_pic"></div>
								<div class="cbp_tmlabel">
									<div class="float-right d-none d-md-block">Guide <strong>John Doe</strong><img src="${pageContext.request.contextPath}/resources/img/guide_2.jpg" alt="Image" class="rounded-circle speaker">
									</div>
									<h2><span>Lorem ipsum</span>Modern art</h2>
									<p>Parsley amaranth tigernut silver beet maize fennel spinach. Ricebean black-eyed pea maize scallion green bean spinach cabbage jícama bell pepper carrot onion corn plantain garbanzo. Sierra leone bologi komatsuna celery peanut swiss chard silver beet squash dandelion maize chicory burdock tatsoi dulse radish wakame beetroot.</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Modal Timeline -->
	
	<!-- Modal Tour Guide -->
	<div class="modal fade" id="tourGuide" tabindex="-1" role="dialog" aria-labelledby="tourGuideLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<div class="container margin_60">
						<div class="main_title">
							<h1>I am Madlene</h1>
							<p>Ridiculus sociosqu cursus neque cursus curae ante scelerisque vehicula.</p>
						</div>
					</div>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<div class="modal-body">
					<div class="margin_60 container">
						<div id="tour_guide">
							<p>
								<img src="${pageContext.request.contextPath}/resources/img/tourist_guide_pic.jpg" alt="Image" class="rounded-circle styled">
							</p>
							<h2>Madlene - Certified tourist guide</h2>
							<p class="lead add_bottom_30">
								"Eu tota moderatius usu, ad putant aliquando constituam ius, <strong>commodo sententiae</strong> suscipiantur nam eu. Tamquam nominati abhorreant at vis, has id harum melius petentium. Mea wisi debet omnium ne, est ea graecis noluisse recusabo, denique deterruisset ius et."
							</p>
						</div>
						<div class="row">
							<div class="col-md-8">
								<h3>Some words about me</h3>
								<p>
									Lorem ipsum dolor sit amet, ex justo nominavi eum, cu veniam salutatus reprimique quo, nisl virtute meliore ei eos. Quaestio consequat sed no, urbanitas honestatis ei usu. Ex nec aliquid appetere petentium, ei eum soleat possim. Has ea omnes prompta. Vel te magna voluptaria, cu nec fabulas voluptatum, has et dictas quaeque labores. Qui ex mazim sadipscing.
								</p>
								<h5>Education</h5>
								<p>
									Lorem ipsum dolor sit amet, ex justo nominavi eum, cu veniam salutatus reprimique quo, nisl virtute meliore ei eos. Quaestio consequat sed no, urbanitas honestatis ei usu. Ex nec aliquid appetere petentium, ei eum soleat possim. Has ea omnes prompta. Vel te magna voluptaria, cu nec fabulas voluptatum, has et dictas quaeque labores. Qui ex mazim sadipscing.
								</p>
								<h5>Past experiences</h5>
								<p>
									Lorem ipsum dolor sit amet, ex justo nominavi eum, cu veniam salutatus reprimique quo, nisl virtute meliore ei eos. Quaestio consequat sed no, urbanitas honestatis ei usu. Ex nec aliquid appetere petentium, ei eum soleat possim. Has ea omnes prompta. Vel te magna voluptaria, cu nec fabulas voluptatum, has et dictas quaeque labores. Qui ex mazim sadipscing.
								</p>
							</div>
							<div class="col-md-4">
								<h3>Spoken languages</h3>
								<p>
									Eu tota moderatius usu, ad putant aliquando constituam ius, commodo sententiae suscipiantur nam eu.
								</p>
								<p>
									<img src="${pageContext.request.contextPath}/resources/img/lang_en.png" width="40" height="26" alt="Image" data-retina="true"> <img src="${pageContext.request.contextPath}/resources/img/lang_fr.png" width="40" height="26" alt="Image" data-retina="true">
									<img src="${pageContext.request.contextPath}/resources/img/lang_de.png" width="40" height="26" alt="Image" data-retina="true"> <img src="${pageContext.request.contextPath}/resources/img/lang_es.png" width="40" height="26" alt="Image" data-retina="true">
								</p>
								<h3><i class=""></i>Certificates</h3>
								<p>
									Eu tota moderatius usu, ad putant aliquando constituam ius, commodo sententiae suscipiantur nam eu.
								</p>
								<ul class="list_ok">
									<li>Putant aliquando constituam</li>
									<li>Commodo sententiae</li>
									<li>Denique deterruisset</li>
									<li>Putant aliquando constituam</li>
								</ul>
							</div>
						</div>
						<!-- end row -->
					</div>
					<!-- end container -->
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-6 nopadding features-intro-img">
								<div class="features-bg">
									<div class="features-img">
									</div>
								</div>
							</div>
							<div class="col-lg-6 nopadding">
								<div class="features-content">
									<h3>"Ex vero mediocrem"</h3>
									<p>
										Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a lorem quis neque interdum consequat ut sed sem. Duis quis tempor nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus.
									</p>
									<p>
										<a href="#" class=" btn_1 white">Read more</a>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="container margin_60">
						<div class="main_title">
							<h2>What <span>customers </span>says</h2>
							<p>
								Quisque at tortor a libero posuere laoreet vitae sed arcu. Curabitur consequat.
							</p>
						</div>
			
						<div class="row">
							<div class="col-md-6">
								<div class="review_strip">
									<img src="${pageContext.request.contextPath}/resources/img/avatar1.jpg" alt="Image" class="rounded-circle">
									<h4>Jhon Doe</h4>
									<p>
										"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a lorem quis neque interdum consequat ut sed sem. Duis quis tempor nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus."
									</p>
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class=" icon-star-empty"></i><i class=" icon-star-empty"></i>
									</div>
								</div>
								<!-- End review strip -->
							</div>
			
							<div class="col-md-6">
								<div class="review_strip">
									<img src="${pageContext.request.contextPath}/resources/img/avatar2.jpg" alt="Image" class="rounded-circle">
									<h4>Mark Schulz</h4>
									<p>
										"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a lorem quis neque interdum consequat ut sed sem. Duis quis tempor nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus."
									</p>
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class=" icon-star-empty"></i><i class=" icon-star-empty"></i>
									</div>
								</div>
								<!-- End review strip -->
							</div>
						</div>
						<!-- End row -->
			
						<div class="row">
							<div class="col-md-6">
								<div class="review_strip">
									<img src="${pageContext.request.contextPath}/resources/img/avatar3.jpg" alt="Image" class="rounded-circle">
									<h4>Tony Costello</h4>
									<p>
										"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a lorem quis neque interdum consequat ut sed sem. Duis quis tempor nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus."
									</p>
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class=" icon-star-empty"></i><i class=" icon-star-empty"></i>
									</div>
								</div>
								<!-- End review strip -->
							</div>
			
							<div class="col-md-6">
								<div class="review_strip">
									<img src="${pageContext.request.contextPath}/resources/img/avatar1.jpg" alt="Image" class="rounded-circle">
									<h4>Peter Gabriel</h4>
									<p>
										"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a lorem quis neque interdum consequat ut sed sem. Duis quis tempor nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus."
									</p>
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class=" icon-star-empty"></i><i class=" icon-star-empty"></i>
									</div>
								</div>
								<!-- End review strip -->
							</div>
						</div>
						<!-- End row -->
					</div>
					<!-- End container -->
				</div>
			</div>
		</div>
	</div>
	<!-- End Modal Tour Guide -->
	
	<!-- Footer================================================== -->
	<jsp:include page="/WEB-INF/views/common_footer_2.jsp"/>
	<!-- End Footer -->

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
		$('input.time-pick').timepicker({
			minuteStep: 30,
			showInputs: false
		})
	</script>
	
	<script>
		$(".button_inc1").click(function () {

			var $button = $(this);
			var oldValue = $button.parent().find("input").val();

			if ($button.text() == "+") {
				var newVal = parseFloat(oldValue) + 1;
			} else {
				// Don't allow decrementing below zero
				if (oldValue > 1) {
					var newVal = parseFloat(oldValue) - 1;
				} else {
					newVal = 0;
				}
			}
			$button.parent().find("input").val(newVal);
			
			var pNo = $button.parent().next().attr("value");
			
			$.ajax({
				type:"GET",
				url:"tour_detail_travellers?",
				data:"newVal="+newVal+"&pNo="+pNo,
				async:true,
				dataType: "text",
				success:function(d) {
					console.log(d.pPrice);
					$("#travellers_cnt").html(d.newVal);
					$("#total_cost").html("￦"+d.newVal*d.pPrice/10000+"만");
				}
			});
		});
		
	</script>
	
	<script src="${pageContext.request.contextPath}/resources/z.SiliconVillage/js/product.js"></script>
	
	<!--Review modal validation -->
	<script src="${pageContext.request.contextPath}/resources/assets/validate.js"></script>

	<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/map.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/infobox.js"></script>
	
</body>

</html>