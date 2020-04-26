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
					매력적인 저희의 여행
				</p>
				<a href="single_tour.html" class="btn_1 white">Read more</a>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 text-center">
					<p>
						<a href="#"><img src="${pageContext.request.contextPath}/resources/img/bus.jpg" alt="Pic" class="img-fluid">
						</a>
					</p>
					<h4><span>Sightseen tour</span> booking</h4>
					<p>
						Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex.
					</p>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<p>
						<a href="#"><img src="${pageContext.request.contextPath}/resources/img/transfer.jpg" alt="Pic" class="img-fluid">
						</a>
					</p>
					<h4><span>Transfer</span> booking</h4>
					<p>
						Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex.
					</p>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<p>
						<a href="#"><img src="${pageContext.request.contextPath}/resources/img/guide.jpg" alt="Pic" class="img-fluid">
						</a>
					</p>
					<h4><span>Tour guide</span> booking</h4>
					<p>
						Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex.
					</p>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<p>
						<a href="#"><img src="${pageContext.request.contextPath}/resources/img/hotel.jpg" alt="Pic" class="img-fluid">
						</a>
					</p>
					<h4><span>Hotel</span> booking</h4>
					<p>
						Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex.
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