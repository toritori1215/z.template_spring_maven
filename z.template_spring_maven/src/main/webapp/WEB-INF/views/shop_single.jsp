<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->

	<section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/img/header_bg.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>Shop detail item</h1>
				<p>Ridiculus sociosqu cursus neque cursus curae ante scelerisque vehicula.</p>
			</div>
		</div>
	</section>
	<!-- End Section -->

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

		<div class="container margin_60">
			<div class="row">
				<div class="col-lg-9">

					<div class="product-details">

						<div class="basic-details">
							<div class="row">
								<div class="image-column col-sm-6">
									<figure class="image-box"><img src="${pageContext.request.contextPath}/resources/img/products/image-2.jpg" alt="">
									</figure>
								</div>
								<div class="info-column col-sm-6">
									<div class="details-header">
										<h2>World Travel Guide</h2>
										<div class="item-price">
											<span class="offer">$20.00</span> $15.00
										</div>
										<div class="rating">
											<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i> (3 Customer Reviews)
										</div>
									</div>
									<div class="text">
										<p>
											Lorem ipsum dolor sit amet, te eleifend philosophia sea, elitr evertitur sea id. Has te dictas adversarium. Eum percipitur comprehensam ei. Mel eu molestiae adolescens scriptorem. Ex labores albucius nec, mel et amet discere.
										</p>
									</div>
									<div class="other-options">
										<div class="numbers-row">
											<input type="text" value="0" id="quantity_1" class="qty2 form-control" name="quantity_1">
										</div>
										<a href="shopping-cart.html" class="btn_1">Add To Cart </a>
									</div>
									<!--Item Meta-->
									<ul class="item-meta">
										<li>Categories: <a href="#">Books</a> , <a href="#">Magazine</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!--End Basic Details-->

						<div class="product-info-tabs">

							<div class="prod-tabs" id="product-tabs">
								<div class="tab-btns clearfix">
									<a href="#prod-description" class="tab-btn active-btn">Product description</a>
									<a href="#prod-reviews" class="tab-btn">Reviews (03)</a>
								</div>

								<div class="tabs-container">
									<div class="tab active-tab" id="prod-description">
										<h3>Product Description</h3>
										<div class="content">
											<p>
												Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.
											</p>
										</div>
									</div>
									<!--End Tab-->

									<div class="tab" id="prod-reviews">
										<h3>3 Reviews Found</h3>
										<div class="reviews-container">

											<div class="review-box clearfix">
												<figure class="rev-thumb"><img src="${pageContext.request.contextPath}/resources/img/avatar1.jpg" alt="">
												</figure>
												<div class="rev-content">
													<div class="rating">
														<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
													</div>
													<div class="rev-info">
														Admin – April 03, 2016:
													</div>
													<div class="rev-text">
														<p>
															Sed eget turpis a pede tempor malesuada. Vivamus quis mi at leo pulvinar hendrerit. Cum sociis natoque penatibus et magnis dis
														</p>
													</div>
												</div>
											</div>

											<div class="review-box clearfix">
												<figure class="rev-thumb"><img src="${pageContext.request.contextPath}/resources/img/avatar2.jpg" alt="">
												</figure>
												<div class="rev-content">
													<div class="rating">
														<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
													</div>
													<div class="rev-info">
														Ahsan – April 01, 2016:
													</div>
													<div class="rev-text">
														<p>
															Sed eget turpis a pede tempor malesuada. Vivamus quis mi at leo pulvinar hendrerit. Cum sociis natoque penatibus et magnis dis
														</p>
													</div>
												</div>
											</div>

											<div class="review-box clearfix">
												<figure class="rev-thumb"><img src="${pageContext.request.contextPath}/resources/img/avatar3.jpg" alt="">
												</figure>
												<div class="rev-content">
													<div class="rating">
														<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
													</div>
													<div class="rev-info">
														Sara – March 31, 2016:
													</div>
													<div class="rev-text">
														<p>
															Sed eget turpis a pede tempor malesuada. Vivamus quis mi at leo pulvinar hendrerit. Cum sociis natoque penatibus et magnis dis
														</p>
													</div>
												</div>
											</div>

										</div>
										<!--End Review Container-->

										<hr>

										<div class="add-review">
											<h3>Add a Review</h3>
											<form method="post" action="shop-single.html">
												<div class="row">
													<div class="form-group col-md-6">
														<label>Name *</label>
														<input type="text" name="name" value="" placeholder="" class="form-control">
													</div>
													<div class="form-group col-md-6">
														<label>Email *</label>
														<input type="email" name="email" value="" placeholder="" class="form-control">
													</div>
													<div class="form-group col-md-6">
														<label>Website *</label>
														<input type="text" name="website" value="" placeholder="" class="form-control">
													</div>
													<div class="form-group col-md-6">
														<label>Rating </label>
														<div class="rating">
															<a href="#" class="rate-box" title="1 Out of 5"><span class="icon-star"></span></a>
															<a href="#" class="rate-box" title="2 Out of 5"><span class="icon-star"></span><span class="icon-star"></span></a>
															<a href="#" class="rate-box" title="3 Out of 5"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span></a>
															<a href="#" class="rate-box" title="4 Out of 5"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span></a>
															<a href="#" class="rate-box" title="5 Out of 5"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span></a>
														</div>
													</div>
													<div class="form-group col-md-12">
														<label>Your Review</label>
														<textarea name="review-message" class="form-control" style="height:150px;"></textarea>
													</div>
													<div class="form-group col-md-12">
														<button type="button" class="btn_1">Add Review</button>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
								<!--End tabs-container-->
							</div>
							<!--End prod-tabs-->
						</div>
						<!--End product-info-tabs-->

						<div class="related-products">
							<div class="normal-title">
								<h3>Related Products</h3>
							</div>
							<div class="row">
								<div class="shop-item col-lg-4 col-md-6 col-sm-6">
									<div class="inner-box">
										<div class="image-box">
											<figure class="image">
												<a href="shop-single.html"><img src="${pageContext.request.contextPath}/resources/img/products/image-1.jpg" alt=""></a>
											</figure>
											<div class="item-options clearfix">
												<a href="shopping-cart.html" class="btn_shop"><span class="icon-basket"></span>
													<div class="tool-tip">Add to cart</div>
												</a>
												<a href="shop-single.html" class="btn_shop"><span class="icon-heart-8"></span>
													<div class="tool-tip">Add to Fav</div>
												</a>
												<a href="shop-single.html" class="btn_shop"><span class="icon-eye"></span>
													<div class="tool-tip">View</div>
												</a>
											</div>
										</div>
										<div class="product_description">
											<div class="rating">
												<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
											</div>
											<h3><a href="shop-single.html">Travel Book</a></h3>
											<div class="price">
												<span class="offer">$20.00</span> $15.00
											</div>
										</div>
									</div>
								</div>
								<!--End Shop Item-->

								<div class="shop-item col-lg-4 col-md-6 col-sm-6">
									<div class="inner-box">
										<div class="image-box">
											<figure class="image">
												<a href="shop-single.html"><img src="${pageContext.request.contextPath}/resources/img/products/image-2.jpg" alt="">
												</a>
											</figure>
											<div class="item-options clearfix">
												<a href="shopping-cart.html" class="btn_shop"><span class="icon-basket"></span>
													<div class="tool-tip">Add to cart</div>
												</a>
												<a href="shop-single.html" class="btn_shop"><span class="icon-heart-8"></span>
													<div class="tool-tip">Add to Fav</div>
												</a>
												<a href="shop-single.html" class="btn_shop"><span class="icon-eye"></span>
													<div class="tool-tip">View</div>
												</a>
											</div>
										</div>
										<div class="product_description">
											<div class="rating">
												<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
											</div>
											<h3><a href="shop-single.html">World guide</a></h3>
											<div class="price">
												<span class="offer">$10.00</span> $5.00
											</div>
										</div>
									</div>
								</div>
								<!--End Shop Item-->

								<div class="shop-item col-lg-4 col-md-6 col-sm-6">
									<div class="inner-box">
										<div class="image-box">
											<figure class="image">
												<a href="shop-single.html"><img src="${pageContext.request.contextPath}/resources/img/products/image-3.jpg" alt="">
												</a>
											</figure>
											<div class="item-options clearfix">
												<a href="shopping-cart.html" class="btn_shop"><span class="icon-basket"></span>
													<div class="tool-tip">Add to cart</div>
												</a>
												<a href="shop-single.html" class="btn_shop"><span class="icon-heart-8"></span>
													<div class="tool-tip">Add to Fav</div>
												</a>
												<a href="shop-single.html" class="btn_shop"><span class="icon-eye"></span>
													<div class="tool-tip">View</div>
												</a>
											</div>
										</div>
										<div class="product_description">
											<div class="rating">
												<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
											</div>
											<h3><a href="shop-single.html">Best places to visit</a></h3>
											<div class="price">
												$22.00
											</div>
										</div>
									</div>
								</div>
								<!--End Shop Item-->

							</div>
						</div>
						<!--End Related products-->
					</div>
					<!--End Product-details-->
				</div>
				<!--End Col-->

				<div class="col-lg-3">
					<aside class="sidebar">
						<div class="widget">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Search...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button" style="margin-left:0;"><i class="icon-search"></i></button>
								</span>
							</div>
						</div>
						<!-- End Search -->
						<hr>
						<div class="widget" id="cat_shop">
							<h4>Categories</h4>
							<ul>
								<li><a href="#">Places to visit</a>
								</li>
								<li><a href="#">Top tours</a>
								</li>
								<li><a href="#">Tips for travellers</a>
								</li>
								<li><a href="#">Events</a>
								</li>
							</ul>
						</div>
						<!-- End widget -->
						<hr>
						<div class="widget">
							<h4>Filter</h4>
							<input type="text" id="range" name="range" value="">
						</div>
						<!-- End widget -->
						<hr>
						<div class="widget related-products">
							<h4>Top Related </h4>
							<div class="shop-post">
								<figure class="post-thumb">
									<a href="#"><img src="${pageContext.request.contextPath}/resources/img/products/thumb-1.jpg" alt="">
									</a>
								</figure>
								<h5><a href="#">Grunge Fashion</a></h5>
								<div class="rating">
									<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
								</div>
								<div class="price">
									$ 15.00
								</div>
							</div>
							<div class="shop-post">
								<figure class="post-thumb">
									<a href="#"><img src="${pageContext.request.contextPath}/resources/img/products/thumb-2.jpg" alt="">
									</a>
								</figure>
								<h5><a href="#">Office Kit</a></h5>
								<div class="rating">
									<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
								</div>
								<div class="price">
									$ 15.00
								</div>
							</div>
							<div class="shop-post">
								<figure class="post-thumb">
									<a href="#"><img src="${pageContext.request.contextPath}/resources/img/products/thumb-3.jpg" alt="">
									</a>
								</figure>
								<h5><a href="#">Crime &amp; Punishment</a></h5>
								<div class="rating">
									<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
								</div>
								<div class="price">
									$ 15.00
								</div>
							</div>
						</div>
					</aside>
				</div>
				<!--Sidebar-->
			</div>
		</div>
		<!-- End Container -->
	</main>
	<!-- End main -->

	<!-- Footer================================================== -->
	<jsp:include page="common_footer_2.jsp"/>
	<!-- End Footer -->

	<script>
		if ($('.prod-tabs .tab-btn').length) {
			$('.prod-tabs .tab-btn').on('click', function (e) {
				e.preventDefault();
				var target = $($(this).attr('href'));
				$('.prod-tabs .tab-btn').removeClass('active-btn');
				$(this).addClass('active-btn');
				$('.prod-tabs .tab').fadeOut(0);
				$('.prod-tabs .tab').removeClass('active-tab');
				$(target).fadeIn(500);
				$(target).addClass('active-tab');
			});

		}
	</script>
	

</body>

</html>