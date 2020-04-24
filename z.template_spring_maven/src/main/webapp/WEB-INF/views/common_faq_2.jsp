<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->

	<section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/img/Faq.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>언제든 물어보세요 </h1>
				<p>궁금한 사항이 있으시면 바로 내용을 남겨주세요. 빠른 답변 처리 해드리겠습니다</p>
			</div>
		</div>
	</section>
	<!-- End section -->

	<main>
		<div id="position">
			<div class="container">
				<ul>
					<li><a href="main">Home</a>
					</li>
					<li><a href="#">FAQ</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- Position -->

		<div class="container margin_60">
			<div class="row">
				<aside class="col-lg-3" id="sidebar">
					<div class="theiaStickySidebar">
						<div class="box_style_cat" id="faq_box">
							<ul id="cat_nav">
								<li><a href="#payment" class="active"><i class="icon_set_1_icon-95"></i>객실/예약</a>
								</li>
								<li><a href="#tips"><i class="icon_set_1_icon-95"></i>회원</a>
								</li>
								<li><a href="#reccomendations"><i class="icon_set_1_icon-95"></i>레스토랑</a>
								</li>
								<li><a href="#terms"><i class="icon_set_1_icon-95"></i>투어</a>
								</li>
								<li><a href="#booking"><i class="icon_set_1_icon-95"></i>결제</a>
								</li>
								<li><a href="#transfers"><i class="icon_set_1_icon-95"></i>기타</a>
								</li>
							</ul>
						</div>
						<div class="box_style_2">
							<i class="icon_set_1_icon-57"></i>
							<h4>Need <span>Help?</span></h4>
							<a href="tel://004542344599" class="phone">+45 423 445 99</a>
							<small>Monday to Friday 9.00am - 7.30pm</small>
						</div>
					</div>
					<!--End sticky -->
				</aside>
				<!--End aside -->
				<div class="col-lg-9" id="faq">
					<h3 class="nomargin_top">객실/예약</h3>
					<div id="payment" class="accordion_styled">
					  <div class="card">
						<div class="card-header">
						  <h4>
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#payment" href="#collapseOne_payment">객실에 제공되는 서비스는 무엇이 있나요?<i class="indicator icon-minus float-right"></i></a>
						  </h4>
						</div>
						<div id="collapseOne_payment" class="collapse show" data-parent="#payment">
						  <div class="card-body">
							 저희 호텔의 경우 기본적인 생수 2병과 슬리퍼 및 가운,수건이 비치 되어있습니다. 욕실용품에는 샴푸,컨디셔너,보디 샤워젤,보디로션 그리고 비누가 있습니다. 이 외 면봉이나,샤워캡 등이 제공되며 치약과 칫솔,베스솔트는 호텔마다 비치 여부가 다릅니다.
						  </div>
						</div>
					  </div>
					  <div class="card">
						<div class="card-header">
						  <h4>
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#payment" href="#collapseTwo_payment">예약후 당일 취소가 가능 한가요?<i class="indicator icon-plus float-right"></i></a>
						  </h4>
						</div>
						<div id="collapseTwo_payment" class="collapse" data-parent="#payment">
						  <div class="card-body">
							당일 취소 및 변경은 불가하며, 예약 후 사용예정일(체크인 기준)에 따른 위약금이 부과 됩니다. 자세한 내용은 ′예약취소에 따른 위약금규정′을 참고 하시길 바랍니다.
						  </div>
						</div>
					  </div>
					  <div class="card">
						<div class="card-header">
						  <h4>
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#payment" href="#collapseThree_payment">호텔 홈페이지에서 숙박 예정일 이전 몇 일, 혹은 몇 개월 전부터 예약이 가능합니까?<i class="indicator icon-plus float-right"></i></a>
						  </h4>
						</div>
						<div id="collapseThree_payment" class="collapse" data-parent="#payment">
						  <div class="card-body">
							일반적으로 숙박 예정일 3개월 이전부터 예약을 받고 있습니다. 숙박 예정일 3개월보다 이전에 예약을 원하시면 전화로 문의해 주십시오
						  </div>
						</div>
					  </div>
					</div>
					<!--End payment -->

					<h3>회원</h3>
					<div id="tips" class="accordion_styled">
					  <div class="card">
						<div class="card-header">
						  <h4>
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#tips" href="#collapseOne_tips">회원혜택'에는 어떤 것들이 있나요?<i class="indicator icon-plus float-right"></i></a>
						  </h4>
						</div>
						<div id="collapseOne_tips" class="collapse" data-parent="#tips">
						  <div class="card-body">
							<p>*개인정보 유효기간 탈퇴 시 및 마케팅 정보 수신 동의로 설정된 회원 대상</p>
						 	<p> [기본혜택]</p>
						  <p>객실 할인 10%,레스토랑 이용권 2인 무료</p>
						  <p>[투숙 횟수에 따른 추가 혜택]</p>
						  <p>2회 투숙 시 객실 20% 할인</p>
						  <p>3회 투숙 시 객실 30% 할인</p>
						  <p>4회 투숙 시  스위트룸 50% 할인</p>
						  
						  <p>추가로 '탈퇴 시','마케팅 수신 동의'선택 및 어플리케이션을 다운로드 받으신 회원분들께 아메리카노 1잔(테이크아웃),식음할인쿠폰이 발급됩니다.</p>
						  <p>상세한 회원혜택 안내는 홈페이지를 통해서 확인 가능합니다.</p>
						  </div>
						</div>
					  </div>
					  <div class="card">
						<div class="card-header">
						  <h4>
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#tips" href="#collapseTwo_tips">회원 정보는 어디서 수정 할 수 있을까요?<i class="indicator icon-plus float-right"></i></a>
						  </h4>
						</div>
						<div id="collapseTwo_tips" class="collapse" data-parent="#tips">
						  <div class="card-body">
						  	<p>홈페이지 상단 마이 페이지를 통해서 개인정보를 수정 하실 수 있습니다.</p>
						  </div>
						</div>
					  </div>
					  <div class="card">
						<div class="card-header">
						  <h4>
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#tips" href="#collapseThree_tips">성수기는 언제부터 인가요?<i class="indicator icon-plus float-right"></i></a>
						  </h4>
						</div>
						<div id="collapseThree_tips" class="collapse" data-parent="#tips">
						  <div class="card-body">
						  <p>성수기는 5월/7월/8월/9월/10월/12월 6개월의 전체 일자와 연중 모든 토요일, 연중 국/공휴일 또는 대체 휴무일의 하루 전 날, 연중 연휴 시작 하루 전날부터 마지막 연휴 전날까지를 의미합니다.</p>
						  </div>
						</div>
					  </div>
					</div>
					<!--End tips -->

					<h3>레스토랑</h3>
					<div id="reccomendations" class="accordion_styled">
					  <div class="card">
						<div class="card-header">
						  <h4>
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#reccomendations" href="#collapseOne_reccomendations">복장의 제약은 없습니까?(드레스 코드)<i class="indicator icon-plus float-right"></i></a>
						  </h4>
						</div>
						<div id="collapseOne_reccomendations" class="collapse" data-parent="#reccomendations">
						  <div class="card-body">
						  호텔은 관광지에 위치하고 있어 특별한 드레스 코드는 없습니다.단, 숙박 고객이 유카타, 슬리퍼 차림으로 레스토랑을 이용하시는 것은 금지하고 있습니다.
						  </div>
						</div>
					  </div>
					  <div class="card">
						<div class="card-header">
						  <h4>
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#reccomendations" href="#collapseTwo_reccomendations">이용금액과 예약이 궁금합니다.<i class="indicator icon-plus float-right"></i></a>
						  </h4>
						</div>
						<div id="collapseTwo_reccomendations" class="collapse" data-parent="#reccomendations">
						  <div class="card-body">
						  	<p>※레스토랑
							-월~금(화요일 제외) 오전 09:30~ 20:00</p>
							<p>-토~일		    오후 09:00~ 14:00
							레스토랑 이용금액의 경우 홈페이지를 통해 확인 하실 수 있습니다.</p>
						  </div>
						</div>
					  </div>
					  <div class="card">
						<div class="card-header">
						  <h4>
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#reccomendations" href="#collapseThree_reccomendations">레스토랑에서 가장 맛있는 메뉴 좀 알려 주세요?<i class="indicator icon-plus float-right"></i></a>
						  </h4>
						</div>
						<div id="collapseThree_reccomendations" class="collapse" data-parent="#reccomendations">
						  <div class="card-body">
						  	저희 레스토랑의 경우 여러 국가의 음식을 다양하게 제공 하고 있으며, 최고의 쉐프가 최상의 맛과 서비스를 제공하고 있습니다. 직접 식사를 해보시는 걸 추천 드립니다.
						  </div>
						</div>
					  </div>
					</div>
					<!--End reccomendations -->

					<h3>투어</h3>
					<div id="terms" class="accordion_styled">
					  <div class="card">
						<div class="card-header">
						  <h4>
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#terms" href="#collapseOne_terms">투어 상품 중에서 낚시의 경우 따로 장비가 필요한가요?<i class="indicator icon-plus float-right"></i></a>
						  </h4>
						</div>
						<div id="collapseOne_terms" class="collapse" data-parent="#terms">
						  <div class="card-body">
						   저희 투어 상품의 경우 개인 장비를 이용 하실 수 있으며, 또한 낚시 상품(9만원)에 용품이 포함된 가격입니다. 
						  </div>
						</div>
					  </div>
					  <div class="card">
						<div class="card-header">
						  <h4>
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#terms" href="#collapseTwo_terms">HELI-SKIING가 위험하지 않은가요?<i class="indicator icon-plus float-right"></i></a>
						  </h4>
						</div>
						<div id="collapseTwo_terms" class="collapse" data-parent="#terms">
						  <div class="card-body">
						   HELI-SKIING의 경우 남녀노소 재미있게 스포츠 활동을 즐길 수 있게 구성 되어있으며, 주변에 구급요원 및 의료진이 항시 대기 중에 있어 위험 상황 발생시 즉시 대처 할 수 있습니다.
						  </div>
						</div>
					  </div>
					  <div class="card">
						<div class="card-header">
						  <h4>
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#terms" href="#collapseThree_terms">투어 상품도 할인이 가능한가요?<i class="indicator icon-plus float-right"></i></a>
						  </h4>
						</div>
						<div id="collapseThree_terms" class="collapse" data-parent="#terms">
						  <div class="card-body">
						   현재 투어상품의 경우 별도의 할인혜택이 진행 되고 있지 않습니다. 추후 상의를 통해 고객님에게 더 합리적 가격과 편안한 서비스를 제공하기 위해 노력하겠습니다.
						  </div>
						</div>
					  </div>
					</div>
					<!--End terms -->

					<h3>결제</h3>
					<div id="booking" class="accordion_styled">
					  <div class="card">
						<div class="card-header">
						  <h4>
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#booking" href="#collapseOne_booking">숙박 예약 시 어떤 결제수단을 사용할 수 있나요?<i class="indicator icon-plus float-right"></i></a>
						  </h4>
						</div>
						<div id="collapseOne_booking" class="collapse" data-parent="#booking">
						  <div class="card-body">
						   홈페이지에서 숙박을 예약하실 때 사용할 수 있는 결제수단은 신용카드 방법이 있습니다.
						  </div>
						</div>
					  </div>
					  <div class="card">
						<div class="card-header">
						  <h4>
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#booking" href="#collapseTwo_booking">결제 취소를 했는데 취소 기간이 얼마나 걸리나요?<i class="indicator icon-plus float-right"></i></a>
						  </h4>
						</div>
						<div id="collapseTwo_booking" class="collapse" data-parent="#booking">
						  <div class="card-body">
						   <p>카드취소 시 카드 취소 접수 후 영업일 기준 약 7일 소요되며, 입금 환불 취소 시 입금 해 주셨던 통장 사본 수령 후 접수 (입금자명 확인 후 진행 됩니다) 및 접수 후 영업일 기준 약 7일 소요 됩니다.</p>
						   <p>단, 신분증으로는 입금 환불 신청이 접수되지 않으며, 예약 당일 취소 및 NO SHOW의 경우 위약금 규정에 따라 해당 금액 제외한 나머지 금액만 환불됩니다. 또한, 상기 일자는 당사, 카드사 상황 또는 금액에 따라 지연될 수 있습니다</p>
						  </div>
						</div>
					  </div>
					  <div class="card">
						<div class="card-header">
						  <h4>
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#booking" href="#collapseThree_booking">취소 가능한 기간이 언제까지 인가요?<i class="indicator icon-plus float-right"></i></a>
						  </h4>
						</div>
						<div id="collapseThree_booking" class="collapse" data-parent="#booking">
						  <div class="card-body">
						  <p>[성수기] 사용 예정일(체크인 날짜) 3일 전 15시 이후 예약취소 시 -
								하루 숙박 총 요금의 50% 부과 사용 예정일(체크인 날짜) 1일 전 15시 이후 예약취소 시 - 하루 숙박 총
								요금의 90% 부과 (당일 숙박을 위한 당일예약 후, 예약 취소의 경우도 위약금 규정이 동일하게 적용됩니다.)</p>

								<p>[비수기] 사용 예정일(체크인 날짜) 1일 전 15시 이후 예약취소 시 - 하루 숙박 총 요금의 10% 부과 사용
								예정일(체크인 날짜) 당일 15시 이후 예약취소 및 미입실(No Show)시 - 하루 숙박 총 요금의 20% 부과
								(당일 숙박을 위한 당일예약 후, 예약 취소의 경우도 위약금 규정이 동일하게 적용됩니다</p>
								</div>
						</div>
					  </div>
					</div>
					<!--End booking -->

					<h3>기타</h3>
					<div id="transfers" class="accordion_styled">
					  <div class="card">
						<div class="card-header">
						  <h4>
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#transfers" href="#collapseOne_transfers">장기주차를 하려면 어떻게 해야하나요?<i class="indicator icon-plus float-right"></i></a>
						  </h4>
						</div>
						<div id="collapseOne_transfers" class="collapse" data-parent="#transfers">
						  <div class="card-body">
						   투숙객의 경우, 숙박일에 한하여 무료주차가 가능합니다. 장기주차를 원할경우, 1일 1만원의 추가요금이 발생됩니다.
						  </div>
						</div>
					  </div>
					  <div class="card">
						<div class="card-header">
						  <h4>
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#transfers" href="#collapseTwo_transfers">근처 편의점이 있나요?<i class="indicator icon-plus float-right"></i></a>
						  </h4>
						</div>
						<div id="collapseTwo_transfers" class="collapse" data-parent="#transfers">
						  <div class="card-body">
						  간단한 스낵 구매가 가능한 벤딩머신이 로비층에 위치 해 있으며,근처 편의점은 호텔 맞은편에 위치해있습니다. (도보로 약 5분소요)
						  </div>
						</div>
					  </div>
					  <div class="card">
						<div class="card-header">
						  <h4>
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#transfers" href="#collapseThree_transfers">외부 배달 음식을 주문해도 되나요?<i class="indicator icon-plus float-right"></i></a>
						  </h4>
						</div>
						<div id="collapseThree_transfers" class="collapse" data-parent="#transfers">
						  <div class="card-body">
						  호텔 규정 상 외부 배달 음식은 주문하실 수 없습니다.
						  </div>
						</div>
					  </div>
					</div>
					<!--End transfers -->

				</div>
				<!-- End col lg-9 -->
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</main>
	<!-- End main -->

	<!-- Footer================================================== -->
	<jsp:include page="common_footer_2.jsp"/>
	<!-- End Footer -->
	
	<script>
		jQuery('#sidebar').theiaStickySidebar({
			additionalMarginTop: 80
		});
	</script>
	<script>
	$('#faq_box a[href^="#"]').click(function() {
		if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') 
			|| location.hostname == this.hostname) {
			var target = $(this.hash);
			target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
			   if (target.length) {
				 $('html,body').animate({
					 scrollTop: target.offset().top -115
				}, 800);
				return false;
			}
		}
	});
	</script>

</body>

</html>