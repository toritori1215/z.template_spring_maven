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
					<a href="cart.html" class="bs-wizard-dot"></a>
				</div>

				<div class="col-4 bs-wizard-step complete">
					<div class="text-center bs-wizard-stepnum">Your details</div>
					<div class="progress">
						<div class="progress-bar"></div>
					</div>
					<a href="payment.html" class="bs-wizard-dot"></a>
				</div>

				<div class="col-4 bs-wizard-step complete">
					<div class="text-center bs-wizard-stepnum">Finish!</div>
					<div class="progress">
						<div class="progress-bar"></div>
					</div>
					<a href="#" class="bs-wizard-dot"></a>
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
				<div class="col-lg-8 add_bottom_15">

					<div class="form_title">
						<h3><strong><i class="icon-ok"></i></strong>Thank you!</h3>
						<p>
							Mussum ipsum cacilds, vidis litro abertis.
						</p>
					</div>
					<div class="step">
						<p>
							Lorem ipsum dolor sit amet, nostrud nominati vis ex, essent conceptam eam ad. Cu etiam comprehensam nec. Cibo delicata mei an, eum porro legere no. Te usu decore omnium, quem brute vis at, ius esse officiis legendos cu. Dicunt voluptatum at cum. Vel et facete equidem deterruisset, mei graeco cetero labores et. Accusamus inciderint eu mea.
						</p>
					</div>
					<!--End step -->

					<div class="form_title">
						<h3><strong><i class="icon-tag-1"></i></strong>Booking summary</h3>
						<p>
							Mussum ipsum cacilds, vidis litro abertis.
						</p>
					</div>
					<div class="step">
						<c:forEach var="item" items="${jd_list}" varStatus="st">
						<table class="table table-striped confirm">
							<thead>
								<tr>
									<th colspan="2">
										Item ${st.index+1}
									</th>
								</tr>
							</thead>
								<tbody>
									<tr>
										<td>
											<strong>${jd_product_list[st.index].pname}</strong>
										</td>
										<td>
											x ${jd_list[st.index].jdproductqty}
										</td>
									</tr>
									
									<c:if test="${not empty item.jdorderdate}">
										<tr>
											<td>
												<strong>Date</strong>
											</td>
											<td>
												${item.jdorderdate}
											</td>
										</tr>
									</c:if>
									
									
									<tr>
										<td>
											<strong>To</strong>
										</td>
										<td>
											${jumundto.jcardowner}
										</td>
									</tr>
									<tr>
										<td>
											<strong>Payment type</strong>
										</td>
										<td>
											Credit card
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
							<h3 class="inner">Thank you!</h3>
							<p>
								Nihil inimicus ex nam, in ipsum dignissim duo. Tale principes interpretaris vim ei, has posidonium definitiones ut. Duis harum fuisset ut his, duo an dolor epicuri appareat.
							</p>
							<hr>
							<a class="btn_full_outline" href="restaurants_all_list" target="_blank">Continue Shopping</a>
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