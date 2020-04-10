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
	
	<!-- SPECIFIC CSS -->
	<link href="${pageContext.request.contextPath}/resources/css/shop.css" rel="stylesheet">
	
	

	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->

	<section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/img/header_bg.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>Shopping cart</h1>
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
			<div class="cart-section">
				<table class="table table-striped cart-list shopping-cart">
					<thead>
						<tr>
							<th>
								Product
							</th>
							<th>
								Price
							</th>
							<th>
								Quantity
							</th>
							<th>
								Total
							</th>
							<th>
								Remove
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<div class="thumb_cart">
									<a href="#"><img src="${pageContext.request.contextPath}/resources/img/products/thumb-3.jpg" alt="">
									</a>
								</div>
								<strong class="item_cart">World Travel Guide</strong>
							</td>
							<td>
								<strong>€24,71</strong>
							</td>
							<td>
								<div class="numbers-row">
									<input type="text" value="1" id="quantity_1" class="qty2 form-control" name="quantity_1">
								</div>
							</td>
							<td>
								<strong>€24,71</strong>
							</td>
							<td class="options">
								<a href="#"><i class=" icon-trash"></i></a>
							</td>
						</tr>
						<tr>
							<td>
								<div class="thumb_cart">
									<a href="#"><img src="${pageContext.request.contextPath}/resources/img/products/thumb-1.jpg" alt="">
									</a>
								</div>
								<strong class="item_cart">World Travel Guide</strong>
							</td>
							<td>
								<strong>€24,71</strong>
							</td>
							<td>
								<div class="numbers-row">
									<input type="text" value="1" id="quantity_2" class="qty2 form-control" name="quantity_2">
								</div>
							</td>
							<td>
								<strong>€24,71</strong>
							</td>
							<td class="options">
								<a href="#"><i class=" icon-trash"></i></a>
							</td>
						</tr>
					</tbody>
				</table>

				<div class="cart-options clearfix">
					<div class="float-left">
						<div class="apply-coupon">
							<div class="form-group">
								<input type="text" name="coupon-code" value="" placeholder="Your Coupon Code" class="form-control">
							</div>
							<div class="form-group">
								<button type="button" class="btn_cart_outine">Apply Coupon</button>
							</div>
						</div>
					</div>
					<div class="float-md-right fix_mobile">
						<button type="button" class="btn_cart_outine">Update Cart</button>
					</div>
				</div>
				<div class="row justify-content-end">
					<div class="column col-lg-4 col-md-6">
						<ul class="totals-table">
							<li class="clearfix"><span class="col">Sub Total</span><span class="col">$15.00</span>
							</li>
							<li class="clearfix total"><span class="col">Order Total</span><span class="col">$15.00</span>
							</li>
						</ul>
						<a href="checkout.html" class="btn_full">Proceed to Checkout <i class="icon-left"></i></a>
					</div>
				</div>
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