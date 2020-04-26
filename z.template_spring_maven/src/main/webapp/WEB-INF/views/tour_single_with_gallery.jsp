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
							<c:choose>
								<c:when test="${reviewRate.rTotRate == 5}">
									<i class="icon-smile voted"></i>
									<i class="icon-smile voted"></i>
									<i class="icon-smile voted"></i>
									<i class="icon-smile voted"></i>
									<i class="icon-smile voted"></i>
								</c:when>
								<c:when test="${reviewRate.rTotRate == 4}">
									<i class="icon-smile voted"></i>
									<i class="icon-smile voted"></i>
									<i class="icon-smile voted"></i>
									<i class="icon-smile voted"></i>
									<i class="icon-smile"></i>
								</c:when>
								<c:when test="${reviewRate.rTotRate == 3}">
									<i class="icon-smile voted"></i>
									<i class="icon-smile voted"></i>
									<i class="icon-smile voted"></i>
									<i class="icon-smile"></i>
									<i class="icon-smile"></i>
								</c:when>
								<c:when test="${reviewRate.rTotRate == 2}">
									<i class="icon-smile voted"></i>
									<i class="icon-smile voted"></i>
									<i class="icon-smile"></i>
									<i class="icon-smile"></i>
									<i class="icon-smile"></i>
								</c:when>
								<c:when test="${reviewRate.rTotRate == 1}">
									<i class="icon-smile voted"></i>
									<i class="icon-smile"></i>
									<i class="icon-smile"></i>
									<i class="icon-smile"></i>
									<i class="icon-smile"></i>
								</c:when>
								<c:otherwise>
									No Rating Data
									<i class="icon-smile"></i>
									<i class="icon-smile"></i>
									<i class="icon-smile"></i>
									<i class="icon-smile"></i>
									<i class="icon-smile"></i>
								</c:otherwise>
							</c:choose>
							<small>(${reviewRate.rTotRate*2}.0)</small>
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
							<c:choose>
								<c:when test="${sUser != null and sUser != ''}">
									<c:if test="${ifReviewExisted == 0}">
										<a href="#" id="insertReviewHref" pNo="${product.pNo}" class="btn_1 add_bottom_30" data-toggle="modal" data-target="#myReview">Leave a review</a>
									</c:if>
									<c:if test="${ifReviewExisted == 1}">
										You already commented
									</c:if>
								</c:when>
								<c:otherwise>
									If you want to leave comments<br> Please <a href="#sign-in-dialog" id="access_link4"><font color="red">Sign in</font></a> 
								</c:otherwise>
							</c:choose>
						</div>
						<div class="col-lg-9">
							<div id="general_rating">
									<c:choose>
										<c:when test="${reviewSize != 0}">${reviewSize} Reviews</c:when>
										<c:otherwise>No Reviews</c:otherwise>
									</c:choose>
									<span> | </span>
								<div class="rating">
									<c:choose>
										<c:when test="${reviewRate.rTotRate == 5}">
											<i class="icon-smile voted"></i>
											<i class="icon-smile voted"></i>
											<i class="icon-smile voted"></i>
											<i class="icon-smile voted"></i>
											<i class="icon-smile voted"></i>
										</c:when>
										<c:when test="${reviewRate.rTotRate == 4}">
											<i class="icon-smile voted"></i>
											<i class="icon-smile voted"></i>
											<i class="icon-smile voted"></i>
											<i class="icon-smile voted"></i>
											<i class="icon-smile"></i>
										</c:when>
										<c:when test="${reviewRate.rTotRate == 3}">
											<i class="icon-smile voted"></i>
											<i class="icon-smile voted"></i>
											<i class="icon-smile voted"></i>
											<i class="icon-smile"></i>
											<i class="icon-smile"></i>
										</c:when>
										<c:when test="${reviewRate.rTotRate == 2}">
											<i class="icon-smile voted"></i>
											<i class="icon-smile voted"></i>
											<i class="icon-smile"></i>
											<i class="icon-smile"></i>
											<i class="icon-smile"></i>
										</c:when>
										<c:when test="${reviewRate.rTotRate == 1}">
											<i class="icon-smile voted"></i>
											<i class="icon-smile"></i>
											<i class="icon-smile"></i>
											<i class="icon-smile"></i>
											<i class="icon-smile"></i>
										</c:when>
										<c:otherwise>
											<i class="icon-smile"></i>
											<i class="icon-smile"></i>
											<i class="icon-smile"></i>
											<i class="icon-smile"></i>
											<i class="icon-smile"></i>
											No Rating Data
										</c:otherwise>
									</c:choose>
								</div>
							</div>
							<!-- End general_rating -->
							<div class="row" id="rating_summary">
								<div class="col-md-6">
									<ul>
										<li>Position
											<div class="rating">
											<c:choose>
												<c:when test="${reviewRate.rTotRate1 == 5}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
												</c:when>
												<c:when test="${reviewRate.rTotRate1 == 4}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:when test="${reviewRate.rTotRate1 == 3}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:when test="${reviewRate.rTotRate1 == 2}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:when test="${reviewRate.rTotRate1 == 1}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:otherwise>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													No Rating Data
												</c:otherwise>
											</c:choose>
											</div>
										</li>
										<li>Guide
											<div class="rating">
											<c:choose>
												<c:when test="${reviewRate.rTotRate2 == 5}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
												</c:when>
												<c:when test="${reviewRate.rTotRate2 == 4}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:when test="${reviewRate.rTotRate2 == 3}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:when test="${reviewRate.rTotRate2 == 2}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:when test="${reviewRate.rTotRate2 == 1}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:otherwise>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													No Rating Data
												</c:otherwise>
											</c:choose>
											</div>
										</li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul>
										<li>Price
											<div class="rating">
											<c:choose>
												<c:when test="${reviewRate.rTotRate3 == 5}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
												</c:when>
												<c:when test="${reviewRate.rTotRate3 == 4}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:when test="${reviewRate.rTotRate3 == 3}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:when test="${reviewRate.rTotRate3 == 2}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:when test="${reviewRate.rTotRate3 == 1}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:otherwise>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													No Rating Data
												</c:otherwise>
											</c:choose>
											</div>
										</li>
										<li>Quality
											<div class="rating">
											<c:choose>
												<c:when test="${reviewRate.rTotRate4 == 5}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
												</c:when>
												<c:when test="${reviewRate.rTotRate4 == 4}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:when test="${reviewRate.rTotRate4 == 3}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:when test="${reviewRate.rTotRate4 == 2}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:when test="${reviewRate.rTotRate4 == 1}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:otherwise>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													No Rating Data
												</c:otherwise>
											</c:choose>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<!-- End row -->
							<hr>
							<c:choose>
								<c:when test="${reviewSize!=0}">
									<c:forEach var="review" items="${reviewList}">
										<div class="review_strip_single">
											<img height="100px" width="80px" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/member/${review.mImg}" alt="Image" class="rounded-circle">
											<small> - ${review.rRegDate} - </small>
											<h4 align="center">${review.mId}</h4>
											<br>
											<p>${review.rContent}</p>
											<input type="hidden" id="review_${review.mId}" value="${review.mId}">
											<c:if test="${review.mNo == sUser.mNo}">
												<h6 align="right">
												<a href="#" class="update_Review" rNo="${review.rNo}" pNo="${review.pNo}" mNo="${review.mNo}" data-toggle="modal" data-target="#updateReview">Modify</a>
												<span> | </span>
												<a href="delete_review?pNo=${product.pNo}&pType=${product.pType}">Delete</a>
												</h6>
											</c:if>
											<div class="rating">
												<c:choose>
												<c:when test="${review.rRate == 5}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
												</c:when>
												<c:when test="${review.rRate == 4}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:when test="${review.rRate == 3}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:when test="${review.rRate == 2}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:when test="${review.rRate == 1}">
													<i class="icon-smile voted"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
												</c:when>
												<c:otherwise>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													<i class="icon-smile"></i>
													No Rating Data
												</c:otherwise>
											</c:choose>
											</div>
										</div>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<blockquote class="styled">
										<p align="center" style="font-size: 25px;">
											Leave the first comment
										<p>
									</blockquote>
								</c:otherwise>
							</c:choose>
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
									<input id="datePicker" class="date-pick form-control" data-date-format="yyyy/MM/dd" type="text" name="date">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label><i class=" icon-clock"></i> Time</label>
									<input disabled id="timePicker" class="time-pick form-control" value="08:00 AM" type="text">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-6">
								<div class="form-group">
									<label><i class="icon-adult"></i> Travellers</label>
									<div class="numbers-row1">
										<input type="text" value="1" id="travellers" class="qty2 form-control" name="quantity">
										<div class="inc button_inc1">+</div>
										<div class="dec button_inc1">-</div>
									</div>
								</div>
							</div>
							<div class="col-6">
								<div class="noSpace">
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
										1
									</td>
								</tr>
								<tr>
									<td>
										Tour price
									</td>
									<td class="text-right">
										x &nbsp; ${product.pPrice/10000}만
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
						<form id="cart_add" name="f">
							<input type="hidden" name="sUser" value="${sUser}">
							<input type="hidden" name="newVal" value="1">
							<input type="hidden" name="pNo" value="${product.pNo}">
							<input type="hidden" name="pPrice" value="${product.pPrice}">
							<input type="hidden" name="selectDate" value="">
							<input type="hidden" name="selectTime" value="">
							<c:if test="${sUser != null and sUser != ''}">
								<input type="button" class="btn_full" id="addToCart" value="Book now" pAvailable="${product.pAvailable}"/>
							</c:if>
							<c:if test="${sUser == null or sUser == ''}">
								<a class="btn_full" data-toggle="modal" data-target="#signInAlert" href="#">
									BOOK NOW
								</a>
							</c:if>
						</form>
						
						<div id="addWishlistButton">
							<c:if test="${(sUser != null) && (ifExist == 0)}">
								<a id="addToWishlist" class="btn_full_outline" data-toggle="modal" data-target="#addWishlist" href="#">
									<i class=" icon-heart"></i> Add to wishlist
								</a>
							</c:if>
					 		<c:if test="${(sUser != null) && (ifExist == 1)}">
								<a class='btn_full_outline' disabled><i class='icon-check'></i>&nbsp;Already in Wishlist</a>
							</c:if>
							<c:if test="${sUser == null}">
								<a class="btn_full_outline" data-toggle="modal" data-target="#signInAlert" href="#">
									<i class=" icon-heart"></i> Add to wishlist
								</a>
							</c:if>
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
		$('input.date-pick').datepicker('setDate', '+1d');
		$('input.date-pick').datepicker('setStartDate', '+1d');
		$('input.date-pick').datepicker('setEndDate', '+3m');
		$('input.time-pick').timepicker({
			minuteStep: 30,
			showInputs: false
		});
	</script>
	
	<script>
		$(function() {
			$("input[name='selectDate']").attr("value", $("#datePicker").val());
			$("input[name='selectTime']").attr("value", $("#timePicker").val());
		});
	
		$("#datePicker").change(function () {
			$("input[name='selectDate']").attr("value", $("#datePicker").val());
		});

		var pNo = $("input[name='pNo']").attr("value");
		var pPrice= $("input[name='pPrice']").attr("value");
		
		/* Qty Update Button */
		$(".button_inc1").click(function () {
			var $button = $(this);
			var oldValue = $button.parent().find("input").val();

			if ($button.text() == "+") {
				var newVal = parseFloat(oldValue) + 1;
			} else {
				// Don't allow decrementing below zero
				if (oldValue > 2) {
					var newVal = parseFloat(oldValue) - 1;
				} else {
					newVal = 1;
				}
			}
			
			$button.parent().find("input").val(newVal);  // newVal = 현재 인원수 섹션에 있는 숫자
			$("input[name='newVal']").attr("value", newVal);
			
			$.ajax({
				type:"GET",
				url:"tour_detail_travellers?",
				data:"newVal="+newVal,
				async:true,
				success:function(d) {
					$("#travellers_cnt").html(d);
					$("#total_cost").html("￦ "+d*pPrice/10000+"만");
				}
			});
		});
		
		
		/* Add to cart button */		
		$("#addToCart").click(function () {
			var $button = $(this);
			var newVal = $("input[name='newVal']").attr("value");
			var selectDate = $("input[name='selectDate']").attr("value");
			var selectTime = $("input[name='selectTime']").attr("value");
			var pAvailable = $("#addToCart").attr("pAvailable");
			
			$.ajax({
				type:"POST",
				url:"tour_spaces?",
				data:"newVal="+newVal+"&pNo="+pNo+"&selectDate="+selectDate+"&pAvailable="+pAvailable,
				async:true,
				success:function(d) {
					if (d >= 0) {
						window.location.replace("cart_insert?newVal="+newVal+"&pNo="+pNo+"&pPrice="+pPrice+"&selectDate="+selectDate+"&selectTime="+selectTime+"&opt=0");
					} else if ((d < 0) && ((+d + +newVal)==1)) {
						$('.noSpace').html("<br><br>"+(+d + +newVal)+" spot left.");
					}else {
						$('.noSpace').html((+d + +newVal)+" spots left.");
					}
				}
			});
		});
		
		
		/* Add to wishlist button */
		$("#addToWishlist").click(function (e) {
			var $button = $(this);
			
			$.ajax({
				type:"POST",
				url:"wishlist_insert?",
				data:"pNo="+pNo,
				async:true,
				success:function(d) {
				}
			});
		});
	</script>
	<script type="text/javascript">
		$("#updateReview").on("show.bs.modal", function(e) {
			var rNo = $(".update_Review").attr("rNo");
			var pNo = $(".update_Review").attr("pNo");
			var mNo = $(".update_Review").attr("mNo");
			$.ajax({
				url: "review_selectOne",
				data: {"pNo" : pNo, "mNo" : mNo},
				type: "post",
				success: function(review) {
					$(e.target).find("#review_text").html(review.rContent);
				}
			});
		});
	</script>
	
	<script src="${pageContext.request.contextPath}/resources/z.SiliconVillage/js/product.js"></script>
	
	<!--Review modal validation -->
	<script src="${pageContext.request.contextPath}/resources/assets/validate.js"></script>

	<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyB4JNh6iELs0fU_OpkHc1sFUzYeR5Mtxk8"></script>
	<script src="${pageContext.request.contextPath}/resources/js/map.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/infobox.js"></script>
	
</body>

</html>