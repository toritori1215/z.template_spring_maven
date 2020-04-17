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
				<h1>Shop</h1>
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
					<div class="shop-section">

						<div class="items-sorting">
							<div class="row">
								<div class="col-6">
									<div class="results_shop">
										Showing 1–9 of 15 results
									</div>
								</div>
								<div class="col-6">
									<div class="form-group">
										<select name="sort-by">
											<option>Sorting by</option>
											<option>Order</option>
											<option>Price</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<!--End Sort By-->

						<div class="row">

							<div class="shop-item col-lg-4 col-md-6 col-sm-6">
								<div class="inner-box">
									<div class="image-box">
										<figure class="image">
											<a href="shop-single.html"><img src="${pageContext.request.contextPath}/resources/img/products/image-1.jpg" alt="">
											</a>
										</figure>
										<div class="item-options clearfix">
											<a href="shopping-cart.html" class="btn_shop"><span class="icon-basket"></span>
                                            <div class="tool-tip">
                                                Add to cart
                                            </div>
                                            </a>
											<a href="shop-single.html" class="btn_shop"><span class="icon-heart-8"></span>
                                            <div class="tool-tip">
                                                Add to Fav
                                            </div>
                                            </a>
											<a href="shop-single.html" class="btn_shop"><span class="icon-eye"></span>
                                            <div class="tool-tip">
                                                View
                                            </div>
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
                                            <div class="tool-tip">
                                                Add to cart
                                            </div>
                                            </a>
											<a href="shop-single.html" class="btn_shop"><span class="icon-heart-8"></span>
                                            <div class="tool-tip">
                                                Add to Fav
                                            </div>
                                            </a>
											<a href="shop-single.html" class="btn_shop"><span class="icon-eye"></span>
                                            <div class="tool-tip">
                                                View
                                            </div>
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
                                            <div class="tool-tip">
                                                Add to cart
                                            </div>
                                            </a>
											<a href="shop-single.html" class="btn_shop"><span class="icon-heart-8"></span>
                                            <div class="tool-tip">
                                                Add to Fav
                                            </div>
                                            </a>
											<a href="shop-single.html" class="btn_shop"><span class="icon-eye"></span>
                                            <div class="tool-tip">
                                                View
                                            </div>
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

							<div class="shop-item col-lg-4 col-md-6 col-sm-6">
								<div class="inner-box">
									<!--Image Box-->
									<div class="image-box">
										<figure class="image">
											<a href="shop-single.html"><img src="${pageContext.request.contextPath}/resources/img/products/image-4.jpg" alt="">
											</a>
										</figure>
										<div class="item-options clearfix">
											<a href="shopping-cart.html" class="btn_shop"><span class="icon-basket"></span>
                                            <div class="tool-tip">
                                                Add to cart
                                            </div>
                                            </a>
											<a href="shop-single.html" class="btn_shop"><span class="icon-heart-8"></span>
                                            <div class="tool-tip">
                                                Add to Fav
                                            </div>
                                            </a>
											<a href="shop-single.html" class="btn_shop"><span class="icon-eye"></span>
                                            <div class="tool-tip">
                                                View
                                            </div>
                                            </a>
										</div>
									</div>
									<div class="product_description">
										<div class="rating">
											<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
										</div>
										<h3><a href="shop-single.html">World Streets</a></h3>
										<div class="price">
											$22.00
										</div>
									</div>
								</div>
							</div>
							<!--End Shop Item-->

							<div class="shop-item col-lg-4 col-md-6 col-sm-6">
								<div class="inner-box">
									<div class="image-box">
										<figure class="image">
											<a href="shop-single.html"><img src="${pageContext.request.contextPath}/resources/img/products/image-5.jpg" alt="">
											</a>
										</figure>
										<div class="item-options clearfix">
											<a href="shopping-cart.html" class="btn_shop"><span class="icon-basket"></span>
                                            <div class="tool-tip">
                                                Add to cart
                                            </div>
                                            </a>
											<a href="shop-single.html" class="btn_shop"><span class="icon-heart-8"></span>
                                            <div class="tool-tip">
                                                Add to Fav
                                            </div>
                                            </a>
											<a href="shop-single.html" class="btn_shop"><span class="icon-eye"></span>
                                            <div class="tool-tip">
                                                View
                                            </div>
                                            </a>
										</div>
									</div>
									<div class="product_description">
										<div class="rating">
											<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
										</div>
										<h3><a href="shop-single.html">Travel guide V2</a></h3>
										<div class="price">
											$15.00
										</div>
									</div>
								</div>
							</div>
							<!--End Shop Item-->

							<div class="shop-item col-lg-4 col-md-6 col-sm-6">
								<div class="inner-box">
									<!--Image Box-->
									<div class="image-box">
										<figure class="image">
											<a href="shop-single.html"><img src="${pageContext.request.contextPath}/resources/img/products/image-6.jpg" alt="">
											</a>
										</figure>
										<div class="item-options clearfix">
											<a href="shopping-cart.html" class="btn_shop"><span class="icon-basket"></span>
                                            <div class="tool-tip">
                                                Add to cart
                                            </div>
                                            </a>
											<a href="shop-single.html" class="btn_shop"><span class="icon-heart-8"></span>
                                            <div class="tool-tip">
                                                Add to Fav
                                            </div>
                                            </a>
											<a href="shop-single.html" class="btn_shop"><span class="icon-eye"></span>
                                            <div class="tool-tip">
                                                View
                                            </div>
                                            </a>
										</div>
									</div>
									<div class="product_description">
										<div class="rating">
											<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
										</div>
										<h3><a href="shop-single.html">Adventures</a></h3>
										<div class="price">
											<span class="offer">$20.00</span> $15.00
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--End Shop Item-->

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
					<!-- End row -->
				</div>
				<!-- End col -->

				<!--Sidebar-->
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
	

</body>

</html>