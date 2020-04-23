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

				<div class="col-4 bs-wizard-step complete">
					<div class="text-center bs-wizard-stepnum">Your cart</div>
					<div class="progress">
						<div class="progress-bar"></div>
					</div>
					<a href="cart_services" class="bs-wizard-dot"></a>
				</div>

				<div class="col-4 bs-wizard-step active">
					<div class="text-center bs-wizard-stepnum">Your details</div>
					<div class="progress">
						<div class="progress-bar"></div>
					</div>
					<a href="#0" class="bs-wizard-dot"></a>
				</div>

				<div class="col-4 bs-wizard-step disabled">
					<div class="text-center bs-wizard-stepnum">Finish!</div>
					<div class="progress">
						<div class="progress-bar"></div>
					</div>
					<a href="confirmation_fixed_sidebar.html" class="bs-wizard-dot"></a>
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
					<li><a href="cart_services">Cart</a>
					</li>
					<li>Payment</li>
				</ul>
			</div>
		</div>
		<!-- End position -->

		<form id="payment_form" method="POST" action="jumun_action">
		<div class="container margin_60">
			<div class="row">
				<div class="col-lg-8 add_bottom_15">
					<div class="form_title">
						<h3><strong>1</strong>Your Details</h3>
						<p>
							Please tell us the name of the guest staying at the hotel as it appears on the ID that they’ll present at check-in.
						</p>
					</div>
					<div class="step">
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label>First name</label>
									<input type="text" class="form-control" id="firstname_booking" name="firstname_booking">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>Last name</label>
									<input type="text" class="form-control" id="lastname_booking" name="lastname_booking">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label>Email</label>
									<input type="email" id="email_booking" name="email_booking" class="form-control">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>Confirm email</label>
									<input type="email" id="email_booking_2" name="email_booking_2" class="form-control">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label>Telephone</label>
									<input type="text" id="telephone_booking" name="telephone_booking" class="form-control">
								</div>
							</div>
						</div>
					</div>
					<!--End step -->

					<div class="form_title">
						<h3><strong>2</strong>Payment Information</h3>
						<p>
							Your booking is safe and secure.
						</p>
					</div>
					<div class="step">
						<div class="form-group">
							<label>Name on card</label>
							<input type="text" class="form-control" id="name_card_bookign" name="name_card_booking">
						</div>
						<div class="row">
							<div class="col-md-6 col-sm-12">
								<div class="form-group">
									<label>Card number</label>
									<input type="text" id="card_number" name="card_number" class="form-control">
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
											<input type="text" id="expire_month" name="expiry_date" class="form-control" placeholder="MM">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<input type="text" id="expire_year" name="expiry_date" class="form-control" placeholder="Year">
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
												<input type="text" id="cvv" name="cvv" class="form-control" placeholder="CVV">
											</div>
										</div>
										<div class="col-8">
											<img src="${pageContext.request.contextPath}/resources/img/icon_ccv.gif" width="50" height="29" alt="ccv"><small>Last 3 digits</small>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--End row -->

						<hr>

						<h4>Or checkout with Paypal</h4>
						<p>
							You will be redirected to a third party website to complete the payment process.
						</p>
						<p>
							<a href="https://www.paypal.com/signin">
						    	<img src="${pageContext.request.contextPath}/resources/img/paypal_bt.png" alt="Image">
							</a>
						<!-- 
							<img src="${pageContext.request.contextPath}/resources/img/paypal_bt.png" alt="Image">  -->
						</p>
					</div>
					<!--End step -->

					<div class="form_title">
						<h3><strong>3</strong>Billing Address</h3>
						<p>
							We’ll use this to verify your credit card details.<br>
							※ We only accept credit cards in USA and the counties of Asian and European continents.
						</p>
					</div>
					<div class="step">
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label>Country</label>
									<select class="form-control" name="country" id="country">
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
									<input type="text" id="street_1" name="street_1" class="form-control">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>Street line 2</label>
									<input type="text" id="street_2" name="street_2" class="form-control">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 col-sm-12">
								<div class="form-group">
									<label>City</label>
									<input type="text" id="city_booking" name="city_booking" class="form-control">
								</div>
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="form-group">
									<label>State</label>
									<input type="text" id="state_booking" name="state_booking" class="form-control">
								</div>
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="form-group">
									<label>Postal code</label>
									<input type="text" id="postal_code" name="postal_code" class="form-control">
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
						<a href="jumun_action" class="btn_1 green medium">Book now</a>
						<input type="button" class="btn_1 green medium" value="Book now" id="submitPayment">
					</div>
				</div>

				<aside class="col-lg-4" id="sidebar">
					<div class="theiaStickySidebar">
						<div class="box_style_1" id="booking_box">
							<h3 class="inner">- Summary -</h3>
							<table class="table table_summary">
								<tbody>
									<tr>
										<td>
											Dates
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
									</tr>
									<tr>
										<td>
											Tour Total
										</td>
										<td class="text-right">
											<div id="cartTotal" value="${cartTotal/10000}">
												￦&nbsp;${cartTotal/10000}만
											</div>
										</td>
									</tr>
									<tr>
										<td>
											Options
										</td>
										<td class="text-right">
											$0
										</td>
									</tr>
									<tr>
										<td>
											Insurance
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
							<a class="btn_full" href="jumun_action">Book now</a>
							<a class="btn_full_outline" href="tour_list"><i class="icon-right"></i> Continue shopping</a>
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
	</script>
	
	<script>
		$(document).ready(function () {
		
			$.validator.addMethod("cardExp", function(value, element, params) {
				var minMonth = new Date().getMonth() + 1;
				var minYear = new Date().getFullYear();
				var month = parseInt($(params.month).val(), 10);
				var year = parseInt($(params.year).val(), 10);
				return (!month || !year || year > minYear || (year === minYear && month >= minMonth));
			}, 'Your credit card expiration date is invalid.');
			
			$.validator.addMethod("letters", function(value, element) {
				return this.optional(element) || /^[a-z]+$/i.test(value);
			}, "Please enter alphabet characters only.");
			
			$.validator.addMethod("creditCard", function (value, element) {
				if (/^[0-9\-]+$/i.test(value)) {
					return true;
				} else {
					return false;
				};
			}, "Please enter numbers and '-' only.");
			
			$.validator.addMethod("phone", function (value, element) {
				if (/^[0-9\+\-]+$/i.test(value)) {
					return true;
				} else {
					return false;
				};
			}, "Please enter numbers, '+', and '-' only.");
				
			$('#payment_form').validate({
	            // 테스트를 위하여 유효성 검사가 완료되어 submit을 처리하지 않음.(값이 true일경우)
	            debug : true,
	            //검사할 필드와 검사 항목의 나열
	            rules: {
	            	firstname_booking: {
	                    required:true,
	                    letters:true
	                },
	                lastname_booking: {
	                    required:true,
	                    letters:true
	                },
	                email_booking: {
	                	required:true,
	                	email:true  // email 체크해주는 플러그인 있어야함
	                },
	                email_booking_2: {
	                    required:true,
	                    equalTo:'#email_booking'
	                },               
	                telephone_booking: {
	                    required:true,
	                    rangelength: [8,20],  // 길이범위: 8~20
	                    phone:true
	                },
	                name_card_booking: {
	                    required:true,
	                    letters:true
	                },
	                card_number: {
	                    required:true, 
	                    rangelength:[13,19],
	                    creditCard: true
	                },
	                expire_month: {
	                    required:true, 
	                    range:[01,12],
	                	rangelength:[2,2]
	                },
	                expire_year: {
	                    required:true, 
	                    range:[00,99],
	                	rangelength:[2,2]
	                },
	                expiry_date: {
	                	cardExp: {
	                		month: '#expire_month',
	                		year: '#expire_year'
	                	}
	                },
	                cvv: {
						required: true,
	                    range:[001,999],
	                	rangelength:[3,3]
	                },
	                country: {
	                    required: true
	                },
	                street_1: {
	                    required: true,
	                    minlength:5
	                },
	                city_booking: {
	                	required: true
	                },
	                postal_code: {
	                    required: true
	                },
	                policy_terms: {
	                    required: true
	                }
				},
	            messages:  {
	            	firstname_booking: {
	                    required:"Please enter your first name."
	                },
	                lastname_booking: {
	                    required:"Please enter your last name."
	                },
	                email_booking: {
	                	required:"Please enter your email.",
	                	email:"Please enter a valid format of an email address."
	                },
	                email_booking_2: {
	                    equalTo:"Your email address doesn't match."
	                },               
	                telephone_booking: {
	                    required:"Please enter your phone number.",
	                    rangelength:"Your phone number must be 8-20 digits.",
	                    phone:"Phone number can only include 0-9, +, and -."
	                },
	                name_card_booking: {
	                    required:"Please enter the name on your credit card."
	                },
	                card_number: {
	                    required:"Please enter your credit card number.",
	                    rangelength:"Your card number must be 13-19 digits.",
	                    creditCard:"Credit card number can only include 0-9 and -."
	                },
	                expire_month: {
	                    required:"Please enter the expiration month of your credit card.", 
	                    range:"Please enter a valid month.",
	                	rangelength:"The expiration month must be a two-digit number."
	                },
	                expire_year: {
	                    required:"Please enter the expiration year of your credit card.",
	                    range:"Please enter a valid year.",
	                	rangelength:"The expiration year must be a two-digit number."
	                },
	                cvv: {
						required:"Please enter the CVV.",
	                    range:"Please enter a valid CVV.",
	                	rangelength:"CVV must be a three-digit number."
	                },
	                country: {
	                    required:"Please select the country of issue for your credit card."
	                },
	                street_1: {
	                    required:"Please enter your street address.",
	                    minlength:"Your street address seems invalid. Please check again."
	                },
	                city_booking: {
	                	required:"Please enter your city."
	                },
	                postal_code: {
	                    required:"Please enter your postal code."
	                },
	                policy_terms: {
	                    required: "Please agree to our cancellation policy in order to proceed."
	                }
				},
	
	            /*alert 대화상자를 통한 에러메시지 표시를 위한 옵션설정*/
	            
	            //키보드에 의한 검사 해제
	            onkeyup : false,
	            //체크박스나 라디오 버튼 클릭시마다 검사 해제
	            onclick : false,
	            // 포커스가 빠져나올 경우의 검사 해제
	            onfocusout : false, 
	            // 에러 발생시 이벤트를 가로 챔
	            showErrors : function(errorMap, errorList) {
	                //에러메시지 출력
	                //console.log(errorMap);
	                //console.log(errorList);
	                if(errorList.length) {
	                    alert(errorList[0].message);
	                }
	
	            }           
	        });
			
		});
	</script>

</body>

</html>