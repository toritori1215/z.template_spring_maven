<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	
	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->

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
					<li><a href="#">Home</a>
					</li>
					<li><a href="#">Category</a>
					</li>
					<li>Page active</li>
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
									Discount
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
							<tr>
								<td>
									<div class="thumb_cart">
										<img src="${pageContext.request.contextPath}/resources/img/thumb_cart_1.jpg" alt="Image">
									</div>
									<span class="item_cart">Louvre Museum tickets</span>
								</td>
								<td>
									<div class="numbers-row">
										<input type="text" value="1" id="quantity_1" class="qty2 form-control" name="quantity_1">
									</div>
								</td>
								<td>
									0%
								</td>
								<td>
									<strong>€24,71</strong>
								</td>
								<td class="options">
									<a href="#"><i class=" icon-trash"></i></a><a href="#"><i class="icon-ccw-2"></i></a>
								</td>
							</tr>
							<tr>
								<td>
									<div class="thumb_cart">
										<img src="${pageContext.request.contextPath}/resources/img/thumb_cart_1.jpg" alt="Image">
									</div>
									<span class="item_cart">Eiffell tour</span>
								</td>
								<td>
									<div class="numbers-row">
										<input type="text" value="0" id="quantity_2" class="qty2 form-control" name="quantity_2">
									</div>
								</td>
								<td>
									0%
								</td>
								<td>
									<strong>€0,0</strong>
								</td>
								<td class="options">
									<a href="#"><i class=" icon-trash"></i></a><a href="#"><i class="icon-ccw-2"></i></a>
								</td>
							</tr>
							<tr>
								<td>
									<div class="thumb_cart">
										<img src="${pageContext.request.contextPath}/resources/img/thumb_cart_1.jpg" alt="Image">
									</div>
									<span class="item_cart">Senna river Tour</span>
								</td>
								<td>
									<div class="numbers-row">
										<input type="text" value="1" id="quantity_3" class="qty2 form-control" name="quantity_3">
									</div>
								</td>
								<td>
									0%
								</td>
								<td>
									<strong>€24,71</strong>
								</td>
								<td class="options">
									<a href="#"><i class=" icon-trash"></i></a><a href="#"><i class="icon-ccw-2"></i></a>
								</td>
							</tr>
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
					
						<p class="d-none d-xl-block d-lg-block d-xl-none">
							<a class="btn_map" data-toggle="collapse" href="#reservation_div_space" 
							   aria-expanded="false" aria-controls="reservation_div_space" id="BookingState"
							   data-text-swap="No restaurant reservation" data-text-original="Restaurant Reservation">
							   		Restaurant Reservation
							</a>
						</p>
					
						<!-- 예약 div 시작 -->
						<div class= "collapse" id="reservation_div_space">
							<div class="box_style_1 expose" id="reservation_div">
								
									<h3 class="inner">- Reservation -</h3>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label><i class="icon-calendar-7"></i> Select a date</label>
												<input id="datePicker" class="date-pick form-control" data-date-format="M d, D" type="text">
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label><i class=" icon-clock"></i> Time</label>
												<input class="time-pick form-control" value="12:00 AM" type="text">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-6">
											<div class="form-group">
												<label>persons</label>
												<div class="numbers-row">
													<input type="text" value="1" id="adults" class="qty2 form-control" name="quantity">
												</div>
											</div>
										</div>
										<!-- 
										<div class="col-6">
											<div class="form-group">
												<label>Children</label>
												<div class="numbers-row">
													<input type="text" value="0" id="children" class="qty2 form-control" name="quantity">
												</div>
											</div>
										</div>
										 -->
									</div>
									<!-- 
									<hr>
									 -->
								
								<!-- 
								<a class="btn_full" href="restaurant_payment_fixed_sidebar">BUY NOW</a>
								<a class="btn_full_outline" href="restaurant_cart_fixed_sidebar" id="addToCartBtn"><i class=" icon-heart"></i> ADD TO CART</a>
								 -->
							</div>
						</div>
						<!-- 예약 div 끝 -->
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
							<a class="btn_full" id="go_to_reservation_or_payment" href="restaurant_payment_fixed_sidebar">Check out</a>
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
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-timepicker_redefination_restaurant.js"></script>
	
	
	
	<script>
		jQuery('#sidebar').theiaStickySidebar({
			additionalMarginTop: 80
		});
		
		
		
		
		
		//on load Start
		$(function(){
			
			$('#datePicker').datepicker({

				beforeShowDay : function(date) {
					console.log("date.getDay::"+date.getDay());
					let day = date.getDay();
					
					
					
					return day ==2 ? false:true;
				} 	
				
			});
			
			
			$('input.date-pick').datepicker('setDate', 'today');
			$('input.time-pick').timepicker({
				minuteStep: 15,
				showInpunts: false
			})
			
						$('#datetimePicker').timepicker({
			
				/*
				this.widget = '';
		        this.$element = $(element);
		        this.defaultTime = options.defaultTime;
		        this.disableFocus = options.disableFocus;
		        this.disableMousewheel = options.disableMousewheel;
		        this.isOpen = options.isOpen;
		        this.minuteStep = options.minuteStep;
		        this.modalBackdrop = options.modalBackdrop;
		        this.orientation = options.orientation;
		        this.secondStep = options.secondStep;
		        this.showInputs = options.showInputs;
		        this.showMeridian = options.showMeridian;
		        this.showSeconds = options.showSeconds;
		        this.template = options.template;
		        this.appendWidgetTo = options.appendWidgetTo;
		        this.showWidgetOnAddonClick = options.showWidgetOnAddonClick;
		        // 추가한 멤버변수 start
		        this.day = options.day;
		        this.weekendstTime = options.weekendstTime;
		        this.weekendedTime = options.weekendedTime;
		        this.weekdaystTime = options.weekdaystTime;
		        this.weekdayedTime = options.weekdayedTime;
        		// 추가한 멤버변수 end
				*/	
				minuteStep: 60,
				showInpunts: false,
				weekendstTime : 9,
				weekendedTime : 1,
				weekdaystTime : 9,
				weekdayedTime : 7,
				day:'Mon'
			});
			
			
			$('#datetimePicker').on("click", function(e) {
				
				$('a[data-action="incrementMinute"]').parent().remove();
				$('a[data-action="decrementMinute"]').parent().remove();
				$('td> input[class="bootstrap-timepicker-minute"]').parent().remove();
				$('td[class="separator"]').remove();

			});
			
			$('#datetimePicker').timepicker().on('changeTime.timepicker', function(e) {
			    
				console.log("e::"+$(e.target).attr('id'));
				//console.log('The time is ' + e.time.value);
			    //console.log('The hour is ' + e.time.hours);
			    //console.log('The minute is ' + e.time.minutes);
			    //console.log('The meridian is ' + e.time.meridian);
					
			 });
			
			
			
			
			$('#BookingState').on("click", function(e) {
				let bookState = document.getElementById("BookingState").firstChild.nodeValue;
				console.log("bookState ::" + bookState);
				let chanegCheckoutLink = document.getElementById("go_to_reservation_or_payment");
				if(bookState.toUpperCase()=='RESTAURANT RESERVATION'){
					console.log("들어오긴 하니2?");
					//$('#reservation_div').show();
					chanegCheckoutLink.setAttribute("href", "restaurant_payment_fixed_sidebar");
					console.log("chanegCheckoutLink.getAttribute ->"+chanegCheckoutLink.getAttribute('href'));
				}else{	
					console.log("들어오긴 하니3?");
					//$('#reservation_div').hide();
					chanegCheckoutLink.setAttribute("href", "restaurant_single_restaurant_detail");
					console.log("chanegCheckoutLink.getAttribute ->"+chanegCheckoutLink.getAttribute('href'));
				}
			});
			
			
		});
		//on load end
		
	</script>
		

</body>

</html>