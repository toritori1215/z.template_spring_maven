<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->
	
	<!-- CUSTOM CSS -->
	<link href="${pageContext.request.contextPath}/resources/z.SiliconVillage/css/cart.css" rel="stylesheet">

	<section id="hero_2">
		<div class="intro_title">
			<h1>Place your order</h1>
			<div class="bs-wizard row">

				<div class="col-4 bs-wizard-step active">
					<div class="text-center bs-wizard-stepnum">Your cart</div>
					<div class="progress">
						<div class="progress-bar"></div>
					</div>
					<a href="#0" class="bs-wizard-dot"></a>
				</div>

				<div class="col-4 bs-wizard-step disabled">
					<div class="text-center bs-wizard-stepnum">Your details</div>
					<div class="progress">
						<div class="progress-bar"></div>
					</div>
					<a href="payment_fixed_sidebar.html" class="bs-wizard-dot"></a>
				</div>

				<div class="col-4 bs-wizard-step disabled">
					<div class="text-center bs-wizard-stepnum">Finish!</div>
					<div class="progress">
						<div class="progress-bar"></div>
					</div>
					<a href="confirmation.html" class="bs-wizard-dot"></a>
				</div>

			</div>
			<!-- End bs-wizard -->
		</div>
		<!-- End intro-title -->
	</section>
	<!-- End Section hero_2 -->

	<main>
		<div id="position">
			<div class="container">
				<ul>
					<li><a href="main">Home</a>
					</li>
					<li>Cart Services</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- End position -->

		<div class="container margin_60">
			<div class="row">
				<div class="col-lg-8">
					<table class="table table-striped cart-list add_bottom_30">
						<thead>
							<tr>
								<th>
									Item
								</th>
								<th>
									Quantity
								</th>
								<th>
									Date / Time
								</th>
								<th>
									Total
								</th>
								<th>
									Actions
								</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="cart" items="${cartList}">
							<tr>
								<td>
									<div class="thumb_cart">
										<img src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${cart.pName}1.jpg" alt="Image">
									</div>
									<span class="item_cart"><strong>${cart.pName}<strong></span>
								</td>
								<td>
									<div class="numbers-row2">
										<input type="text" value="${cart.cProductQty}" id="quantity_1" class="qty2 form-control" name="quantity_1">
										<div class="inc button_inc2">+</div>
										<div class="dec button_inc2">-</div>
									</div>
								</td>
								<td>
									<strong>${cart.cCheckin.substring(0,10)}</strong><br>(${cart.cCheckinTime})
								</td>
								<td>
									<strong>￦${cart.cProductTypePay}</strong>
								</td>
								<td class="options" id="${cart.cProductQty}">
									<input class="cNo" type="hidden" value="${cart.cNo}">
									<a class="cartItemDelete" href="#"><i class=" icon-trash"></i></a>
									<a class="cartItemRefresh" href="#"><i class="icon-ccw-2"></i></a>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<table class="table table-striped options_cart">
						<thead>
							<tr>
								<th colspan="3">
									Add options / Services
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td style="width:10%">
									<i class="icon_set_1_icon-16"></i>
								</td>
								<td style="width:60%">
									Dedicated Tour guide <strong>+$34</strong>
								</td>
								<td style="width:35%">
									<label class="switch-light switch-ios float-right">
										<input type="checkbox" name="option_1" id="option_1" checked value="">
										<span>
                    					<span>No</span>
										<span>Yes</span>
										</span>
										<a></a>
									</label>
								</td>
							</tr>
							<tr>
								<td>
									<i class="icon_set_1_icon-26"></i>
								</td>
								<td>
									Pick up service <strong>+$34*</strong>
								</td>
								<td>
									<label class="switch-light switch-ios float-right">
										<input type="checkbox" name="option_2" id="option_2" value="">
										<span>
                    					<span>No</span>
										<span>Yes</span>
										</span>
										<a></a>
									</label>
								</td>
							</tr>
							<tr>
								<td>
									<i class="icon_set_1_icon-71"></i>
								</td>
								<td>
									Insurance <strong>+$24*</strong>
								</td>
								<td>
									<label class="switch-light switch-ios float-right">
										<input type="checkbox" name="option_3" id="option_3" value="" checked>
										<span>
                    					<span>No</span>
										<span>Yes</span>
										</span>
										<a></a>
									</label>
								</td>
							</tr>
							<tr>
								<td>
									<i class="icon_set_1_icon-15"></i>
								</td>
								<td>
									Welcome bottle <strong>+$24</strong>
								</td>
								<td>
									<label class="switch-light switch-ios float-right">
										<input type="checkbox" name="option_4" id="option_4" value="">
										<span>
                    					<span>No</span>
										<span>Yes</span>
										</span>
										<a></a>
									</label>
								</td>
							</tr>
							<tr>
								<td>
									<i class="icon_set_1_icon-59"></i>
								</td>
								<td>
									Coffe break <strong>+$12*</strong>
								</td>
								<td>
									<label class="switch-light switch-ios float-right">
										<input type="checkbox" name="option_5" id="option_5" value="">
										<span>
                    					<span>No</span>
										<span>Yes</span>
										</span>
										<a></a>
									</label>
								</td>
							</tr>
							<tr>
								<td>
									<i class="icon_set_1_icon-58"></i>
								</td>
								<td>
									Dinner <strong>+$26*</strong>
								</td>
								<td>
									<label class="switch-light switch-ios float-right">
										<input type="checkbox" name="option_6" id="option_6" value="">
										<span>
                    					<span>No</span>
										<span>Yes</span>
										</span>
										<a></a>
									</label>
								</td>
							</tr>
							<tr>
								<td>
									<i class="icon_set_1_icon-40"></i>
								</td>
								<td>
									Bike rent <strong>+$26*</strong>
								</td>
								<td>
									<label class="switch-light switch-ios float-right">
										<input type="checkbox" name="option_7" id="option_7" value="">
										<span>
                    					<span>No</span>
										<span>Yes</span>
										</span>
										<a></a>
									</label>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="add_bottom_15"><small>* Prices for person.</small>
					</div>
				</div>
				<!-- End col-md-8 -->

				<aside class="col-lg-4" id="sidebar">
					<div class="theiaStickySidebar">
						<div class="box_style_1">
							<h3 class="inner">- Summary -</h3>
							<table class="table table_summary">
								<tbody>
									<tr>
										<td>
											Adults
										</td>
										<td class="text-right">
											2
										</td>
									</tr>
									<tr>
										<td>
											Children
										</td>
										<td class="text-right">
											0
										</td>
									</tr>
									<tr>
										<td>
											Dedicated tour guide
										</td>
										<td class="text-right">
											$34
										</td>
									</tr>
									<tr>
										<td>
											Insurance
										</td>
										<td class="text-right">
											$34
										</td>
									</tr>
									<tr class="total">
										<td>
											Total cost
										</td>
										<td class="text-right">
											$154
										</td>
									</tr>
								</tbody>
							</table>
							<a class="btn_full" href="payment_fixed_sidebar.html">Check out</a>
							<a class="btn_full_outline" href="#"><i class="icon-right"></i> Continue shopping</a>
						</div>
						<div class="box_style_4">
							<i class="icon_set_1_icon-57"></i>
							<h4>Need <span>Help?</span></h4>
							<a href="tel://004542344599" class="phone">+45 423 445 99</a>
							<small>Monday to Friday 9.00am - 7.30pm</small>
						</div>
					</div>
					<!-- End sitcky -->
				</aside>
				<!-- End aside -->

			</div>
			<!--End row -->
		</div>
		<!--End container -->
	</main>
	<!-- End main -->

	<!-- Footer================================================== -->
	<jsp:include page="common_footer_2.jsp"/>
	<!-- End Footer -->
	
	<!-- Fixed sidebar -->
	<script src="${pageContext.request.contextPath}/resources/js/theia-sticky-sidebar.js"></script>
	<script>
		jQuery('#sidebar').theiaStickySidebar({
			additionalMarginTop: 80
		});
	</script>
	
	<script>
	/* Qty Update Button */
	$(".button_inc2").click(function () {
		var $button = $(this);
		var oldValue = $button.parent().find("input").val();

		if ($button.text() == "+") {
			var newVal = parseFloat(oldValue) + 1;
		} else {
			// Don't allow decrementing below one
			if (oldValue > 2) {
				var newVal = parseFloat(oldValue) - 1;
			} else {
				newVal = 1;
			}
		}
		$button.parent().find("input").val(newVal);
	});
	
	
	/* Cart Delete Item */
	$(".cartItemDelete").on("click", function (e) {
		var $button = $(this);
		// var sUser = $(this).prev().prev().prev().attr("value");
		var cNo = $(this).prev().attr("value");
		
		$.ajax({
			url: "session_check",
			dataType: "json",
			success: function(d) {
				if (d != null) {
					$button.parent().parent().fadeOut("slow", function (c) {
						$.ajax({
							url : "cart_delete",
							data : "cNo="+cNo,
							method : "POST",
							dataType : "json",
							success : function() {
							}
						});
					});
					
				} else {
					//alert("Your session has expired. Please sign in again.");
				}
			}
		});
		e.preventDefault();
	});
	
	
	/* Cart Refresh Item */
	$(".cartItemRefresh").on("click", function (e) {
		var $button = $(this);
		var cNo = $(this).prev().prev().attr("value");
		var newQty = $button.parent().prev().prev().prev().children(':first').children(':first').val();
		
		$.ajax({
			url: "session_check",
			dataType: "json",
			success: function(d) {
				if (d != null) {
					$.ajax({
						url : "cart_update",
						data : "cNo="+cNo+"&cProductQty="+newQty,
						method : "POST",
						dataType : "json",
						success : function(p) {
							$button.parent().prev().html("<strong>￦"+p+"</strong>");
						}
					});
				} else {
					//alert("Your session has expired. Please sign in again.");
				}
			}
		});
		e.preventDefault();
	});
	/*
	<td>
		<strong>￦${cart.cProductTypePay}</strong>
	</td>
	*/
	</script>
	
</body>

</html>