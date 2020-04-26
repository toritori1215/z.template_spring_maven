<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->

	<section id="hero">
		<div class="intro_title error">
			<h1 class="animated fadeInDown">404</h1>
			<p class="animated fadeInDown">Oops!! Page not found</p>
			<a href="main" class="animated fadeInUp button_intro">Back to home</a> <a href="tour_list" class="animated fadeInUp button_intro outline">View all tours</a>
	</section>

	<!-- End hero -->

	<main>
		<div class="container margin_60">

			<div class="banner colored add_bottom_30">
				<h4>Discover our Top tours <span>from $34</span></h4>
				<p>
					저희의 환상적인 여행 상품을 확인해보세요!!
				</p>
				<a href="tour_list" class="btn_1 white">Read more</a>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 text-center">
					<p>
						<a href="#"><img src="${pageContext.request.contextPath}/resources/img/bus.jpg" alt="Pic" class="img-fluid">
						</a>
					</p>
					<h4><span>Sightseen tour</span> booking</h4>
					<p>
					Silicon Village는 최고의 온라인 투어 및 레스토랑 예약 사이트입니다. 고객님들이 많이 찾는 인기 여행지만을 한데 모았어요. Silicon Village와 함께라면 여러분의 마음에 쏙 드는 투어상품을 저렴한 가격에 예약하실 수 있을 거에요!
					</p>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<p>
						<a href="#"><img src="${pageContext.request.contextPath}/resources/img/transfer.jpg" alt="Pic" class="img-fluid">
						</a>
					</p>
					<h4><span>Transfer</span> booking</h4>
					<p>
					Silicon Village는 셔틀 서비스를 제공하는 사이트입니다.셔틀 버스를 통해 편안한 여행을 즐겨보세요. 또한, 홈페이지 특정 패키지 예약 고객 대상으로 픽업 서비스 혜택을 제공합니다. 
					</p>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<p>
						<a href="#"><img src="${pageContext.request.contextPath}/resources/img/guide.jpg" alt="Pic" class="img-fluid">
						</a>
					</p>
					<h4><span>Tour guide</span> booking</h4>
					<p>
					원하시는 일정에 따라 하루 10시간 기준으로 관광안내를 드립니다. 투어지 이동시, 차량(택시 및 개별차량) 및 대중교통(지상철, 지하철) 자유롭게 이용하실 수 있으시며 순수 가이드안내 비용만으로 진행되기에, 교통비, 현지 입장료, 식사등 은 현지에서 직접 지불해 주셔야하는 투어입니다.
					</p>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<p>
						<a href="#"><img src="${pageContext.request.contextPath}/resources/img/restaurant.jpg" alt="Pic" class="img-fluid">
						</a>
					</p>
					<h4><span>Restaurant</span> booking</h4>
					<p>
					예약이 필요한 식당들의 예약이 부담되시는 분들을 위해 아주 저렴한 비용으로 예약을 도와드립니다. 편하게 예약을 하세요 !개인적으로 원하시는 레스토랑 혹은 한국분들이 찾으시지만 예약이 필수인 몇몇 레스토랑의 예약을 도와드립니다.
					</p>
				</div>
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</main>
	<!-- End main -->

	<!-- Footer================================================== -->
	<jsp:include page="common_footer_2.jsp"/>
	<!-- End Footer -->
	
</body>

</html>