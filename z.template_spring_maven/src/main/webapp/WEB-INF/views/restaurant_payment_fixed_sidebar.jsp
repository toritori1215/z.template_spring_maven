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
	<!-- CUSTOM CSS -->
	<link href="${pageContext.request.contextPath}/resources/z.SiliconVillage/css/jumun.css" rel="stylesheet">
	
	
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
					<!-- 
					<a href="restaurant_confirmation_fixed_sidebar" class="bs-wizard-dot"></a>
					 -->
					<input type="submit" id="submit" class="btn_1 green medium" value = "Book now">
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
								We’ll use this to verify your credit card details.<br>
							</p>
						</div>
						<div class="step">
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label>Country</label>
										<select class="form-control" name="jCountryCheck" id="jCountryCheck">
											<option value="" selected>Select your country</option>
											<option disabled>──────────</option>
											<option value="South Korea">South Korea</option>
							                <option value="Canada">Canada</option>
							                <option value="United States">United States</option>
											<option disabled>──────────</option>
											<option value="Afghanistan">Afghanistan</option>
							                <option value="Åland Islands">Åland Islands</option>
							                <option value="Albania">Albania</option>
							                <option value="Algeria">Algeria</option>
							                <option value="American Samoa">American Samoa</option>
							                <option value="Andorra">Andorra</option>
							                <option value="Angola">Angola</option>
							                <option value="Anguilla">Anguilla</option>
							                <option value="Antarctica">Antarctica</option>
							                <option value="Antigua and Barbuda">Antigua and Barbuda</option>
							                <option value="Argentina">Argentina</option>
							                <option value="Armenia">Armenia</option>
							                <option value="Aruba">Aruba</option>
							                <option value="Australia">Australia</option>
							                <option value="Austria">Austria</option>
							                <option value="Azerbaijan">Azerbaijan</option>
							                <option value="Bahamas">Bahamas</option>
							                <option value="Bahrain">Bahrain</option>
							                <option value="Bangladesh">Bangladesh</option>
							                <option value="Barbados">Barbados</option>
							                <option value="Belarus">Belarus</option>
							                <option value="Belgium">Belgium</option>
							                <option value="Belize">Belize</option>
							                <option value="Benin">Benin</option>
							                <option value="Bermuda">Bermuda</option>
							                <option value="Bhutan">Bhutan</option>
							                <option value="Bolivia">Bolivia</option>
							                <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
							                <option value="Botswana">Botswana</option>
							                <option value="Bouvet Island">Bouvet Island</option>
							                <option value="Brazil">Brazil</option>
							                <option value="British Indian Ocean Territory">British Indian Ocean Territory</option>
							                <option value="Brunei Darussalam">Brunei Darussalam</option>
							                <option value="Bulgaria">Bulgaria</option>
							                <option value="Burkina Faso">Burkina Faso</option>
							                <option value="Burundi">Burundi</option>
							                <option value="Cambodia">Cambodia</option>
							                <option value="Cameroon">Cameroon</option>
							                <option value="Cape Verde">Cape Verde</option>
							                <option value="Cayman Islands">Cayman Islands</option>
							                <option value="Central African Republic">Central African Republic</option>
							                <option value="Chad">Chad</option>
							                <option value="Chile">Chile</option>
							                <option value="China">China</option>
							                <option value="Christmas Island">Christmas Island</option>
							                <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
							                <option value="Colombia">Colombia</option>
							                <option value="Comoros">Comoros</option>
							                <option value="Congo">Congo</option>
							                <option value="Congo, The Democratic Republic of The">Congo, The Democratic Republic of The</option>
							                <option value="Cook Islands">Cook Islands</option>
							                <option value="Costa Rica">Costa Rica</option>
							                <option value="Cote D'ivoire">Cote D'ivoire</option>
							                <option value="Croatia">Croatia</option>
							                <option value="Cuba">Cuba</option>
							                <option value="Cyprus">Cyprus</option>
							                <option value="Czech Republic">Czech Republic</option>
							                <option value="Denmark">Denmark</option>
							                <option value="Djibouti">Djibouti</option>
							                <option value="Dominica">Dominica</option>
							                <option value="Dominican Republic">Dominican Republic</option>
							                <option value="Ecuador">Ecuador</option>
							                <option value="Egypt">Egypt</option>
							                <option value="El Salvador">El Salvador</option>
							                <option value="Equatorial Guinea">Equatorial Guinea</option>
							                <option value="Eritrea">Eritrea</option>
							                <option value="Estonia">Estonia</option>
							                <option value="Ethiopia">Ethiopia</option>
							                <option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option>
							                <option value="Faroe Islands">Faroe Islands</option>
							                <option value="Fiji">Fiji</option>
							                <option value="Finland">Finland</option>
							                <option value="France">France</option>
							                <option value="French Guiana">French Guiana</option>
							                <option value="French Polynesia">French Polynesia</option>
							                <option value="French Southern Territories">French Southern Territories</option>
							                <option value="Gabon">Gabon</option>
							                <option value="Gambia">Gambia</option>
							                <option value="Georgia">Georgia</option>
							                <option value="Germany">Germany</option>
							                <option value="Ghana">Ghana</option>
							                <option value="Gibraltar">Gibraltar</option>
							                <option value="Greece">Greece</option>
							                <option value="Greenland">Greenland</option>
							                <option value="Grenada">Grenada</option>
							                <option value="Guadeloupe">Guadeloupe</option>
							                <option value="Guam">Guam</option>
							                <option value="Guatemala">Guatemala</option>
							                <option value="Guernsey">Guernsey</option>
							                <option value="Guinea">Guinea</option>
							                <option value="Guinea-bissau">Guinea-bissau</option>
							                <option value="Guyana">Guyana</option>
							                <option value="Haiti">Haiti</option>
							                <option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option>
							                <option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option>
							                <option value="Honduras">Honduras</option>
							                <option value="Hong Kong">Hong Kong</option>
							                <option value="Hungary">Hungary</option>
							                <option value="Iceland">Iceland</option>
							                <option value="India">India</option>
							                <option value="Indonesia">Indonesia</option>
							                <option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option>
							                <option value="Iraq">Iraq</option>
							                <option value="Ireland">Ireland</option>
							                <option value="Isle of Man">Isle of Man</option>
							                <option value="Israel">Israel</option>
							                <option value="Italy">Italy</option>
							                <option value="Jamaica">Jamaica</option>
							                <option value="Japan">Japan</option>
							                <option value="Jersey">Jersey</option>
							                <option value="Jordan">Jordan</option>
							                <option value="Kazakhstan">Kazakhstan</option>
							                <option value="Kenya">Kenya</option>
							                <option value="Kiribati">Kiribati</option>
							                <option value="Korea, Democratic People's Republic of">Korea, Democratic People's Republic of</option>
							                <option value="Kuwait">Kuwait</option>
							                <option value="Kyrgyzstan">Kyrgyzstan</option>
							                <option value="Lao People's Democratic Republic">Lao People's Democratic Republic</option>
							                <option value="Latvia">Latvia</option>
							                <option value="Lebanon">Lebanon</option>
							                <option value="Lesotho">Lesotho</option>
							                <option value="Liberia">Liberia</option>
							                <option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
							                <option value="Liechtenstein">Liechtenstein</option>
							                <option value="Lithuania">Lithuania</option>
							                <option value="Luxembourg">Luxembourg</option>
							                <option value="Macao">Macao</option>
							                <option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav Republic of</option>
							                <option value="Madagascar">Madagascar</option>
							                <option value="Malawi">Malawi</option>
							                <option value="Malaysia">Malaysia</option>
							                <option value="Maldives">Maldives</option>
							                <option value="Mali">Mali</option>
							                <option value="Malta">Malta</option>
							                <option value="Marshall Islands">Marshall Islands</option>
							                <option value="Martinique">Martinique</option>
							                <option value="Mauritania">Mauritania</option>
							                <option value="Mauritius">Mauritius</option>
							                <option value="Mayotte">Mayotte</option>
							                <option value="Mexico">Mexico</option>
							                <option value="Micronesia, Federated States of">Micronesia, Federated States of</option>
							                <option value="Moldova, Republic of">Moldova, Republic of</option>
							                <option value="Monaco">Monaco</option>
							                <option value="Mongolia">Mongolia</option>
							                <option value="Montenegro">Montenegro</option>
							                <option value="Montserrat">Montserrat</option>
							                <option value="Morocco">Morocco</option>
							                <option value="Mozambique">Mozambique</option>
							                <option value="Myanmar">Myanmar</option>
							                <option value="Namibia">Namibia</option>
							                <option value="Nauru">Nauru</option>
							                <option value="Nepal">Nepal</option>
							                <option value="Netherlands">Netherlands</option>
							                <option value="Netherlands Antilles">Netherlands Antilles</option>
							                <option value="New Caledonia">New Caledonia</option>
							                <option value="New Zealand">New Zealand</option>
							                <option value="Nicaragua">Nicaragua</option>
							                <option value="Niger">Niger</option>
							                <option value="Nigeria">Nigeria</option>
							                <option value="Niue">Niue</option>
							                <option value="Norfolk Island">Norfolk Island</option>
							                <option value="Northern Mariana Islands">Northern Mariana Islands</option>
							                <option value="Norway">Norway</option>
							                <option value="Oman">Oman</option>
							                <option value="Pakistan">Pakistan</option>
							                <option value="Palau">Palau</option>
							                <option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option>
							                <option value="Panama">Panama</option>
							                <option value="Papua New Guinea">Papua New Guinea</option>
							                <option value="Paraguay">Paraguay</option>
							                <option value="Peru">Peru</option>
							                <option value="Philippines">Philippines</option>
							                <option value="Pitcairn">Pitcairn</option>
							                <option value="Poland">Poland</option>
							                <option value="Portugal">Portugal</option>
							                <option value="Puerto Rico">Puerto Rico</option>
							                <option value="Qatar">Qatar</option>
							                <option value="Reunion">Reunion</option>
							                <option value="Romania">Romania</option>
							                <option value="Russian Federation">Russian Federation</option>
							                <option value="Rwanda">Rwanda</option>
							                <option value="Saint Helena">Saint Helena</option>
							                <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
							                <option value="Saint Lucia">Saint Lucia</option>
							                <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
							                <option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</option>
							                <option value="Samoa">Samoa</option>
							                <option value="San Marino">San Marino</option>
							                <option value="Sao Tome and Principe">Sao Tome and Principe</option>
							                <option value="Saudi Arabia">Saudi Arabia</option>
							                <option value="Senegal">Senegal</option>
							                <option value="Serbia">Serbia</option>
							                <option value="Seychelles">Seychelles</option>
							                <option value="Sierra Leone">Sierra Leone</option>
							                <option value="Singapore">Singapore</option>
							                <option value="Slovakia">Slovakia</option>
							                <option value="Slovenia">Slovenia</option>
							                <option value="Solomon Islands">Solomon Islands</option>
							                <option value="Somalia">Somalia</option>
							                <option value="South Africa">South Africa</option>
							                <option value="South Georgia and The South Sandwich Islands">South Georgia and The South Sandwich Islands</option>
							                <option value="Spain">Spain</option>
							                <option value="Sri Lanka">Sri Lanka</option>
							                <option value="Sudan">Sudan</option>
							                <option value="Suriname">Suriname</option>
							                <option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
							                <option value="Swaziland">Swaziland</option>
							                <option value="Sweden">Sweden</option>
							                <option value="Switzerland">Switzerland</option>
							                <option value="Syrian Arab Republic">Syrian Arab Republic</option>
							                <option value="Taiwan, Province of China">Taiwan, Province of China</option>
							                <option value="Tajikistan">Tajikistan</option>
							                <option value="Tanzania, United Republic of">Tanzania, United Republic of</option>
							                <option value="Thailand">Thailand</option>
							                <option value="Timor-leste">Timor-leste</option>
							                <option value="Togo">Togo</option>
							                <option value="Tokelau">Tokelau</option>
							                <option value="Tonga">Tonga</option>
							                <option value="Trinidad and Tobago">Trinidad and Tobago</option>
							                <option value="Tunisia">Tunisia</option>
							                <option value="Turkey">Turkey</option>
							                <option value="Turkmenistan">Turkmenistan</option>
							                <option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
							                <option value="Tuvalu">Tuvalu</option>
							                <option value="Uganda">Uganda</option>
							                <option value="Ukraine">Ukraine</option>
							                <option value="United Arab Emirates">United Arab Emirates</option>
							                <option value="United Kingdom">United Kingdom</option>
							                <option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option>
							                <option value="Uruguay">Uruguay</option>
							                <option value="Uzbekistan">Uzbekistan</option>
							                <option value="Vanuatu">Vanuatu</option>
							                <option value="Venezuela">Venezuela</option>
							                <option value="Viet Nam">Viet Nam</option>
							                <option value="Virgin Islands, British">Virgin Islands, British</option>
							                <option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option>
							                <option value="Wallis and Futuna">Wallis and Futuna</option>
							                <option value="Western Sahara">Western Sahara</option>
							                <option value="Yemen">Yemen</option>
							                <option value="Zambia">Zambia</option>
							                <option value="Zimbabwe">Zimbabwe</option>
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
							<input type="submit" class="btn_full" value="Book now" id="submit_form">
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
							<input type="submit" class="btn_full" value="Book now" id="submit_form">
							

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
			
			///////////////////////////////
			$.validator.addMethod("cardExp", function(value, element, params) {
				var minMonth = new Date().getMonth() + 1;
				var minYear = new Date().getFullYear();
				var month = parseInt($(params.month).val(), 10);
				var year = parseInt($(params.year).val(), 10);
				return (!month || !year || year > minYear || (year === minYear && month >= minMonth));
			}, 'Please enter a valid expiration date.');
			
			$.validator.addMethod("letters", function(value, element) {
				return this.optional(element) || /^[a-zA-Z ]+$/i.test(value);
			}, "Please enter alphabets and space only.");
			
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
			/////////////////////////////
			//checkForm
			$('#checkForm').validate({
	            rules: {
	            	jemail: {
	                	required:true,
	                	email:true
	                },
	                jemail_2: {
	                    required:true,
	                    equalTo:'#jemail'
	                },               
	                jphoneno: {
	                    required:true,
	                    rangelength: [8,20],
	                    phone:true
	                },
	                jcardowner: {
	                    required:true,
	                    letters:true
	                },
	                jcardno: {
	                    required:true, 
	                    rangelength:[13,19],
	                    creditCard: true
	                },
	                expire_month: {
	                    required:true, 
	                    range:[01,12]
	                },
	                expire_year: {
	                    required:true, 
	                    range:[0001,9999],
	                	cardExp: {
	                		month: '#expiry_month',
	                		year: '#expiry_year'
	                	}
	                },
	                jcardcvc: {
						required: true,
	                    range:[001,999],
	                	rangelength:[3,3]
	                },
	                jCountryCheck: {
	                    required: true
	                },
	                jstreetaddr: {
	                    required: true,
	                    minlength:5
	                },
	                jcity: {
	                	required: true
	                },
	                jzipcode: {
	                    required: true
	                },
	                policy_terms: {
	                    required: true
	                }
				},
	            messages:  {
	            	
	                jemail: {
	                	required:"Please enter your email.",
	                	email:"Your email address format is invalid."
	                },
	                jemail_2: {
	                	required:"Please confirm your email.",
	                    equalTo:"Your email address doesn't match."
	                },               
	                jphoneno: {
	                    required:"Please enter your phone number.",
	                    rangelength:"Your phone number must be 8-20 digits.",
	                    phone:"Please enter only 0-9, +, and -."
	                },
	                jcardowner: {
	                    required:"Please enter your name on credit card."
	                },
	                jcardno: {
	                    required:"Please enter your credit card number.",
	                    rangelength:"Your card number must be 13-19 digits.",
	                    creditCard:"Please enter only 0-9 and -."
	                },
	                expiry_month: {
	                    required:"Please enter the expiration month.", 
	                    range:"Please enter a valid month."
	                },
	                expiry_year: {
	                    required:"Please enter the expiration year.",
	                    range:"Please enter a valid year."
	                },
	                jcardcvc: {
						required:"Please enter the CVV.",
	                    range:"Please enter a valid CVV.",
	                	rangelength:"CVV must be a three-digit number."
	                },
	                jCountryCheck: {
	                    required:"Please select the country."
	                },
	                jstreetaddr: {
	                    required:"Please enter your street address.",
	                    minlength:"Please enter a valid street address."
	                },
	                jcity: {
	                	required:"Please enter your city."
	                },
	                jzipcode: {
	                    required:"Please enter your postal code."
	                },
	                policy_terms: {
	                    required: "Required"
	                }
				},
				// This is to override the label w/ a div
				errorElement: "div"
	            //키보드에 의한 검사 해제
	            //onkeyup : false,
	            //체크박스나 라디오 버튼 클릭시마다 검사 해제
	            //onclick : false,
	            // 포커스가 빠져나올 경우의 검사 해제
	            //onfocusout : false, 
	            // 에러 발생시 이벤트를 가로 챔
	            //showErrors : function(errorMap, errorList) {
	                //에러메시지 출력
	                //console.log(errorMap);
	                //console.log(errorList);
	                //if(errorList.length) {
	                    //alert(errorList[0].message);
	                //}
	            //}           
	        });
			
		
			
			
		});
		

		
		
	</script>
	

</body>

</html>