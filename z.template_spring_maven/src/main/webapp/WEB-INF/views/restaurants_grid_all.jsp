<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->

	<section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/img/restaurant_top.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>Paris Restaurants</h1>
				<p>Ridiculus sociosqu cursus neque cursus curae ante scelerisque vehicula.</p>
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
					<li><a href="">Category</a>
					</li>
					<li>Page active</li>
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
							<li><a href="#" id="active"><i class="icon_set_3_restaurant-10"></i>All restaurants <span>(141)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_3_restaurant-1"></i>Pizza / Italian <span>(20)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_3_restaurant-2"></i>Fast Food <span>(16)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_3_restaurant-3"></i>Japanese <span>(12)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_3_restaurant-4"></i>Chinese <span>(11)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_3_restaurant-5"></i>International <span>(20)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_3_restaurant-8"></i>Coffe bar <span>(08)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_3_restaurant-7"></i>Fish <span>(08)</span></a>
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
											<input type="checkbox"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
								</ul>
							</div>
							<div class="filter_type">
								<h6>District/Area</h6>
								<ul>
									<li>
										<label>
											<input type="checkbox">Paris Centre
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox">La Defance
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox">Latin Quarter
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
										<option value="lower">Lowest ranking</option>
										<option value="higher">Highest ranking</option>
									</select>
								</div>
							</div>
							<div class="col-md-3 col-sm-4 col-6">
								<div class="styled-select-filters" style="visibility: hidden;">
									<select name="sort_rating" id="sort_rating">
										<option value="" selected>Sort by ranking</option>
										<option value="lower">Lowest ranking</option>
										<option value="higher">Highest ranking</option>
									</select>
								</div>
							</div>
							<div class="col-md-6 col-sm-4 d-none d-sm-block text-right">
								<a href="#" class="bt_filters"><i class="icon-th"></i></a> <a href="all_tours_list.html" class="bt_filters"><i class=" icon-list"></i></a>
							</div>
						</div>
					</div>
					<!--End tools -->

					<div class="row">
						<div class="col-md-6 wow zoomIn" data-wow-delay="0.1s">
							<div class="tour_container">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="img_container">
									<a href="single_restaurant.html">
										<img src="${pageContext.request.contextPath}/resources/img/restaurant_box_1.jpg" width="800" height="533" class="img-fluid" alt="Image">
										<div class="short_info">
											<i class="icon_set_3_restaurant-2"></i> Fast food<span class="price"><sup>$</sup>45</span>
										</div>
									</a>
								</div>
								<div class="tour_title">
									<h3><strong>King Food</strong></h3>
									<div class="rating">
										<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<!-- end rating -->
									<div class="wishlist">
										<a class="tooltip_flip tooltip-effect-1" href="#">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
									</div>
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
						<!-- End col-md-6 -->

						<div class="col-md-6 wow zoomIn" data-wow-delay="0.2s">
							<div class="tour_container">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="img_container">
									<a href="single_restaurant.html">
										<img src="${pageContext.request.contextPath}/resources/img/restaurant_box_2.jpg" width="800" height="533" class="img-fluid" alt="Image">
										<div class="short_info">
											<i class="icon_set_3_restaurant-2"></i> Fast food<span class="price"><sup>$</sup>45</span>
										</div>
									</a>
								</div>
								<div class="tour_title">
									<h3><strong>Catrine</strong></h3>
									<div class="rating">
										<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<!-- end rating -->
									<div class="wishlist">
										<a class="tooltip_flip tooltip-effect-1" href="#">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
									</div>
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
						<!-- End col-md-6 -->
					</div>
					<!-- End row -->

					<div class="row">
						<div class="col-md-6 wow zoomIn" data-wow-delay="0.3s">
							<div class="tour_container">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="img_container">
									<a href="single_restaurant.html">
										<img src="${pageContext.request.contextPath}/resources/img/restaurant_box_3.jpg" width="800" height="533" class="img-fluid" alt="Image">
										<div class="short_info">
											<i class="icon_set_3_restaurant-1"></i> Pizza / Italian<span class="price"><sup>$</sup>45</span>
										</div>
									</a>
								</div>
								<div class="tour_title">
									<h3><strong>Bella Napoli</strong></h3>
									<div class="rating">
										<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<!-- end rating -->
									<div class="wishlist">
										<a class="tooltip_flip tooltip-effect-1" href="#">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
									</div>
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
						<!-- End col-md-6 -->

						<div class="col-md-6 wow zoomIn" data-wow-delay="0.4s">
							<div class="tour_container">
								<div class="ribbon_3"><span>Top rated</span>
								</div>
								<div class="img_container">
									<a href="single_restaurant.html">
										<img src="${pageContext.request.contextPath}/resources/img/restaurant_box_4.jpg" width="800" height="533" class="img-fluid" alt="Image">
										<div class="short_info">
											<i class="icon_set_3_restaurant-4"></i> Chinese<span class="price"><sup>$</sup>45</span>
										</div>
									</a>
								</div>
								<div class="tour_title">
									<h3><strong>Dragon tower</strong></h3>
									<div class="rating">
										<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<!-- end rating -->
									<div class="wishlist">
										<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
									</div>
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
						<!-- End col-md-6 -->
					</div>
					<!-- End row -->

					<div class="row">
						<div class="col-md-6 wow zoomIn" data-wow-delay="0.5s">
							<div class="tour_container">
								<div class="ribbon_3"><span>Top rated</span>
								</div>
								<div class="img_container">
									<a href="single_restaurant.html">
										<img src="${pageContext.request.contextPath}/resources/img/restaurant_box_5.jpg" width="800" height="533" class="img-fluid" alt="Image">
										<div class="short_info">
											<i class="icon_set_3_restaurant-7"></i> Fish<span class="price"><sup>$</sup>45</span>
										</div>
									</a>
								</div>
								<div class="tour_title">
									<h3><strong>Seafood</strong></h3>
									<div class="rating">
										<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<!-- end rating -->
									<div class="wishlist">
										<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
									</div>
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
						<!-- End col-md-6 -->

						<div class="col-md-6 wow zoomIn" data-wow-delay="0.6s">
							<div class="tour_container">
								<div class="ribbon_3"><span>Top rated</span>
								</div>
								<div class="img_container">
									<a href="single_restaurant.html">
										<img src="${pageContext.request.contextPath}/resources/img/restaurant_box_6.jpg" width="800" height="533" class="img-fluid" alt="Image">
										<div class="short_info">
											<i class="icon_set_3_restaurant-5"></i> International<span class="price"><sup>$</sup>45</span>
										</div>
									</a>
								</div>
								<div class="tour_title">
									<h3><strong>Alfredo</strong></h3>
									<div class="rating">
										<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<!-- end rating -->
									<div class="wishlist">
										<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
									</div>
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
						<!-- End col-md-6 -->
					</div>
					<!-- End row -->

					<div class="row">
						<div class="col-md-6 wow zoomIn" data-wow-delay="0.7s">
							<div class="tour_container">
								<div class="ribbon_3"><span>Top rated</span>
								</div>
								<div class="img_container">
									<a href="single_restaurant.html">
										<img src="${pageContext.request.contextPath}/resources/img/restaurant_box_7.jpg" width="800" height="533" class="img-fluid" alt="Image">
										<div class="short_info">
											<i class="icon_set_3_restaurant-5"></i> International<span class="price"><sup>$</sup>45</span>
										</div>
									</a>
								</div>
								<div class="tour_title">
									<h3><strong>Madlene Bar</strong></h3>
									<div class="rating">
										<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<!-- end rating -->
									<div class="wishlist">
										<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
									</div>
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
						<!-- End col-md-6 -->

						<div class="col-md-6 wow zoomIn" data-wow-delay="0.8s">
							<div class="tour_container">
								<div class="ribbon_3"><span>Top rated</span>
								</div>
								<div class="img_container">
									<a href="single_restaurant.html">
										<img src="${pageContext.request.contextPath}/resources/img/restaurant_box_8.jpg" width="800" height="533" class="img-fluid" alt="Image">
										<div class="short_info">
											<i class="icon_set_3_restaurant-5"></i> International<span class="price"><sup>$</sup>45</span>
										</div>
									</a>
								</div>
								<div class="tour_title">
									<h3><strong>Spago Bistrot</strong></h3>
									<div class="rating">
										<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
									</div>
									<!-- end rating -->
									<div class="wishlist">
										<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
									</div>
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
						<!-- End col-md-6 -->
					</div>
					<!-- End row -->

					<hr>

					<nav aria-label="Page navigation" style="visibility: hidden;">
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
				<!-- End col lg 9 -->
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
	<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyB4JNh6iELs0fU_OpkHc1sFUzYeR5Mtxk8"></script>
	<script src="${pageContext.request.contextPath}/resources/js/map_restaurants.js"></script>
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