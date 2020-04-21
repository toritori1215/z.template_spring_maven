<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	
	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<link href="${pageContext.request.contextPath}/resources/z.SiliconVillage/css/hbkMy.css" rel="stylesheet">
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
						   		aria-expanded="false" aria-controls="reservation_div_space" collapseBtn="BookingState"
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
											<input id='datePicker' class="date-pick form-control" data-date-format="M d, D" type="text">
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label><i class=" icon-clock"></i> Time</label>
											<input id='timePicker' class="form-control" twelvehour="true" value="9:00 AM" type="text">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-6">
										<div class="form-group">
											<label>persons</label>
										
											<div class="my-numbers-row">
												<input type="text" value="1" id="persons" class="qty2 form-control" name="quantity">
												<div id="person_increaseBtn" class="inc my-button_inc"></div>
												<div id="person_decreaseBtn" class="dec my-button_inc"></div>
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
									<hr>
									Deposit per person<br>
									${deposit_cost.pprice}
									<hr>
									  ※예약금은 레스토랑 도착 시 
									결재카드 및 Invoice 제시시 
									환불됩니다.
									<br>
									(Your deposit will be returned
									 in full provided that we receive
									 your credit card or invoice upon
									 your arrival to our restaurant.)
									
									<hr>
								
								<!-- 
								<a class="btn_full" href="restaurant_payment_fixed_sidebar">BUY NOW</a>
								<a class="btn_full_outline" href="restaurant_cart_fixed_sidebar" id="addToCartBtn"><i class=" icon-heart"></i> ADD TO CART</a>
								 -->
							</div>
						</div>
						<!-- 예약 div 끝 -->
						<p class="d-none d-md-block d-block d-lg-none">
							<a class="btn_map" data-toggle="collapse" href="#reservation_div_space" collapseBtn="BookingState" aria-expanded="false" aria-controls="reservation_div_space" data-text-swap="No restaurant reservation" data-text-original="Restaurant Reservation">Restaurant Reservation</a>
						</p>
						
						
						<div class="box_style_1">
							<h3 class="inner">- Summary -</h3>
							<table class="table table_summary">
								<tbody>
									
									<tr id="reservation_tr" class="reservation_info">
										<td>
											Reservation Persons
										</td>
										<td class="text-right" id="personCntTd">
											1
										</td>
									</tr>
									<tr class="reservation_info">
										<td>
											Deposit cost
										</td>
										<td class="text-right" id="depositPrice" price_list='price'>
											10,000
											<input type="hidden" id="PeoplePerPrice" value="${deposit_cost.pprice}">
										</td>
									</tr>
									<tr>
										<td>
											Food Price
										</td>
										<td class="text-right" price_list='price' id="perfoodPriceTd">
											${restaurantProduct.pprice}
											<input type="hidden" id="perfoodPrice" value="${restaurantProduct.pprice}">
										</td>
									</tr>
									<tr class="total">
										<td>
											Total cost
										</td>
										<td class="text-right" price_list='price' id="sumPrice">
											${restaurantProduct.pprice}
										</td>
									</tr>
								</tbody>
							</table>
							<form name="f" id="f">
								<input type="hidden" name="pno" id="pno" value= "${restaurantProduct.pno}">
								<input type="hidden" name="foodsPrice" id="foodsPrice" value= "">							
								<input type="hidden" name="foodCount" id="foodCount" value= "">					
								<input type="hidden" name="bookingTime" id="bookingTime" value= "">					
								<input type="hidden" name="bookingdate" id="bookingdate" value= "">						
							</form>
							<a class="btn_full" href="restaurant_payment_fixed_sidebar" >BUY NOW</a>
							<a class="btn_full_outline" href="restaurant_cart_fixed_sidebar" id="addToCartBtn"><i class=" icon-cart"></i> ADD TO CART</a>
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
		
		function numberWithCommas(x) {
		    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}	

		function showReservationinfoSumCalcul(){
			/*
			let depositPrice = calculDepositPrice();
			let foodsPrice = calculfoodPrice();
			let sumPrice = foodsPrice + depositPrice;
			document.getElementById('sumPrice').firstChild.nodeValue ="￦" +numberWithCommas(sumPrice);	
			*/
		}
		
		function hideReservationinfoSumCalcul(){
			/*
			let foodsPrice = calculfoodPrice();
			let sumPrice = foodsPrice;
			document.getElementById('sumPrice').firstChild.nodeValue ="￦" +numberWithCommas(sumPrice);	
			*/
		}	

		//on load Start
		$(function(){
			
			$('#person_increaseBtn').on('click',function(e){
				//let foodCnt = document.getElementById('foodCnt').value;
				let personsCntVal = document.getElementById('persons').value;
				if(personsCntVal==''){
					console.log("여긴 들어오니?");
					personsCntVal='1';
				}
				console.log('personsCntVal :: ' + personsCntVal);
				let personsCntNumber = Number(personsCntVal)+1;
				
				common_Person_Cnt(personsCntNumber);
				
			});
			
			$('#person_decreaseBtn').on('click',function(e){
				//let foodCnt = document.getElementById('foodCnt').value;
				let personsCntVal = document.getElementById('persons').value;
				console.log('personsCntVal :: ' + personsCntVal);
				let personsCntNumber = Number(personsCntVal)-1;
				if(personsCntVal=='1'){
					personsCntNumber =1;
				}	
				
				common_Person_Cnt(personsCntNumber);
				
			});
			
			function common_Person_Cnt(personsCntNumber){
				console.log('personsCntNumber ::' + personsCntNumber);
				document.getElementById('persons').value = personsCntNumber;
				document.getElementById('personCntTd').firstChild.nodeValue = personsCntNumber;
				
			}
			
			
			//가격 원화 표시
			var abc = document.querySelectorAll( 'td[price_list="price"]');
			var valueProd;
			for (var i = 0; i < abc.length; i++) {
			
				//abc[i].style.color='green';
				valueProd = abc[i].firstChild.nodeValue;
				//console.log("valueProd="+valueProd);
				let subValue = valueProd.substr(1).trim();
				//console.log("subValue="+subValue);
				//console.log("subValue numberWithCommas="+numberWithCommas(subValue));
				let completeVal = numberWithCommas(subValue);
				//console.log("valueProd="+valueProd);
				//console.log("valueProd.firstChild.nodeValue="+valueProd.firstChild.nodeValue);
				
				abc[i].firstChild.nodeValue = "￦"+ completeVal;
			}
			
			
			//화요일 ban
			$('#datePicker').datepicker({
				beforeShowDay : function(date) {
					console.log("date.getDay::"+date.getDay());
					let day = date.getDay();
					return day ==2 ? false:true;
				} 	
				
			});
			
			$('input.date-pick').datepicker('setDate', 'today');
			
			$('#datePicker').datepicker().on('change', function(e) {
				let dayStr = document.getElementById('datePicker').value;
				console.log("day::"+ dayStr);
				let daycustom = dayStr.substring(dayStr.indexOf(',')+1).trim();
				console.log('daycustom ::' + daycustom);
				
				//요일 변경이 되었을시 input (#datePicker) 값 변경
				//$('#timePicker').timepicker('setDay',daycustom); timepicker가 클릭되었을시에 setDay값 셋팅으로 바꾸어주어 필요 없어짐
				$('#timePicker').val('9:00 AM');
				
				//$('#timePicker').timepicker('setHour','9');
				//$('#timePicker').timepicker('setMeridian','AM');

   			 });
			
			
			$('#timePicker').timepicker({
			
				minuteStep: 60,
				showInpunts: false,
				weekendstTime : 9,
				weekendedTime : 1,
				weekdaystTime : 9,
				weekdayedTime : 7,
				day :'Sat',
				showInpunts: false
			});
			
			
			$('#timePicker').on("click", function(e) {
				//# 1, 3번은 이어진다.
				//1.날짜가 변경되면 timePicker Input 데이터도 9:00AM으로 초기화 된다.
				let timeStr = this.value; 
				console.log('timeStr->'+timeStr);
				let time = timeStr.substring(0,1);
				console.log('time->'+time);

				//2.위젯 필요없는 노드 삭제
				$('a[data-action="incrementMinute"]').parent().remove();
				$('a[data-action="decrementMinute"]').parent().remove();
				$('td> input[class="bootstrap-timepicker-minute"]').parent().remove();
				$('td[class="separator"]').remove();
				
				//3. 날짜를 변경했을시에 Time값을 Default로 해준다.
				//-->금요일날 2시 이후의 값이 선택되고 토요일로 변경되면 Timepicker 위젯이 영업을 하지 않는 시간으로 셋팅되는 것을 막음 
				$('table > tbody > tr:nth-child(2) > td:nth-child(1) > input').val(time);
				$('table > tbody > tr:nth-child(2) > td:nth-child(2) > input').val('AM');
				
				//4.요일 계산 및 timepicker setDay 셋팅
				let dayStr = document.getElementById('datePicker').value;
				console.log("day::"+ dayStr);
				let daycustom = dayStr.substring(dayStr.indexOf(',')+1).trim();
				console.log('daycustom ::' + daycustom);
				
				//timepicker에 Day seting
				$('#timePicker').timepicker('setDay',daycustom);

			});
			
			
			
			
			
			$('a[collapseBtn="BookingState"]').on("click", function(e) {
				
				let show_reservation_window = $('#reservation_div_space').is(':visible');
				console.log('show_reservation_window::'+ show_reservation_window);
				//보여줄때 false 가나옴.
				if(show_reservation_window){
					$('#addToCartBtn').show();
					$('.reservation_info').hide();
					console.log("hideReservationinfoSumCalcul");
					hideReservationinfoSumCalcul();
				}else{
					$('#addToCartBtn').hide();
					$('.reservation_info').show();
					console.log("showReservationinfoSumCalcul");
					showReservationinfoSumCalcul();
				}
			});
			
			
		});
		//on load end
		
	</script>
		

</body>

</html>