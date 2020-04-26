<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
									Price
								</th>
								<th>
									Total
								</th>
								<th>
									Actions
								</th>
							</tr>
						</thead>
						<tbody id="listBody">
						
							
							<c:forEach var="cartItem" items="${restCartList}" varStatus="st"> 
								<c:forEach var="productItem" items="${cartItem.restproductList}" varStatus="st2">
									<c:set var="fileImg" value="${fn:split(productItem.pimg,'/')}"/>
								
									<tr id="${st.index}" itemNo="${productItem.pno}" >
										<td>
											<div class="thumb_cart">
												<img src="${pageContext.request.contextPath}/resources/css/images/restaurant_Product_img/${fileImg[0]}" alt="Image">
											</div>
											<span class="item_cart">${productItem.pname}</span>
										</td>
										<td>
											<div class="numbers-row">
												<input type="text" value="${cartItem.cproductQty}" class="qty2 form-control" name="quantity_1">
											</div>
										</td>
										<td class="priceDisplay">
											${productItem.pprice}
											<input type="hidden" value="${productItem.pprice}">
										</td>
										<td>
											<strong class="priceDisplay"> ${cartItem.cproductTypePay}</strong>
											<input type ="hidden" id="cproductTypePay" value ="${cartItem.cproductTypePay}">
										</td>
										<td class="options">
											<a href="#"><i class=" icon-trash"></i></a>
										</td>
									</tr>
								</c:forEach>
							</c:forEach>
						</tbody>
					</table>
					<!--   안사용한다!!!!! -->
					<table class="table table-striped options_cart" style="display:none;"> <!-- display:none visibility:hidden; -->
						<!-- 
						
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
						 -->
					</table>
					<!--   안사용한다!!!!! end -->
					<div class="add_bottom_15">
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
												<input type="text" value="1" id="personsCntId" class="qty2 form-control" name="quantity">
												<div id="person_increaseBtn" class="inc my-button_inc"></div>
												<div id="person_decreaseBtn" class="dec my-button_inc"></div>
											</div>
										</div>
									</div>
									
									<div class="col-6" id="seatingDiv">
										<div class="form-group">
											<label>Seating Capacity</label>
											<div class="my-numbers-row">
												<label id="seatCapacityLabel">${restaurant_prod.pavailable}</label>
											</div>
										</div>
									</div>
									 
									</div>
									<hr>
									Deposit per person<br>
									￦  ${restaurant_prod.pprice}

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
											${restaurant_prod.pprice}
											
										</td>
									</tr>
									<tr>
										<td>
											Total Food Price
										</td>
										<td class="text-right" price_list='price' id="foodsPriceTd">
											${sumprice}
										</td>
									</tr>
									<tr class="total">
										<td>
											Total cost
										</td>
										<td class="text-right" price_list='price' id="sumPrice">
											${sumprice}
										</td>
									</tr>
								</tbody>
							</table>

							
							<!-- 받아올 정보를 유용하게 사용하기 위한 form이자 유용하게 보내고자하는 form -->
							<form name="f" id="f">
							 	<!-- 음식 총액 -->
								<input type="hidden" name="foodsPrice" id="foodsPrice" value= "${sumprice}">
							 	<!-- 예약좌석 수량별 합계 -->
								<input type="hidden" name="depositSumCost" id="depositSumCost" value= "">
							 	<!-- 카트 리스트의 길이-->
								<input type="hidden" name="cartListLength" id="cartListLength" value= "${restCartList.size()}">
															
								<!-- 전송 데이터 -->
								<input type="hidden" name= "totalSeatBookingCnt" id="totalSeatBookingCnt" value="">
								<input type="hidden" name= "totalFoodPrice" id="totalFoodPrice" value="">
								<input type="hidden" name="totalPrice" id="totalPrice" value= "">					
								<input type="hidden" name="bookingTime" id="bookingTime" value="">					
								<input type="hidden" name="bookingDate" id="bookingDate" value="">
								<input type="hidden" id="itemObjectJSONList" name="itemObjectJSONList" value="">					
								<!-- 전송 데이터 -->
								
								<!-- 웹용 -->
								
								<input type="hidden" id="day" name="day" value="">
								<input type="hidden" id="PeoplePerPrice" name="PeoplePerPrice" value="${restaurant_prod.pprice}">
								<!-- 웹용 -->
								<input type="hidden" name="seatCapacity" id="seatCapacity" value="${restaurant_prod.pavailable}">
							</form>
							
							
							
							<a class="btn_full" id="checkOutBtn" href="restaurant_payment_fixed_sidebar" >BUY NOW</a>
							<a class="btn_full_outline" id="restaurants_all_list" href="restaurants_all_list"><i class=" icon-right"></i> CONTINUE SHOPPING</a>

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

		
		function calculDepositPrice(){
			let personsCntNumber= Number($('#personsCntId').val());
			console.log("personsCntNumber::" + personsCntNumber);
			let depositPriceStr = $('#PeoplePerPrice').val();
			console.log("depositPrice ::" + depositPriceStr);
			let depositPriceStr1 = depositPriceStr.replace('￦', "");
			let depositPrice = Number(depositPriceStr1.replace(/,/gi,"")) * personsCntNumber;
			////console.log("depositPrice ::"+ depositPrice);
			document.getElementById("depositSumCost").value = depositPrice;
			return depositPrice;
		}
		
		function calculAllFoodSumPrice(){
			let listCntSize = Number(document.getElementById('cartListLength').value);
			let sumFoodTotal = 0;
			let visibleitem = false;
			for (let k = 1; k <= listCntSize; k++) {
				visibleitem = $('#'+(k-1)).is(":visible");
				console.log('#'+(k-1)+'=' + visibleitem)
				
				//console.log('K =' + k);
				if(visibleitem){
					let foodTypeSumPrice_str =$('tr:nth-child('+k+') > td:nth-child(4) > strong').text();
					//console.log("foodTypeSumPrice_str ::" + foodTypeSumPrice_str);
					let foodTypeSumPrice_str1=foodTypeSumPrice_str.replace(/,/gi,"");
					//console.log("foodTypeSumPrice_str1 ::" + foodTypeSumPrice_str1);
					let foodTypeSumPrice=Number(foodTypeSumPrice_str1.replace("￦",""));
					
					sumFoodTotal += foodTypeSumPrice;
					//console.log("sumFoodTotal for내부::" + sumFoodTotal);
				}
			}
			//console.log("sumFoodTotal::" + sumFoodTotal);
			return sumFoodTotal;
		}
		
		function calculTotalPrice(){
			
			let foodsPrice = calculAllFoodSumPrice();
			let depositPrice = calculDepositPrice();
			let totalPrice =0;
			//console.log("$('#reservation_div_space').is(:visible)'" + $('#reservation_div_space').is(":visible"))
			//닫혀있으면 false
			if($('#reservation_div_space').is(":visible")){
				totalPrice = foodsPrice + depositPrice;
			}else{
				totalPrice = foodsPrice;
			}
			return totalPrice;
		}
		
		function seatCapacityCalcul_Ajax(){
			let dateText = document.getElementById('datePicker').value;
			let timeText = document.getElementById('timePicker').value;
			let persons = document.getElementById('personsCntId').value;
			
			let param = "dateText="+dateText+"&timeText="+timeText;
			$.ajax({
				
				url : 'seatCapacityCalcul',
				data : param,
				dataType : 'json',
				async : false,
				success : function(result){
					//console.log("result ----->>>>>>>"+result);
					let capacity =Number(document.getElementById('seatCapacity').value);
					let bookedSeat = Number(result);
					let bookingSeat = Number(document.getElementById('personsCntId').value);
					
					let leftSeat = capacity - bookedSeat - bookingSeat;
					document.getElementById('seatCapacityLabel').firstChild.nodeValue = leftSeat;
				}
				
			});
			
		}
		
		//on load Start
		$(function(){
			
			
			console.log("cproductTypePay :: " +$('#cproductTypePay').val());
			
			
			//예약창 닫혀있을시 reservation_info'는 숨겨져야함 
			$('.reservation_info').hide();
			//$('#seatingDiv').hide();
			//상품별 증감버튼에 대한 처리
			let listCntSize = Number(document.getElementById('cartListLength').value);
			//console.log("listCntSize ::" + listCntSize);
			for (let j = 1; j <= listCntSize; j++) {
				//console.log('j ::'+ j);
				//감소 버튼 event 정의
				$('tbody > tr:nth-child('+j+')' ).on('click','td:nth-child(2) > div > div.dec.button_inc',function(e){
					//console.log('감소 버튼 i ::'+ j);
					let productprice = Number($('tr:nth-child('+j+') > td.priceDisplay > input').val());
					let inputCnt = Number($('tr:nth-child('+j+') > td:nth-child(2) > div > input').val());
					if(inputCnt==0){
						$('tr:nth-child('+j+') > td:nth-child(2) > div > input').val(1);
						inputCnt =1;
					}
					//resultTypeSumPrice 는 DB 주문상세에 저장되어야함. <input>타입을 f에 append해줘야함  name속성으로 하여 request를 받자 
					let resultTypeSumPrice = inputCnt * productprice;						
					$('tr:nth-child('+j+') > td:nth-child(4) > strong').text("￦"+numberWithCommas(resultTypeSumPrice));
					
					let foodTotalPrice = calculAllFoodSumPrice();
					document.getElementById('foodsPriceTd').firstChild.nodeValue= "￦"+numberWithCommas(foodTotalPrice);
					
					let totPrice = calculTotalPrice();
					$('#sumPrice').text("￦"+numberWithCommas(totPrice));
				
				});
				//증가 버튼 event 정의
				$('tbody > tr:nth-child('+j+')' ).on('click','td:nth-child(2) > div > div.inc.button_inc',function(e){
					//console.log('증가 버튼 j ::'+ j);
					//문자열 처리시 참고 주석
					//let foodTypeSumPrice_str=$('tr:nth-child('+i+') > td:nth-child(4) > strong').text();
					//let foodTypeSumPrice_str=document.querySelector('tr:nth-child('+j+') > td:nth-child(4)> strong').firstChild.nodeValue;
					////console.log("foodTypeSumPrice_str:"+ foodTypeSumPrice_str);
					//let foodTypeSumPrice_str1=foodTypeSumPrice_str.replace(",","");
					//let foodTypeSumPrice=Number(foodTypeSumPrice_str1.replace("￦",""));
					////console.log("foodTypeSumPrice ::" + foodTypeSumPrice);
					//let productprice = Number($('tr:nth-child('+j+') > td.priceDisplay > input').val());
					////console.log("productprice ::" + productprice);
					//let inputCnt = Number($('tr:nth-child('+j+') > td:nth-child(2) > div > input').val());
					//let resultTypeSumPrice = foodTypeSumPrice + productprice;						
					//$('tr:nth-child('+j+') > td:nth-child(4) > strong').text(numberWithCommas(resultTypeSumPrice));
					let productprice = Number($('tr:nth-child('+j+') > td.priceDisplay > input').val());
					let inputCnt = Number($('tr:nth-child('+j+') > td:nth-child(2) > div > input').val());
					let resultTypeSumPrice = inputCnt * productprice;						
					$('tr:nth-child('+j+') > td:nth-child(4) > strong').text("￦"+numberWithCommas(resultTypeSumPrice));
					
					let foodTotalPrice = calculAllFoodSumPrice();
					document.getElementById('foodsPriceTd').firstChild.nodeValue= "￦"+numberWithCommas(foodTotalPrice);
					
					let totPrice = calculTotalPrice();
					$('#sumPrice').text("￦"+numberWithCommas(totPrice));
				});
				//버리기 아이콘 정의(trash)
				$('tr:nth-child('+j+') > td.options > a > i').on('click',function(e){
					$('#'+(j-1)).hide();
					//let lengthSetting = Number(document.getElementById('cartListLength').value);
					//document.getElementById('cartListLength').value = lengthSetting;
					
					let totPrice = calculTotalPrice();
					let allFoodSumPrice = calculAllFoodSumPrice();
					$('#sumPrice').text("￦"+numberWithCommas(totPrice));
					$('#foodsPriceTd').text("￦"+numberWithCommas(allFoodSumPrice));
					cartUpdateAjaxRequestFunction();
					/*
					requestSettingCartList();
					let json_data = document.getElementById('itemObjectJSONList').value;
					console.log(json_data);
					//let json_Array = JSON.stringify(json_data);
					$.ajax({
						url: 'cartUpdateAjax',
						data : {'json_data':json_data},
						dataType: "String",
						async : true,
						success : function(result){
							if(result !=null){
								console.log("카트 업데이트 성공");
							}
						}
						
					});
					*/
					e.preventDefault();
				});
			}
			
			$('#person_increaseBtn').on('click',function(e){
				//let foodCnt = document.getElementById('foodCnt').value;
				let personsCntVal = document.getElementById('personsCntId').value;
				if(personsCntVal==''){
					//console.log("여긴 들어오니?");
					personsCntVal='1';
				}
				//console.log('personsCntVal :: ' + personsCntVal);
				
				//////////
				let personsCntNumber = Number(personsCntVal)+1;
				let capacity = Number(document.getElementById('seatCapacityLabel').firstChild.nodeValue)-1;
				if(capacity==-1){
					capacity=0;
					personsCntNumber=personsCntNumber-1;
				}
				document.getElementById('seatCapacityLabel').firstChild.nodeValue=capacity;
				////////////
				common_Person_Cnt(personsCntNumber);
				let totalPrice = calculTotalPrice();
				$('#sumPrice').text("￦"+numberWithCommas(totalPrice));
			});
			
			$('#person_decreaseBtn').on('click',function(e){
				//let foodCnt = document.getElementById('foodCnt').value;
				let personsCntVal = document.getElementById('personsCntId').value;
				//console.log('personsCntVal :: ' + personsCntVal);
				///////
				let personsCntNumber = Number(personsCntVal)-1;
				if(personsCntVal=='1'){
					personsCntNumber =1;
				}else{
					let capacity = Number(document.getElementById('seatCapacityLabel').firstChild.nodeValue)+1;
					document.getElementById('seatCapacityLabel').firstChild.nodeValue=capacity;
				}
				///////
				common_Person_Cnt(personsCntNumber);
				let totalPrice = calculTotalPrice();
				$('#sumPrice').text("￦"+numberWithCommas(totalPrice));
			});
			
			function common_Person_Cnt(personsCntNumber){
				//console.log('personsCntNumber ::' + personsCntNumber);
				document.getElementById('personsCntId').value = personsCntNumber;
				document.getElementById('personCntTd').firstChild.nodeValue = personsCntNumber;
				let depositPrice = calculDepositPrice();
				document.getElementById('depositPrice').firstChild.nodeValue = "￦"+numberWithCommas(depositPrice);
				
			}
			//가격 원화 표시
			let abc = document.querySelectorAll( 'td[price_list="price"]');
			let valueProd;
			for (var i = 0; i < abc.length; i++) {
				valueProd = abc[i].firstChild.nodeValue;
				let subValue = valueProd.substr(1).trim();			
				let completeVal = numberWithCommas(subValue);
				abc[i].firstChild.nodeValue = "￦"+ completeVal;
			}
			//가격 원화 표시2
			let abc2 = document.querySelectorAll( '.priceDisplay');
			let valueProd2;
			for (var i = 0; i < abc2.length; i++) {
				valueProd2 = abc2[i].firstChild.nodeValue;
				let subValue = valueProd2.substr(1).trim();			
				let completeVal = numberWithCommas(subValue);
				abc2[i].firstChild.nodeValue = "￦"+ completeVal;
			}
			//화요일 ban
			$('#datePicker').datepicker({
				format: "yyyy/mm/dd",
				beforeShowDay : function(date) {
					////console.log("date.getDay::"+date.getDay());

					let day = date.getDay();
					return day ==2 ? false:true;
				},
				startDate: 'today'
				
			});
			
			$('input.date-pick').datepicker('setDate', 'today');

			$('#datePicker').datepicker().on('changeDate', function(e) {
				//let dayStr = document.getElementById('datePicker').value;
				//console.log("day::"+ dayStr);
				//let daycustom = dayStr.substring(dayStr.indexOf(',')+1).trim();
				//console.log('daycustom ::' + daycustom);
				//요일 변경이 되었을시 input (#datePicker) 값 변경
				//$('#timePicker').timepicker('setDay',daycustom); timepicker가 클릭되었을시에 setDay값 셋팅으로 바꾸어주어 필요 없어짐
				$('#timePicker').val('9:00 AM');
				let dateStr = $('#datePicker').datepicker('getDate');
				console.log(dateStr);
				$('#day').val(dateStr);
				let date = $('#day').val();
				let day= date.substring(0,3);
				document.getElementById('day').value = day;
				//let daystr = $('day').val().substring(0,3);
				//$('day').val(daystr);
				$('#timePicker').timepicker('setDay',day);
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
			
			$('#timePicker').timepicker().on('hide.timepicker', function(e) {
			    seatCapacityCalcul_Ajax();
			    $('#seatingDiv').show();
			  });

			
			$('#timePicker').on("click", function(e) {
				//# 1, 3번은 이어진다.
				//1.날짜가 변경되면 timePicker Input 데이터도 9:00AM으로 초기화 된다.
				let timeStr = this.value; 

				//console.log('timeStr->'+timeStr);
				let time = timeStr.substring(0,1);
				//console.log('time->'+time);


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
				let dayStr = document.getElementById('day').value;

				//console.log("day::"+ dayStr);
				//let daycustom = dayStr.substring(dayStr.indexOf(',')+1).trim();
				//console.log('daycustom ::' + daycustom);

				
				//timepicker에 Day seting
				$('#timePicker').timepicker('setDay',dayStr);

			});
			
			
			
			
			

			$('a[collapseBtn="BookingState"]').on("click", function(e) {
				let show_reservation_window = $('#reservation_div_space').is(':visible');
				//console.log('show_reservation_window::'+ show_reservation_window);
				let depositPrice = calculDepositPrice();
				let foodsPrice = calculAllFoodSumPrice();
				let totalPrice = 0;
				
				console.log("totalPrice ::" +totalPrice);
				console.log("foodsPrice ::" +foodsPrice);
				//console.log("depositPrice ::" +depositPrice);
				
				
				//보여줄때 false 가나옴.
				
				if(show_reservation_window){	
					$('.reservation_info').hide();
					totalPrice = foodsPrice;
					document.getElementById('sumPrice').firstChild.nodeValue="￦"+numberWithCommas(totalPrice);
				}else{
					$('.reservation_info').show();
					totalPrice = foodsPrice + depositPrice;
					document.getElementById('sumPrice').firstChild.nodeValue="￦"+numberWithCommas(totalPrice);
					
				}
			});
			
			
			$('#checkOutBtn').click(function(e){
				
				let show_reservation_window = $('#reservation_div_space').is(':visible');
				//보내야할 정보 정리
				// 1.상품리스트를 json데이터화 -> [[pno, jdproductqty, jdproducttot],[....]
				// 2.상품 총금액 -> $(#sumPrice)
				// 3.예약의 경우 -> jdorderdate ,jdordertime, jdorderqty 정보를 전송 {총 7개 데이터를 다뤄야함}
				e.preventDefault();
				let itemlistCheck = itemListCheckFunction();
					
				if(itemlistCheck){
					checkOutControllFunction(show_reservation_window);
				}
					
				
			});
			
			$('#restaurants_all_list').on('click',function(e){
				e.preventDefault();
				cartUpdateAjaxRequestFunction();
				location.href ="restaurants_all_list";
			});
			
		});
		//on load end
		function itemListCheckFunction(){
			let isListExist = false;
			let isVisableArray = $('#listBody > tr').get();
			$.each(isVisableArray, function(index,elt){
				isListExist = $(elt).is(":visible");
				if(isListExist){
					return false;
				}
			});
			
			if(isListExist==false){
				window.alert("아이템 항목이 존재하지 않습니다.");
			}
			
			return isListExist;
		}
		
		function checkOutControllFunction(show_reservation_window){
			if(show_reservation_window){
				console.log("창이 열려있는경우");
				//deposit가격을 포함시켜야함
				let totalSeatBookingCnt = document.getElementById('personsCntId').value;
				let bookingDate = document.getElementById('datePicker').value;
				let bookingTime = document.getElementById('timePicker').value;
				//console.log('totalSeatBookingCnt ::' + totalSeatBookingCnt);
				//console.log('bookingDate ::' + bookingDate);
				//console.log('bookingTime ::' + bookingTime);
				
				document.getElementById('totalSeatBookingCnt').value = totalSeatBookingCnt;
				document.getElementById('bookingDate').value = bookingDate;
				document.getElementById('bookingTime').value = bookingTime;
				
				console.log('totalSeatBookingCnt ==>'+ totalSeatBookingCnt);
				console.log('bookingDate ==>'+ bookingDate);
				console.log('bookingTime ==>'+ bookingTime);
				
				requestSettingCartList();
				document.getElementById('totalFoodPrice').value = calculAllFoodSumPrice();
				document.getElementById('totalPrice').value = totalPrice_ChangeNumber();
				requestCheckout1();
			}else{
				console.log("창이 닫혀있는경우");
				//deposit가격을 포함시키지 말아야함.
				
				/* json 객체 만들기 참조
				let contact = new Object();
				contact.firstname = "Jesper";
				contact.surname = "Aaberg";
				contact.phone = ["555-0100", "555-0120"];
				console.log(contact);
				
				let memberfilter = new Array();
				memberfilter[0] = "surname";
				memberfilter[1] = "phone";
				//memberfilter[2] = "firstname";
				let jsonText = JSON.stringify(contact, memberfilter, "\t");
				console.log(jsonText);
				//결과
				{
					"surname": "Aaberg",
					"phone": [
						"555-0100",
						"555-0120"
					],
					"firstname": "Jesper"
				}
				
				*/
				requestSettingCartList();
				document.getElementById('totalPrice').value = totalPrice_ChangeNumber();
				document.getElementById('totalFoodPrice').value = calculAllFoodSumPrice();
				requestCheckout2();
			}
		}
		
		
		
		function requestCheckout1(){
			document.f.action = 'restaurant_payment_fixed_sidebar1';
			document.f.method = "POST";
			document.f.submit();
		}
		function requestCheckout2(){
			document.f.action = 'restaurant_payment_fixed_sidebar2';
			document.f.method = "POST";
			document.f.submit();
		}
		
		function totalPrice_ChangeNumber(){
			let totalChange1 = $('#sumPrice').text().replace(/,/g,'');
			let total = Number(totalChange1.replace('￦',''));
			//console.log("total::" + total);
			return total;
		}
		
		function requestSettingCartList(){
			//1.카트 tbody의 모든 item 정보를 리스트로
			let allList =$('#listBody > tr').get();
			//2.안보이는 리스트를 제거한 배열 생성
			let itemObjectList = new Array(); 
			
			
			$.each(allList, function(i, elt) {
				let visibleItem = $(elt).is(":visible")
				if(visibleItem){
					//console.log("보이는 아이템 갯수 :"+ i);
					///////////////////////////////////
					let pno = $(elt).attr('itemNo');
					//console.log("아이템 번호::"+ pno);
					
					///////////////////////////////////
					let jdproductqty = $(elt).find('td:nth-child(2) > div > input').val();
					//console.log("아이템 수량::"+ jdproductqty);
					
					//////////////////////////////////////////
					let numberChange = $(elt).find('td:nth-child(4) > strong').text();
					let numberChange1 = numberChange.replace(/,/g,"");
					let jdproducttot = numberChange1.replace("￦","");
					//console.log("아이템 별 총액::"+ jdproducttot);
					
					//console.log("-------------------");
					// 1.상품리스트를 json데이터화 -> [[pno, jdproductqty, jdproducttot],[....]
					// 1-1 객체 생성
					let itemObject = new Object();
					itemObject.pno = pno;
					itemObject.jdproductqty = jdproductqty;
					itemObject.jdproducttot = jdproducttot;
					
					// 1-2 배열에 객체를 mapping 할 키값을 선언
					let itemList = new Array();
					itemList[0] = "pno";
					itemList[1] = "jdproductqty";
					itemList[2] = "jdproducttot";
					
					// 2. 배열과 객체의 값을 매핑
					let jsonText = JSON.stringify(itemObject, itemList, "\t");
					//console.log(jsonText);
					itemObjectList.push(jsonText);
				}
			});
			//console.log(itemObjectList);
			document.getElementById('itemObjectJSONList').value = "["+itemObjectList+"]";
			console.log("$(itemObjectJSONList).val()::"+$('#itemObjectJSONList').val());
		}
		
		function cartUpdateAjaxRequestFunction(){
			requestSettingCartList();
			let json_data = document.getElementById('itemObjectJSONList').value;
			console.log(json_data);
			//let json_Array = JSON.stringify(json_data);
			$.ajax({
				url: 'cartUpdateAjax',
				data : {'json_data':json_data},
				dataType: "String",
				async : true,
				success : function(result){
					if(result !=null){
						console.log("카트 업데이트 성공");
					}
				}
				
			});
		}
	</script>
		

</body>

</html>