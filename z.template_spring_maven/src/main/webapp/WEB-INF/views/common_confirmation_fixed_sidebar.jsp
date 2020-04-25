<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<!DOCTYPE html>
<html>

	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->


	<section id="hero_2">
		<div class="intro_title">
			<h1>Booking Confirmed</h1>
			<div class="bs-wizard row">

				<div class="col-4 bs-wizard-step complete">
					<div class="text-center bs-wizard-stepnum">More Shopping</div>
					<div class="progress">
						<div class="progress-bar"></div>
					</div>
					<a href="tour_list" class="bs-wizard-dot"></a>
				</div>

				<div class="col-4 bs-wizard-step complete">
					<div class="text-center bs-wizard-stepnum">My Page</div>
					<div class="progress">
						<div class="progress-bar"></div>
					</div>
					<a href="member_mypage" class="bs-wizard-dot"></a>
				</div>

				<div class="col-4 bs-wizard-step complete">
					<div class="text-center bs-wizard-stepnum">Done!</div>
					<div class="progress">
						<div class="progress-bar"></div>
					</div>
					<a href="#0" class="bs-wizard-dot"></a>
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
					<li><a href="tour_list">Tours</a>
					</li>
					<li>Confirmation</li>
				</ul>
			</div>
		</div>
		<!-- End position -->

		<div class="container margin_60">
			<div class="row">
				<div class="col-lg-8 add_bottom_15">

					<div class="form_title">
						<h3><strong><i class="icon-ok"></i></strong>Thank you!</h3>
						<p>
							Your booking is confirmed. We look forward to seeing you.
						</p>
					</div>
					<div class="step">
						<p>
							Dear ${sUser.mFirstName} ${sUser.mLastName},<br>
							It is our pleasure to have you as our guest in Silicon Village. You can now always modify or cancel your booking at <a href="member_mypage">My Page</a> no later than 24 hours before the scheduled departure time.
							Should you have any inquiries or special requests, please do not hesitate to contact our customer service team for assistance. You may want to prepare your reference number so that we can find you in our system quicker!
						</p>
					</div>
					<!--End step -->

					<div class="form_title">
						<h3><strong><i class="icon-tag-1"></i></strong>Booking summary</h3>
						<p>
							Tours booked under name '${gName}' are as follows.
						</p>
					</div>
					<div class="step">
						<c:forEach var="i" begin="0" end="${fn:length(cartList)-1}">
							<table class="table table-striped confirm">
								<thead>
									<tr>
										<th colspan="2">
											Item ${i+1}
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<strong>Date</strong>
										</td>
										<td>
											<i>${fn:substring(cartList[i].cCheckin, 0, 10)} </i>
										</td>
									</tr>
									<tr>
										<td>
											<strong>Tour</strong>
										</td>
										<td>
											<u><b>${cartList[i].pName}</b></u>
										</td>
									</tr>
									<tr>
										<td>
											<strong>Order Count</strong>
										</td>
										<td>
											x&nbsp;${cartList[i].cProductQty}
										</td>
									</tr>
									<tr>
										<td>
											<strong>Item Total</strong>
										</td>
										<td>
											￦${cartList[i].cProductTypePay/10000}만
										</td>
									</tr>
								</tbody>
							</table>
						</c:forEach>
					</div>
					<!--End step -->
				</div>
				<!--End col -->

				<aside class="col-lg-4" id="sidebar">
					<div class="theiaStickySidebar">
						<div class="box_style_1" id="booking_box">
							<h3 class="inner">Ref# ${refNo}</h3>
							<p>
								You may find more information about your reservation, including payment details, from your invoice. 
								We've sent you a confirmation email to <u>${sUser.mEmail}</u> where you can find your invoice as well.
							</p>
							<hr>
							<a class="btn_full_outline" href="member_jumunDetail?jNo=${jNo}" target="_blank">View your invoice</a>
						</div>
						<div class="box_style_4">
							<i class="icon_set_1_icon-89"></i>
							<h4>Have <span>questions?</span></h4>
							<a href="tel://004542344599" class="phone">+45 423 445 99</a>
							<small>Monday to Friday 9.00am - 7.30pm</small>
						</div>
					</div>
					<!--End sticky -->
				</aside>

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

</body>

</html>