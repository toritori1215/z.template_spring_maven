<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
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
										<a href="tour_detail?pNo=${cart.pNo}">
											<img src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${cart.pName}_cart.jpg" alt="Image">
										</a>
									</div>
									&nbsp;<span class="item_cart"><a href="tour_detail?pNo=${cart.pNo}"><strong>${cart.pName}<strong></a></span>
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
									<strong>￦${cart.cProductTypePay/10000.0}만</strong>
								</td>
								<td class="options" id="${cart.cProductQty}">
									<input class="cNo" type="hidden" value="${cart.cNo}">
									<input class="cartItemBefore" type="hidden" value="${cart.cProductTypePay/10000.0}">
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
								<th colspan="6">
									Add options / Services
								</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="option" items="${optionList}">
								<tr>
									<td style="width:25%; text-align:center" rowspan="${fn:length(option['optionInnerList'])}">
										<strong><u>${option.foodCategory}</u></strong><br>
										${fn:substring(option.cCheckin, 0, 10)}  
									</td>
									<td style="width:10%">
										<i class="${option.optionInnerList[0].pDesc}"></i>
									</td>
									<td style="width:20%">
										<strong>${option.optionInnerList[0].pName}</strong>
									</td>
									<td style="width:10%">
										<div class="dropdown">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown">0</a>
										    <div class="dropdown-menu">
										    	<c:forEach var="index" begin="1" end="${option.cProductQty}">
										        	<a href="#" class="dropdown-item">${index}</a>
										        </c:forEach>
										    </div>
										</div>
									</td>
									<td style="width:15%">
										￦${option.optionInnerList[0].pPrice/10000}만 <sub>/person</sub>
									</td>
									<td style="width:15%">
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
								<c:forEach var="optionInner" items="${option.optionInnerList}" begin="1">
									<tr>
										<td style="width:10%">
											<i class="${optionInner.pDesc}"></i>
										</td>
										<td style="width:20%">
											<strong>${optionInner.pName}</strong>
										</td>
										<td style="width:5%">
											<div class="dropdown">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown">0</a>
											    <div class="dropdown-menu">
											    	<c:forEach var="index" begin="1" end="${option.cProductQty}">
											        	<a href="#" class="dropdown-item">${index}</a>
											        </c:forEach>
											    </div>
											</div>
										</td>
										<td style="width:20%">
											￦${optionInner.pPrice/10000}만<sub>/person</sub>
										</td>
										<td style="width:15%">
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
								</c:forEach>
							</c:forEach>
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
											<strong>Dates</strong>
										</td>
										<c:if test="${(date_min != date_max)}">
											<td class="text-right" id = "datePeriod">
												${date_min} &nbsp; to&nbsp;  ${date_max}
											</td>
										</c:if>
										<c:if test="${(date_min != null) and (date_min != '') and (date_min == date_max)}">
											<td class="text-right" id = "datePeriod">
												${date_min}
											</td>
										</c:if>
										<c:if test="${((date_min == null) or (date_min == '')) and ((date_max == null) or (date_max == ''))}">
											<td class="text-right" id = "datePeriod">
											</td>
										</c:if>
									</tr>
									<tr>
										<td>
											<strong>Tour Total</strong>
										</td>
										<td class="text-right">
											<div id="cartTotal" value="${cartTotal/10000}">
												￦&nbsp;${cartTotal/10000}만
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<strong>Options</strong>
										</td>
										<td class="text-right">
											$0
										</td>
									</tr>
									<tr>
										<td>
											<strong>Insurance</strong>
										</td>
										<td class="text-right">
											$0
										</td>
									</tr>
									<tr class="total">
										<td>
											Total cost
										</td>
										<td class="text-right">
											$0
										</td>
									</tr>
								</tbody>
							</table>
							
							<div id="cartCheckoutButton">
								<c:if test="${(sUser != null) && (fn:length(cartList) != 0)}">
									<a class="btn_full" href="jumun_checkout">Check out</a>
								</c:if>
						 		<c:if test="${(sUser != null) && (fn:length(cartList) == 0)}">
									<a class='btn_full'>Check out</a>
								</c:if>
							</div>
							<a class="btn_full_outline" href="tour_list"><i class="icon-right"></i> Continue shopping</a>
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
	$(".cartItemDelete").on("click", function (d) {
		var $button = $(this);
		var cNo = $(this).prev().prev().attr("value");
		var cartItemBefore = $button.prev().attr("value");  // 아래 작동하면 지워도 됨
		var cartTotal = $("#cartTotal").attr("value");  // 아래 작동하면 지워도 됨
		
		$.ajax({
			url: "session_check",
			dataType: "json",
			success: function(e) {
				if (e != null) {
					$button.parent().parent().fadeOut("slow", function (f) {
						$.ajax({
							url : "cart_delete",
							data : "cNo="+cNo,
							method : "POST",
							dataType : "json",
							success : function(g) {
								var cartTotalNew = 0;
								for (var i=0; i < g.length; i++) {
									cartTotalNew += g[i].cProductTypePay;
									console.log(g[i]);
								}
								$("#cartTotal").html("￦&nbsp;"+cartTotalNew/10000+".0만");
								
								if (g.length == 0) {
									$('#datePeriod').html(" ");
									$('#cartCheckoutButton').html("<a class='btn_full'>Check out</a>");
								} else if (g.length == 1) {
									$('#datePeriod').html(g[0].cCheckin.substr(5,6));
								} else {
									var date_min = g[0].cCheckin.substr(5,6);
									var date_max = g[0].cCheckin.substr(5,6);
									for (var i=0; i < g.length; i++) {
										if (g[i].cCheckin.substr(5,6) < date_min) {
											date_min = g[i].cCheckin.substr(5,6);
										}
										if (g[i].cCheckin.substr(5,6) > date_max) {
											date_max = g[i].cCheckin.substr(5,6);
										}
									}
									$('#datePeriod').html(date_min+"&nbsp; to&nbsp;"+date_max);
								}
							}
						});
					});
					
				} else {
					//alert("Your session has expired. Please sign in again.");
				}
			}
		});
		d.preventDefault();
	});
	
	
	/* Cart Refresh Item */
	$(".cartItemRefresh").on("click", function (d) {
		var $button = $(this);
		var cNo = $button.prev().prev().prev().attr("value");
		var newQty = $button.parent().prev().prev().prev().children(':first').children(':first').val();
		var cartItemBefore = $button.prev().prev().attr("value");
		var cartTotal = $("#cartTotal").attr("value");
		
		$.ajax({
			url: "session_check",
			dataType: "json",
			success: function(e) {
				if (d != null) {
					$.ajax({
						url : "cart_update",
						data : "cNo="+cNo+"&cProductQty="+newQty,
						method : "POST",
						dataType : "json",
						success : function(f) {
							var cartNet = f-cartItemBefore;
							var cartTotalNew = +cartTotal + +cartNet;
							$button.parent().prev().html("<strong>￦"+f+".0만</strong>");
							$button.prev().prev().attr("value", f);
							$("#cartTotal").html("￦&nbsp;"+cartTotalNew+".0만");
							$("#cartTotal").attr("value", cartTotalNew);
						}
					});
				} else {
					//alert("Your session has expired. Please sign in again.");
				}
			}
		});
		d.preventDefault();
	});
	</script>
	
</body>

</html>