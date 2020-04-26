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
	
	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->
	
	<section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/tour.jpg" data-natural-width="1400" data-natural-height="470">
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
						<!-- 
							<li><a href="restaurants_all_list" id="active"><i class="icon_set_3_restaurant-10"></i>All restaurants <span>(${restListPage.totalRecordCount})</span></a>
							</li>
							<c:forEach var="category" items="${categoryList}" step="1" varStatus="st">
								
									<li>
										<c:choose>
											<c:when test='${category == "field"}'>
												<a href="restaurants_all_list?category=America"><i class="icon_set_3_restaurant-2"></i>${category_Info.foodcategory}<span>(${category_Info.categoryCnt})</span></a>
											</c:when>
											<c:when test='${category =="Chinese"}'>
												<a href="restaurants_all_list?category=Chinese"><i class="icon_set_3_restaurant-4"></i>${category_Info.foodcategory}<span>(${category_Info.categoryCnt})</span></a>
											</c:when>
											<c:when test='${category =="Japanese"}'>
												<a href="restaurants_all_list?category=Japanese"><i class="icon_set_3_restaurant-3"></i>${category_Info.foodcategory}<span>(${category_Info.categoryCnt})</span></a>
											</c:when>
											<c:when test='${category =="European"}'>
												<a href="restaurants_all_list?category=European"><i class="icon_set_3_restaurant-1"></i>${category_Info.foodcategory}<span>(${category_Info.categoryCnt})</span></a>
											</c:when>

										</c:choose>
										
									</li>
							</c:forEach>
							
							<li><a href="restaurants_all_list?category=Dessert"><i class="icon_set_3_restaurant-8"></i>Dessert <span>(${foodCategoryDessertCnt})</span></a>
							</li>
							 -->
						</ul>
					</div>

					<div id="filters_col">
						<a data-toggle="collapse" href="#collapseFilters" aria-expanded="false" aria-controls="collapseFilters" id="filters_col_bt"><i class="icon_set_1_icon-65"></i>Filters</a>
						<div class="collapse show" id="collapseFilters">
							<div class="filter_type">
								<h6>Price</h6>
								<input type="text" id="price-range" name="range" value="">
							</div>
							<div class="filter_type">
								<h6>Rating</h6>
								<ul>
									<li>
										<label>
											<input type="checkbox" id="rating5" value="5"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox" id="rating4" value="4"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox" id="rating3" value="3"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox" id="rating2" value="2"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox" id="rating1" value="1"><span class="rating">
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
								<!-- 
								<a href="tour_grid" class="bt_filters"><i class=" icon-th"></i></a> 
								 -->
								<a href="tour_list" class="bt_filters"><i class=" icon-list"></i></a>
							</div>

						</div>
					</div>
					
					
					
					<!--/tools -->
					<div id="productList">
					<c:forEach var="product" items="${productList}">
					<div class="strip_all_tour_list wow fadeIn" data-wow-delay="0.1s">
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<!-- 
								<div class="wishlist">
									<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
								</div>
								 -->
								<div class="img_list">
									<a href="tour_detail?pNo=${product.pNo}"><img src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${product.pName}1.jpg" alt="Image">
										<div class="short_info">
											<c:choose>
											    <c:when test="${product.foodCategory eq 'water'}">
											       	<i class="pe-7s-drop"></i>WATER
											    </c:when>
											    <c:when test="${product.foodCategory eq 'ice'}">
											       	<i class="icon-snow"></i>ICE
											    </c:when>
											    <c:otherwise>
											       	<i class="icon-tree"></i>FIELD
											    </c:otherwise>
											</c:choose>
										</div>
									</a>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="tour_list_desc">
									<div class="rating">
									<c:forEach var="index" begin="1" end="${Math.round(product.pRate/2)}">
									<i class="icon-smile voted"></i>
									</c:forEach>
									<c:forEach var="index" begin="1" end="${5-Math.round(product.pRate/2)}">
									<i class="icon-smile"></i>
									</c:forEach>
									<small>(${product.pRate})</small>
									</div>
									<h3><strong>${product.pName}</strong> tour</h3>
									<p>${product.pDesc}</p>
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
									<div><sup>￦</sup>${product.pPrice/10000}*<small><br><b>Per person</b></small><small><br>*가격 단위: 1만원</small>
										<p><a href="tour_detail?pNo=${product.pNo}" class="btn_1">Details</a>
										</p>
									</div>

								</div>
							</div>
						</div>
					</div>
					</c:forEach>
					</div>
					<!--End strip -->

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
	<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyB4JNh6iELs0fU_OpkHc1sFUzYeR5Mtxk8"></script>
	<script src="${pageContext.request.contextPath}/resources/js/map.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/infobox.js"></script>
	
	<!-- Check box and radio style iCheck -->
	<script>
		$('input').iCheck({
		   checkboxClass: 'icheckbox_square-grey',
		   radioClass: 'iradio_square-grey'
		 });
	</script>
	
	<script src="${pageContext.request.contextPath}/resources/z.SiliconVillage/js/product.js"></script>
	
	<script>
	var ratings = [];
	$('input:checkbox').click(function(e) {
		if (ratings.includes($(this).val())) {
			for (var i = 0; i < ratings.length; i++) {
				if (ratings[i] == $(this).val()) {
					ratings.splice(i, 1)
				}
			}
		} else {
			ratings.push($(this).val());
			ratings.sort();
		}
		
		ratingJSON = {ratingArray: ratings}

		$.ajax({
			type:"POST",
			url:"tour_list_json?"+$.param(ratingJSON),
			async:true,
			contentType:"application/x-www-form-urlencoded;charset=utf-8",
			success:function(jsonObject) {
				//$('c\\:forEach:first').attr('items', jsonObject);
				//var jsonHtml = JSON.stringify(data, null, 4);
				$('#helloo').html($('#productList:first-child'));
				//$('#helloo').html(jsonObject[0].pNo);
			}
		}); 
	});
	</script>
</body>
</html>