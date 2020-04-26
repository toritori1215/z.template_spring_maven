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
									Options
								</th>
								<th>
									Actions
								</th>
							</tr>
						</thead>
						<c:forEach var="i" begin="0" end="${fn:length(cartList)-1}">
						<div>
							<tbody>
								<tr>
									<td>
										<div class="thumb_cart">
											<a href="tour_detail?pNo=${cartList[i].pNo}">
												<img src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${cartList[i].pName}_cart.jpg" alt="Image">
											</a>
										</div>
										&nbsp;<span class="item_cart"><a href="tour_detail?pNo=${cartList[i].pNo}"><strong>${cartList[i].pName}<strong></a></span>
									</td>
									<td>
										<div class="numbers-row2">
											<input type="text" value="${cartList[i].cProductQty}" id="quantity_1" class="qty2 form-control" name="quantity_1">
											<div class="inc button_inc2">+</div>
											<div class="dec button_inc2">-</div>
										</div>
									</td>
									<td>
										<strong>${cartList[i].cCheckin.substring(0,10)}</strong><br>(${cartList[i].cCheckinTime})
									</td>
									<td>
										<strong>￦${cartList[i].cProductTypePay/10000.0}만</strong>
									</td>
									<td>
										<div id="emptyDiv"></div>
										<label class="switch-light switch-ios float-left">
											<input type="checkbox" data-toggle="toggle" name="option_2" id="option_1" value="">
											<span>
	                    					<span>No</span>
											<span>Yes</span>
											</span>
											<a></a>
										</label>
									</td>
									<td class="options" id="${cartList[i].cProductQty}">
										<input class="cNo" type="hidden" value="${cartList[i].cNo}">
										<input class="cartItemBefore" type="hidden" value="${cartList[i].cProductTypePay/10000.0}">
										<a class="cartItemDelete" href="#" pNo="${cartList[i].pNo}"><i class=" icon-trash"></i></a>
										<a class="cartItemRefresh" href="#"><i class="icon-ccw-2"></i></a>
										<input class="cartIndex" type="hidden" value="${i}">
										<input class="delete_pName" type="hidden" value="${cartList[i].pName}">
										<input class="delete_cCheckin" type="hidden" value="${cartList[i].cCheckin}">
									</td>
								</tr>
							</tbody>
							<tbody col-lg-8>
								<c:forEach var="j" begin="0" end="${fn:length(optionList[i])-1}">
									<tr>
										<td>
											<i class="${optionList[i][j].pDesc} style="font-size:35px; font-style:bold""></i>
										</td>
										<td colspan="2">
											<strong>${optionList[i][j].pName}</strong>
										</td>
										<td>
											<select class="form-control" id="dropdownSelect_${i}${j}" pPrice="${optionList[i][j].pPrice/10000}">
												<c:forEach var="index" begin="0" end="${optionList[i][j].cProductQty}">
													<c:if test="${index == optionList[i][j].pQty}">
														<option id="option_${i}${j}" value="${index}" selected="selected">${index}</option>
													</c:if>
													<c:if test="${index != optionList[i][j].pQty}">
														<option id="option_${i}${j}" value="${index}">${index}</option>
													</c:if>
												</c:forEach>
											</select>
											<input type="hidden" pNo="${optionList[i][j].pNo}">
											<input type="hidden" cNo="${optionList[i][j].cNo}">
											<input type="hidden" selectDate="${cartList[i].cCheckin.substring(0,10)}">
											<input type="hidden" selectTime="${cartList[i].cCheckinTime}">
											<input type="hidden" id="optionQty_${i}${j}" value="${optionList[i][j].pQty}">
										</td>
										<td>
											￦${optionList[i][j].pPrice/10000}만<sub>/person</sub>
										</td>
										<td>
											<div id="optionTotal_${i}${j}" value="">
												=&nbsp;&nbsp;&nbsp;￦0.0만
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
							</div>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- End col-lg-8 -->

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
											<strong>Tours</strong>
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
											<div id="optionTotal" value="0">
												￦&nbsp;0
											</div>
										</td>
									</tr>
									<tr class="total">
										<td>
											Total
										</td>
										<td class="text-right">
											<div id="totalTotal" value="${cartTotal/10000}">
												￦&nbsp;${cartTotal/10000}만
											</div>
										</td>
									</tr>
								</tbody>
							</table>
							<div id="cartCheckoutButton">
								<input type="hidden" id="cartListLength" value="${fn:length(cartList)}">
								<input type="hidden" id="optionListLength" value="${fn:length(optionList[0])}">
								<c:forEach var="k" begin="0" end="${fn:length(cartList)*fn:length(optionList[0])-1}">
									<input type="hidden" id="oCount${k}" value="0">
								</c:forEach>
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
		var delete_i = $(".cartItemDelete").next().next().attr("value");
		console.log(delete_i);
		var delete_pName = $(".cartItemDelete").next().next().next().attr("value");
		var delete_cCheckin = $(".cartItemDelete").next().next().next().next().attr("value");
		console.log(delete_pName);
		console.log(delete_cCheckin);
		
		$.ajax({
			url: "session_check",
			dataType: "json",
			success: function(e) {
				if (e != null) {
					$fadeButton = $button.parent().parent().parent().next();
					$fadeButton.fadeOut("slow", function(f) {
						$.ajax({
							url : "cart_search_options",
							data : "foodCategory="+delete_pName+"&cCheckin="+delete_cCheckin,
							method : "POST",
							dataType : "json",
							success : function(h) {
								var oTotal_prev = $("#optionTotal").attr("value");
								var oTotal_new = +oTotal_prev - +h;
								$("#optionTotal").attr("value", oTotal_new);
								var total_prev = $("#totalTotal").attr("value");
								var total_new = +total_prev - +h;
								$("#totalTotal").attr("value", total_new);
								$("#optionTotal").html("￦"+oTotal_new+".0만");
								$("#totalTotal").html("￦"+total_new+".0만");
							}
						});
					});
					
					$button.parent().parent().parent().fadeOut("slow", function(g) {
						$.ajax({
							url : "cart_delete",
							data : "cNo="+cNo,
							method : "POST",
							dataType : "json",
							success : function(h) {
								var cartTotalNew = 0;
								for (var i=0; i < h.length; i++) {
									cartTotalNew += h[i].cProductTypePay;
								}
								$("#cartTotal").html("￦&nbsp;"+cartTotalNew/10000+".0만");
								
								if (h.length == 0) {
									$('#datePeriod').html(" ");
									$('#cartCheckoutButton').html("<a class='btn_full'>Check out</a>");
								} else if (h.length == 1) {
									$('#datePeriod').html(h[0].cCheckin.substr(5,6));
								} else {
									var date_min = h[0].cCheckin.substr(5,6);
									var date_max = h[0].cCheckin.substr(5,6);
									for (var i=0; i < h.length; i++) {
										if (h[i].cCheckin.substr(5,6) < date_min) {
											date_min = h[i].cCheckin.substr(5,6);
										}
										if (h[i].cCheckin.substr(5,6) > date_max) {
											date_max = h[i].cCheckin.substr(5,6);
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
		var newQty = $button.parent().prev().prev().prev().prev().children(':first').children(':first').val();
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
							$button.parent().prev().prev().html("<strong>￦"+f+".0만</strong>");
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
	
	
	/* Fade Toggle */
	$("input[name='option_2']").on("click", function (d) {		
		var $button = $(this);
		$button.closest('tbody').next().fadeToggle("slow");
	});
	
	var cartLength = $("#cartListLength").attr("value");
	var optionLength = $("#optionListLength").attr("value");
	
	
	$(function() {
		for (var i = 0; i < cartLength; i++) {
			for (var j = 0; j < optionLength; j++) {
				$("#dropdownSelect_"+i+j).change(function() {
					var $button = $(this);
					var ind_i = $button.attr("id")[15];
					var ind_j = $button.attr("id")[16];
					var ind = (ind_i*3)+(ind_j*1);
					var oPrice = $button.attr("pPrice");
					var oCount_prev = $("#oCount"+ind).attr("value"); // select한 곳의 원래 count
					var oCount_new = $(':selected').text()[ind];
					$("#oCount"+ind).attr("value", oCount_new);
					var oTotal_prev = $("#optionTotal").attr("value");
					var oTotal_new = +oTotal_prev + (+oCount_new - +oCount_prev)*oPrice;
					$("#optionTotal").attr("value", oTotal_new);
					var total_prev = $("#totalTotal").attr("value");
					var total_new = (+oTotal_new - +oTotal_prev) + +total_prev;
					$("#totalTotal").attr("value", total_new);
					$button.parent().next().next().children(':first').html("=&nbsp;&nbsp;&nbsp;￦"+oPrice*oCount_new+".0만");
					$("#optionTotal").html("￦"+oTotal_new+".0만");
					$("#totalTotal").html("￦"+total_new+".0만");
					
					var pNo = $button.next().attr("pNo");
					var opt_cNo = $button.next().next().attr("cNo");
					var selectDate = $button.next().next().next().attr("selectDate");
					var selectTime = $button.next().next().next().next().attr("selectTime");
					
					$.ajax({
						url: "session_check",
						dataType: "json",
						success: function(e) {
							if (e != null) {
								$.ajax({
									url : "cart_insert",
									data : "newVal="+oCount_new+"&pNo="+pNo+"&pPrice="+(oPrice*10000)+"&selectDate="+selectDate+"&selectTime="+selectTime+"&opt=1",
									method : "POST",
									dataType : "json",
									success : function(g) {
									}
								});
							} else {
								//alert("Your session has expired. Please sign in again.");
							}
						}
					});
				});
			}
		}
	});
					
					// console.log("ind"+i);  ind2 출력
					
					//=&nbsp;&nbsp;&nbsp;￦0
					/*
					console.log($(':selected').text());
					console.log($(':selected').text()[0]);
					console.log($(':selected').text()[1]);
					console.log($(':selected').text()[2]);
					console.log($(':selected').text()[3]);
					console.log($(':selected').text()[4]);
					console.log($(':selected').text()[5]);
					*/
					
					/*
					console.log($(this).children(':first'));
					console.log($(this).children(':first').next());
					console.log($(this).children(':first').next().attr("value"));
					1에만 접근함
					*/
					//console.log("#option_"+i+j)  ij가 23으로 나옴
					//$(this).parent().next().next().children(':first').html("");
	</script>
	
</body>

</html>