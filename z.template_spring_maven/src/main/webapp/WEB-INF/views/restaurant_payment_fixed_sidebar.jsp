<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>   

	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->

	<section id="hero_2">
		<div class="intro_title">
			<h1>Place your order</h1>
			<div class="bs-wizard row">

				<div class="col-4 bs-wizard-step complete">
					<div class="text-center bs-wizard-stepnum">Your cart</div>
					<div class="progress">
						<div class="progress-bar"></div>
					</div>
					<a href="cart.html" class="bs-wizard-dot"></a>
				</div>

				<div class="col-4 bs-wizard-step active">
					<div class="text-center bs-wizard-stepnum">Your details</div>
					<div class="progress">
						<div class="progress-bar"></div>
					</div>
					<a href="#" class="bs-wizard-dot"></a>
				</div>

				<div class="col-4 bs-wizard-step disabled">
					<div class="text-center bs-wizard-stepnum">Finish!</div>
					<div class="progress">
						<div class="progress-bar"></div>
					</div>
					<a href="restaurant_confirmation_fixed_sidebar" class="bs-wizard-dot"></a>
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

		<form id="checkForm" name="checkForm" action="restaurant_confirmation_fixed_sidebar" method="POST">
		<div class="container margin_60">
			<div class="row">
				
					
					
					<div class="col-lg-8 add_bottom_15">
						<div class="form_title">
							<h3><strong>1</strong>Your Details</h3>
							<p>
								Mussum ipsum cacilds, vidis litro abertis.
							</p>
						</div>
						<div class="step">
							
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label>Email</label>
										<input type="email" id="jemail" name="jemail" class="form-control">
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<label>Confirm email</label>
										<input type="email" id="jemail_2" name="jemail_2" class="form-control">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label>Telephone</label>
										<input type="text" id="jphoneno" name="jphoneno" class="form-control">
									</div>
								</div>
							</div>
						</div>
						<!--End step -->
	
						<div class="form_title">
							<h3><strong>2</strong>Payment Information</h3>
							<p>
								Mussum ipsum cacilds, vidis litro abertis.
							</p>
						</div>
						<div class="step">
							<div class="form-group">
								<label>Name on card</label>
								<input type="text" class="form-control" id="jcardowner" name="jcardowner">
							</div>
							<div class="row">
								<div class="col-md-6 col-sm-12">
									<div class="form-group">
										<label>Card number</label>
										<input type="text" id="jcardno" name="jcardno" class="form-control">
									</div>
								</div>
								<div class="col-md-6 col-sm-12">
									<img src="${pageContext.request.contextPath}/resources/img/cards.png" width="207" height="43" alt="Cards" class="cards">
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Expiration date</label>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<input type="text" id="expire_month" name="expire_month" class="form-control" placeholder="MM">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<input type="text" id="expire_year" name="expire_year" class="form-control" placeholder="Year">
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Security code</label>
										<div class="row">
											<div class="col-4">
												<div class="form-group">
													<input type="text" id="jcardcvc" name="jcardcvc" class="form-control" placeholder="jcardcvc">
												</div>
											</div>
											<div class="col-8">
												<img src="${pageContext.request.contextPath}/resources/img/icon_jcardcvc.gif" width="50" height="29" alt="jcardcvc"><small>Last 3 digits</small>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--End row -->
	
							<hr>
	
							<h4>Or checkout with Paypal</h4>
							<p>
								Lorem ipsum dolor sit amet, vim id accusata sensibus, id ridens quaeque qui. Ne qui vocent ornatus molestie, reque fierent dissentiunt mel ea.
							</p>
							<p>
								<img src="${pageContext.request.contextPath}/resources/img/paypal_bt.png" alt="Image">
							</p>
						</div>
						<!--End step -->
	
						<div class="form_title">
							<h3><strong>3</strong>Billing Address</h3>
							<p>
								Mussum ipsum cacilds, vidis litro abertis.
							</p>
						</div>
						<div class="step">
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label>Country</label>
										<select class="form-control" name="jCountryCheck" id="jCountryCheck">
											<option value="" selected>Select your country</option>
											<option value="Europe">Europe</option>
											<option value="United states">United states</option>
											<option value="Asia">Asia</option>
										</select>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label>Street line 1</label>
										<input type="text" id="jstreetaddr" name="jstreetaddr" class="form-control">
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<label>Street line 2</label>
										<input type="text" id="jstreetnmg" name="jstreetnmg" class="form-control">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 col-sm-12">
									<div class="form-group">
										<label>City</label>
										<input type="text" id="jcity" name="jcity" class="form-control">
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label>State</label>
										<input type="text" id="jstate" name="jstate" class="form-control">
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="form-group">
										<label>Postal code</label>
										<input type="text" id="jzipcode" name="jzipcode" class="form-control">
									</div>
								</div>
							</div>
							<!--End row -->
						</div>
						<!--End step -->
	
						<div id="policy">
							<h4>Cancellation policy</h4>
							<div class="form-group">
								<label>
									<input type="checkbox" name="policy_terms" id="policy_terms">I accept terms and conditions and general policy.</label>
							</div>
							<a href="restaurant_confirmation_fixed_sidebar" class="btn_1 green medium">Book now</a>
						</div>
					</div>
				
				
				
				<aside class="col-lg-4" id="sidebar">
					<div class="theiaStickySidebar">
						<div class="box_style_1" id="booking_box">
							<h3 class="inner">- Summary -</h3>
							<table class="table table_summary">
								<tbody>
											<input type = "hidden" name = "jcountry" id="jcountry" value="">
											<input type = "hidden" name = "totalFoodPrice" id="totalFoodPrice" value="${totalFoodPrice}">
									<c:if test="${not empty bookingDate ||not empty bookingTime ||not empty totalSeatBookingCnt}">
											<input type = "hidden" name = "totalDepositCost" id="totalDepositCost" value="${totalDepositCost}">
											<input type="hidden" id="bookingDate" name="bookingDate" value="${bookingDate}">
											<input type="hidden" id="bookingTime" name="bookingTime" value="${bookingTime}">
											<input type = "hidden" name = "totalSeatBookingCnt" id="totalSeatBookingCnt" value="${totalSeatBookingCnt}">
											<tr>
												<td>
													Reservation Persons
												</td>
												<td class="text-right">
													${totalSeatBookingCnt}
													
												</td>
											</tr>
											<tr>
												<td>
													Deposit cost
												</td>
												<td class="text-right" price_list="price">
													${totalDepositCost}
													
												</td>
											</tr>
										
									</c:if>
									
									<tr>
										<td>
											Total Food Price
										</td>
										<td class="text-right" price_list="price">
											${totalFoodPrice}
											
										</td>
									</tr>
									<tr class="total">
										<td>
											Total cost
										</td>
										<td class="text-right" price_list="price">
											${totalPrice}
											
										</td>
									</tr>
								</tbody>
							</table>
							<!-- 
							<a class="btn_full" href="restaurant_confirmation_fixed_sidebar">Book now</a>
							 -->
							<input type="submit" id="submit" class="btn_full" value = "Book now">
							<a class="btn_full_outline" href="restaurants_all_list"><i class="icon-right"></i> Continue shopping</a>
						</div>
						<div class="box_style_4">
							<i class="icon_set_1_icon-57"></i>
							<h4>Need <span>Help?</span></h4>
							<a href="tel://004542344599" class="phone">+45 423 445 99</a>
							<small>Monday to Friday 9.00am - 7.30pm</small>
						</div>
					</div>
					<!--End sticky -->
				</aside>
				
			</div>
			<!--End row -->
		<input type="hidden" id= "isCart" name = "isCart" value= "${isCart}">
		</div>
		</form>
		<!--End container -->
	</main>
	<!-- End main -->

	<!-- Footer================================================== -->
	<jsp:include page="common_footer_2.jsp"/>
	<!-- End Footer -->

	<!-- Fixed sidebar -->
	<script src="${pageContext.request.contextPath}/resources/js/theia-sticky-sidebar.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.validate.js"></script>
	<script>
		jQuery('#sidebar').theiaStickySidebar({
			additionalMarginTop: 80
		});
	</script>
	
	<!-- Check box and radio style iCheck -->
	<script>
		$('input').iCheck({
		   checkboxClass: 'icheckbox_square-grey',
		   radioClass: 'iradio_square-grey'
		 });
		
		function numberWithCommas(x) {
		    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}	
		
		
		$(function(){
			
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
			
			let email1 = document.getElementById('jemail').value;
			let email2 = document.getElementById('jemail_2').value;
			let param = "email1="+email1+"&email2"+email2;
			
			
			$('#jCountryCheck').on('change',function(e){
				let selectOption= $('#jCountryCheck').val();
				console.log(selectOption);
				//$('#jcountry').val(selectOption);
				document.getElementById('jcountry').value = selectOption;
			});
			
			/*
			$('#submit').on('click',function(e){
				
				
				
				
				e.preventDefault();
			});
			*/
			/*
			$('#checkForm').validate({
					rules :{
						firstname_booking :{
							required: true,
							maxlength : 20
						},
						lastname_booking :{
							required: true,
							maxlength : 20
						},
						jemail :{
							required: true,
							minlength : 7,
							maxlength : 20 
						},
						jemail_2 :{
							required: true,
							minlength : 7,
							maxlength : 20, 
							remote : {
								url : 'emailCheck',
								type : 'GET',
								data : param
							}
						},
						jphoneno :{
							required: true,
							minlength : 8,
							maxlength : 15 
						},
						jcardowner :{
							required: true,
							minlength : 8,
							maxlength : 20
						},
						jcardno: {
							required: true,
							minlength : 8,
							maxlength : 20
						},
						expire_month :{
							required: true,
							maxlength : 2
						},
						expire_year :{
							required: true,
							maxlength : 2
						},
						jcardcvc :{
							required: true,
							maxlength : 3
						},
						country:{ 
							valueNotEquals : "Select your country"
						},
						jstreetaddr :{
							required: true,
							minlength : 10,
							maxlength : 40
						},
						jstreetnmg :{
							required: true,
							minlength : 10,
							maxlength : 40
						},
						jcity:{
							required: true,
							maxlength : 20
						},
						jstate:{
							required: true,
							maxlength : 20
						},
						jzipcode:{
							required: true,
							maxlength : 20
						},
						policy_terms: "required"
						
					},
					submitHandler: function(form) { //모든 항목이 통과되면 호출됨 ★showError 와 함께 쓰면 실행하지않는다★
						form.submit();
					}


				});
			
				*/
			
			
		});
		
		
		
	</script>
	

</body>

</html>