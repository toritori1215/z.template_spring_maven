<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
   
 
	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- 사용자 지정 CSS -->
	<link href="${pageContext.request.contextPath}/resources/z.SiliconVillage/css/hbkMy.css" rel="stylesheet">
	
	<!-- End Header -->

	<section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/img/restaurant_top.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>Paris restaurants</h1>
				<p>Ridiculus sociosqu cursus neque cursus curae ante scelerisque vehicula.</p>
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
					<li><a href="restaurants_all_list">Restaurants List</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- Position -->

		<div class="collapse" id="collapseMap">
			<div id="map" class="map"></div>
		</div>
		<!-- End Map -->

		<div class="container margin_60">

			<div class="row">
				<aside class="col-lg-3">
					<p>
						<a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a>
					</p>

					<div class="box_style_cat">
						<input type="hidden" id="category" name= "category" value="${category}">
						<ul id="cat_nav">
							<li><a href="restaurants_all_list" id="active"><i class="icon_set_3_restaurant-10"></i>All restaurants <span>(${restListPage.totalRecordCount})</span></a>
							</li>
							<c:forEach var="category_Info" items="${foodCategoryList}" step="1" varStatus="st">
								
									<li>
										<c:choose>
											<c:when test='${category_Info.foodcategory =="America"}'>
												<a href="restaurants_all_list?category=America"><i class="icon_set_3_restaurant-2"></i>${category_Info.foodcategory}<span>(${category_Info.categoryCnt})</span></a>
											</c:when>
											<c:when test='${category_Info.foodcategory =="Chinese"}'>
												<a href="restaurants_all_list?category=Chinese"><i class="icon_set_3_restaurant-4"></i>${category_Info.foodcategory}<span>(${category_Info.categoryCnt})</span></a>
											</c:when>
											<c:when test='${category_Info.foodcategory =="Japanese"}'>
												<a href="restaurants_all_list?category=Japanese"><i class="icon_set_3_restaurant-3"></i>${category_Info.foodcategory}<span>(${category_Info.categoryCnt})</span></a>
											</c:when>
											<c:when test='${category_Info.foodcategory =="European"}'>
												<a href="restaurants_all_list?category=European"><i class="icon_set_3_restaurant-1"></i>${category_Info.foodcategory}<span>(${category_Info.categoryCnt})</span></a>
											</c:when>

										</c:choose>
										
									</li>
							</c:forEach>
							
							<li><a href="restaurants_all_list?category=Dessert"><i class="icon_set_3_restaurant-8"></i>Dessert <span>(${foodCategoryDessertCnt})</span></a>
							
							<!-- 
							<li><a href="#"><i class="icon_set_3_restaurant-1"></i>Pizza / Italian <span>(20)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_3_restaurant-2"></i>Fast Food <span>(16)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_3_restaurant-3"></i>Japanese <span>(12)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_3_restaurant-4"></i>Chinese <span>(11)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_3_restaurant-5"></i>International <span>(20)</span></a>
							</li>
							<li><a href="#"><i class="icon_set_3_restaurant-7"></i>Fish <span>(08)</span></a>
							</li>
							 -->
							
							</li>
						</ul>
					</div>

					<div id="filters_col">
						<a data-toggle="collapse" href="#collapseFilters" aria-expanded="false" aria-controls="collapseFilters" id="filters_col_bt"><i class="icon_set_1_icon-65"></i>Filters</a>
						<div class="collapse show" id="collapseFilters">
							<div class="filter_type">
								<h6>Price</h6>
								<input type="text" id="rangeRest" name="range" value="100">
							</div>
							<div class="filter_type">
								<h6>Rating</h6>
								<ul>
									<li>
										<label>
											<input type="checkbox" id="bx1"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox" id="bx2"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox" id="bx3"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox" id="bx4"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox" id="bx5"><span class="rating">
											<i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
									<li>
										<label>
											<input type="checkbox" id="bx6"><span class="rating">
											<i class="icon-smile"></i><i class="icon-smile"></i><i class="icon-smile"></i><i class="icon-smile"></i><i class="icon-smile"></i>
											</span>
										</label>
									</li>
								</ul>
							</div>
							
						</div>
						<!--End collapse -->
					</div>
					<!--End filters col-->
					<div class="box_style_2">
						<i class="icon_set_1_icon-57"></i>
						<h4>Need <span>Help?</span></h4>
						<a href="tel://004542344599" class="phone">+45 423 445 99</a>
						<small>Monday to Friday 9.00am - 7.30pm</small>
					</div>
				</aside>
				<!--End aside --> 
				<div class="col-lg-9">

					<div id="tools">

						<div class="row">
							<div class="col-md-3 col-sm-4 col-6">
								<div class="styled-select-filters">
									<select name="sort_price" id="sort_price" class="price_sort">
										<option value="" selected>Sort by price</option>
										<option value="ASC" >Lowest price</option>
										<option value="DESC">Highest price</option>
										<option value="LOWER">Lowest ranking</option>
										<option value="HIGHER">Highest ranking</option>
									</select>
								</div>
							</div>
							<div class="col-md-3 col-sm-4 col-6" style="visibility: hidden;">
								<div class="styled-select-filters">
									<select name="sort_rating" id="sort_rating">
										<option value="" selected>Sort by ranking</option>
										<option value="LOWER">Lowest ranking</option>
										<option value="HIGHER">Highest ranking</option>
									</select>
								</div>
							</div>
							<div class="col-md-6 col-sm-4 d-none d-sm-block text-right">
								<a href="all_restaurants_grid.html" class="bt_filters"><i class="icon-th"></i></a> <a href="#" class="bt_filters"><i class="icon-list"></i></a>
							</div>

						</div>
					</div>
					<!--/tools -->

					<!-- 1  restListPage-->
					 
					<!-- c:forEach var="restaurantDto" items="${restListPage.list}" varStatus="st"-->
					
					<c:forEach begin="0" end="${restListPage.totalRecordCount-1}" varStatus="st" step="1">
						<div class="strip_all_tour_list wow fadeIn" data-wow-delay="0.1s">
							<div class="row" valueStatus="${st.index}" mkattr="search">
							
								<div class="col-lg-4 col-md-4">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="wishlist">
										<a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
									</div>
									<div class="img_list">
										<a href="restaurant_single_food_detail?pno=${restListPage.list[st.index].pno}">
											
											<c:set var="fileImg" 
											 value="${fn:split(restListPage.list[st.index].pimg,'/')}"/>
											 
											<!--  사진이름 처리 -->
										
											<img src="${pageContext.request.contextPath}/resources/css/images/restaurant_Product_img/${fileImg[0]}" alt="Image">
											
											 
											 <!-- 
											 <img src="${pageContext.request.contextPath}/resources/img/restaurant_box_1.jpg" alt="Image">
											  -->

											<div class="short_info"><i class="icon_set_3_restaurant-2"></i> Fast food</div>
										</a>
									</div>
								</div>
								<div class="col-lg-6 col-md-6">
									<div class="tour_list_desc">
									
										<div class="rating">
										<c:choose>
											<c:when test="${restListPage.list[st.index].prate==0}">
													<i class="icon-smile"></i> <i class="icon-smile"></i> <i class="icon-smile"></i> <i class="icon-smile"></i> <i class="icon-smile"></i> <small>(${restListPage.list[st.index].prate})</small>
											</c:when>
											<c:when test="${restListPage.list[st.index].prate==1}">
													<i class="icon-smile voted"></i> <i class="icon-smile"></i> <i class="icon-smile"></i> <i class="icon-smile"></i> <i class="icon-smile"></i> <small>(${restListPage.list[st.index].prate})</small>
											</c:when>
											<c:when test="${restListPage.list[st.index].prate==2}">
													<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i><i class="icon-smile"></i><small>(${restListPage.list[st.index].prate})</small>
											</c:when>
											<c:when test="${restListPage.list[st.index].prate==3}">
													<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i><small>(${restListPage.list[st.index].prate})</small>
											</c:when>
											<c:when test="${restListPage.list[st.index].prate==4}">
													<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(${restListPage.list[st.index].prate})</small>
											</c:when>
											<c:when test="${restListPage.list[st.index].prate==5}">
													<i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><small>(${restListPage.list[st.index].prate})</small>
											</c:when>
										
										
										
										</c:choose>
											<!-- 
											<i class="icon-smile voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile  voted"></i><i class="icon-smile"></i><small>(${restListPage.list[st.index].prate})</small>
											 -->
										</div>
										<h3><strong>${restListPage.list[restListPage.startRowNum-1 + st.index].pname}</strong></h3><!-- st.index -->
										<p>${restListPage.list[restListPage.startRowNum-1 + st.index].pdesc}</p><!-- restListPage.list[st.index].pdesc -->
										<ul class="add_info">
											<li>
												<div class="tooltip_styled tooltip-effect-4">
													<span class="tooltip-item"><i class="icon_set_1_icon-13"></i></span>
													<div class="tooltip-content">
														<h4>Disabled</h4> Usu in novum nostrud disputando, ei quo aperiri omittam vidit fastidii.
														<br>
													</div>
												</div>
											</li>
											<li>
												<div class="tooltip_styled tooltip-effect-4">
													<span class="tooltip-item"><i class="icon_set_1_icon-47"></i></span>
													<div class="tooltip-content">
														<h4>No smoking area</h4> Usu in novum nostrud disputando, ei quo aperiri omittam vidit fastidii.
														<br>
													</div>
												</div>
											</li>
											<li>
												<div class="tooltip_styled tooltip-effect-4">
													<span class="tooltip-item"><i class="icon_set_1_icon-27"></i></span>
													<div class="tooltip-content">
														<h4>Parking</h4> Usu in novum nostrud disputando, ei quo aperiri omittam vidit fastidii.
														<br>
													</div>
												</div>
											</li>
											<li>
												<div class="tooltip_styled tooltip-effect-4">
													<span class="tooltip-item"><i class="icon_set_1_icon-25"></i></span>
													<div class="tooltip-content">
														<h4>Transport</h4> Usu in novum nostrud disputando, ei quo aperiri omittam vidit fastidii.
														<br>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
								<div class="col-lg-2 col-md-2">
									<div class="price_list">
										<div>
											 <!-- 
											<fmt:formatNumber type="currency" value="${restaurantDto.pprice}"/>
											  -->
											 
											<label>￦ ${restListPage.list[restListPage.startRowNum-1 + st.index].pprice}</label>
		
						
										
											
											<span class="normal_price_list"></span><small>*Per food</small>
											 											
											<p><a href="restaurant_single_food_detail?pno=${restListPage.list[st.index].pno}" class="btn_1">Details</a>
											</p>
										</div>
	
									</div>
								</div>
							</div>
						</div>
					<!--End strip -->
					</c:forEach>

					<hr>

					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center">
							<!-- isShowFirst? -->
							<c:if test="${restListPage.showFirst}">
							</c:if>
								<li class="page-item" id="firstPageChange" >
									<a class="page-link" pageAvalue="1" href="restaurants_all_list?pageno=1" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
										<span class="sr-only">Previous</span>
									</a>
								</li>
							
							<c:if test="${restListPage.showPreviousGroup}">
							</c:if>
								<li class="page-item" id="previousPageChange">
									<a class="page-link" pageAvalue="${restListPage.previousGroupStartPageNo}" href="restaurants_all_list?pageno=${restListPage.previousGroupStartPageNo}" aria-label="Previous">
										<span aria-hidden="true">&lt;</span>
										<span class="sr-only">Previous</span>
									</a>
								</li>
							
							<c:forEach begin="${restListPage.startPageNo}" 
									   end="${restListPage.endPageNo}" 
									   step="1"
									   varStatus="st" >
								<c:choose>
									<c:when test="${currentPageno == st.index}">
										<li class="page-item" showPage="showP">
											<a class="page-link" pageAvalue="${st.index}" id="currentPageA" href="restaurants_all_list?pageno=${st.index}" style="color: red">${st.index}</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-item" showPage="showP">
											<a class="page-link" pageAvalue="${st.index}" href="restaurants_all_list?pageno=${st.index}">${st.index}</a>
										</li>
									</c:otherwise>
								</c:choose>
								

							</c:forEach>
						
							<c:if test="${restListPage.showNextGroup}">
								<li class="page-item" id="nextPageChange">
									<a class="page-link" pageAvalue="${restListPage.nextGroupStartPageNo}" href="restaurants_all_list?pageno=${restListPage.nextGroupStartPageNo}" aria-label="Next">
										<span aria-hidden="true">&gt;</span>
										<span class="sr-only">Next</span>
									</a>
								</li>
							</c:if>
							<c:if test="${restListPage.showLast}">
								<li class="page-item" id="lastPageChange">
									<a class="page-link" pageAvalue="${restListPage.totalPageCount}" href="restaurants_all_list?pageno=${restListPage.totalPageCount}" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
										<span class="sr-only">Next</span>
									</a>
								</li>
							</c:if>
						
						</ul>
					</nav>
					<!-- end pagination-->

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

	<!-- Specific scripts -->
	<!-- Cat nav mobile -->
	
	
	<script src="${pageContext.request.contextPath}/resources/js/cat_nav_mobile.js"></script>
	
	<script>
		$('#cat_nav').mobileMenu();
	</script>
	

	<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/map_restaurants.js"></script> 
	<script src="${pageContext.request.contextPath}/resources/js/infobox.js"></script>
	 
	
	<!-- Check box and radio style iCheck -->
	<script>
	

		
		
		
		function numberWithCommas(x) {
		    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
		
		
	
		$(function(){
			
			$('#firstPageChange').hide();
			$('#previousPageChange').hide();
			
			console.log("restListPage.startRowNum:->"+${restListPage.startRowNum});
			console.log("restListPage.endRowNum:->"+${restListPage.endRowNum});
			//console.log("restListPage.list.length ->"+${restListPage.list.size()})
			let listSize = ${restListPage.list.size()};
			for (var i = 0; i < listSize; i++) {
				let showRowStr = $('div[valueStatus="'+i+'"]').attr("valueStatus"); //i==showRow
				let showRow = Number(showRowStr);
				
				//시작 로우 부터 끝로우 까지만 show() 나머지는 hide()!!
				if(${restListPage.startRowNum -1}<= showRow
						&& ${restListPage.endRowNum -1} >= showRow){
					$('div[valueStatus="'+i+'"]').show();
				}else{
					$('div[valueStatus="'+i+'"]').hide();
				}
			}
			
			console.log("dddd->"+${currentPageno});
			console.log("ddddlist->"+${restListPage.list.size()});
			$("#rangeRest").ionRangeSlider({
				hide_min_max: true,
				keyboard: true,
				min: 0,
				max: 500000,
				from: 10000,
				to: 100000,
				type: 'double',
				step: 1,
				prefix: "￦",
				grid: true,
				onChange: function(e){
					//console.log("from_pretty:"+e.from_pretty.trim());
					//console.log("to_pretty:"+e.to_pretty.trim());
					//console.log("to"+to_pretty);
					let fromValStr = e.from_pretty;
					let toValStr =  e.to_pretty;
					
					fromValStr = fromValStr.replace(/ /gi,"");
					toValStr = toValStr.replace(/ /gi,"");
					
					let fromVal =Number(fromValStr);
					let toVal =Number(toValStr);
					//console.log("fromValtrim::"+fromVal);
					//console.log("toValtrim::"+toVal);
					

					//console.log($('div[valueStatus="'+i+'"] .price_list  label').text());
					let priceParent = document.querySelectorAll('.price_list  label');
					for (var i = 0; i < priceParent.length; i++) {
						//console.log("text::"+priceParent[i].firstChild.nodeValue);
						
						//숫자로 변환
						let labelPrice = priceParent[i].firstChild.nodeValue;
						let removeWon = labelPrice.replace("￦","");
						//console.log("removeWon ::" + removeWon);
						let removeCompPrice = removeWon.replace(/,/gi,"");
						let comparePriceStr = removeCompPrice.replace(/ /gi,"");
						let comparePrice = Number(comparePriceStr);
						//console.log("comparePrice ::" + comparePrice);
						//console.log("￦ ::" +labelPrice.indexOf("￦"));
						
						
						//숫자로 변환 end
						if(fromVal <= comparePrice && comparePrice <= toVal){
							//조건 만족 show
							//console.log("보여줬다!!");
							$('div[valueStatus="'+i+'"]').show();
						}else{
							//조건 불만족 hide
							//console.log("사라졌다!!");
							$('div[valueStatus="'+i+'"]').hide();
						}
						
					}
					//console.log(priceParent.firstChild.nodeValue);
					
					
					
					
					
				}
				
			});
			
			
			
			
			//가격 원화 표시
			var abc = document.querySelectorAll('.price_list label');
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
				
				
				
			<!--페이징 Ajax-->
				
			$('nav[aria-label="Page navigation"] > ul').on('click','.page-item a',function(e){
				//console.log("e::"+$(e.target).attr('pageAvalue')); //선택 페이지 번호
				console.log("e::"+this.getAttribute('pageAvalue'));
				console.log("page-item > a 태그 수::" + $('.page-item > a').length); //a태그 수
				//let currentpage = $('#currentPageA').attr('pageAvalue');
				
				//let selectPageNo = $(e.target).attr('pageAvalue');
				let selectPageNo = this.getAttribute('pageAvalue');
				let selectOption= $('#sort_price > option:selected').attr('value');
				let param ="pageno="+selectPageNo+"&orderBy="+ selectOption;
				//console.log(">>>>>"+result.startRowNum);
				
				$.ajax({
					url: 'paging_Ajax',
					data : param ,
					dataType : 'json',
					async: false,
					success: function(result){
						//let jsonStringify1 = JSON.stringify(result);
						//console.log("jsonStringify::"+jsonStringify1);
						
						let showRowAjax;
						for (var i = 0; i < result.totalRecordCount; i++) {
							//시작 로우 부터 끝로우 까지만 show() 나머지는 hide()!!
							//showRowAjax = $('div[valueStatus="'+i+'"]').attr("valueStatus"); ==i
							//showRowAjax= document.querySelector('div[valueStatus="'+i+'"]').getAttribute("valueStatus");
							/*
							if(result.startRowNum -1<= showRowAjax
									&& result.endRowNum -1 >= showRowAjax){
								$('div[valueStatus="'+i+'"]').show();
							}else{
								//console.log("흠???");
								$('div[valueStatus="'+i+'"]').hide();
							}*/
							if(result.startRowNum -1<= i && result.endRowNum -1 >= i){
								$('div[valueStatus="'+i+'"]').show();
							}else{
								//console.log("흠???");
								$('div[valueStatus="'+i+'"]').hide();
							}
							//console.log("i::"+i);
							/*
							$('div[valueStatus='+i+'] h3 > strong').text(result.list[i].pname);
							$('div[valueStatus='+i+'] .tour_list_desc p').text(result.list[i].pdesc);
							let priceParentNode = document.querySelector('div[valueStatus="'+i+'"] .price_list  label' );
							priceParentNode.firstChild.nodeValue="￦"+ numberWithCommas(result.list[i].pprice);
							*/
						}
						//console.log("result.currentPage-->"+result.selectPageNo );
						// << 버튼
						//let jsonStringify = JSON.stringify(result);
						//console.log("resultjsonStringify-->" + jsonStringify);
						
						
						if(result.showFirst){
							//$('#firstPageChange > a').attr('pageAvalue',1);
							document.querySelector('#firstPageChange > a').setAttribute('pageAvalue',1);
							$('#firstPageChange').show();
							
							
						}else{
							//console.log("재요청 -> hide");
							$('#firstPageChange').hide();
						}
						
						if(result.showPreviousGroup){
							//$('#previousPageChange > a').attr('pageAvalue',result.previousGroupStartPageNo);
							document.querySelector('#previousPageChange > a').setAttribute('pageAvalue',result.previousGroupStartPageNo);
							$('#previousPageChange').show();
						}else{
							$('#previousPageChange').hide();
						}
						
						//console.log('show A태그-->'+$('li[showPage="showP"]').length);
						$('li[showPage="showP"]').remove();
						for(var j= result.startPageNo; j<=result.endPageNo ; j++){
							
							let tagli = document.createElement("li");//<li></li>
							tagli.setAttribute("class", "page-item");
							tagli.setAttribute("showPage", "showP");//<li class="page-item" showPage="showP"><li>
							
							let tagA = document.createElement("a");//<a></a>
							tagA.setAttribute("class","page-link");//<a class="page-link></a>
							tagA.setAttribute("pageAvalue",j);
							tagA.setAttribute("href","#");
							
							let textA = document.createTextNode(j);
							tagA.appendChild(textA);
							
							if(result.selectPageNo == j){
								tagA.setAttribute('id','currentPageA');
								tagA.style.color = 'red';
							}
							
							tagli.appendChild(tagA);
							let insertbeforeNode = document.querySelector('#nextPageChange');
							if(result.showPreviousGroup ==true && result.showNextGroup==false){
								document.querySelector('nav[aria-label="Page navigation"] > ul').append(tagli);
							}else if(result.showPreviousGroup==false && result.showNextGroup==true){
								document.querySelector('nav[aria-label="Page navigation"] > ul').insertBefore(tagli,insertbeforeNode);
							}else{
								document.querySelector('nav[aria-label="Page navigation"] > ul').insertBefore(tagli,insertbeforeNode);
							}
								
						}
						
						if(result.showNextGroup){
							document.querySelector('#nextPageChange > a').setAttribute('pageAvalue',result.nextGroupStartPageNo);
							$('#nextPageChange').show();
							//$('#nextPageChange > a').attr('pageAvalue',result.nextGroupStartPageNo);
						}else{
							$('#nextPageChange').hide();
						}
						
						if(result.showLast){
							document.querySelector('#lastPageChange > a').setAttribute('pageAvalue',result.nextGroupStartPageNo);
							$('#lastPageChange').show();
							//$('#lastPageChange > a').attr('pageAvalue',result.totalPageCount);
						}else{
							$('#lastPageChange').hide();
						}
						
					}

				
				});
				e.preventDefault();
				
			});
			
			$('#sort_price').on('change',function(){
				//console.log($('#sort_price > option:selected').attr('value'));
				let selectOption= $('#sort_price > option:selected').attr('value');
				//let currentpage = $('#currentPageA').attr('pageAvalue');
				let currentpage = document.getElementById('currentPageA').getAttribute('pageAvalue');
				
				//location.href="restaurants_all_list?pageno="+${currentPageno}+"&orderBy="+ selectOption;
				let category =document.getElementById("category").value;
				
				let param ="pageno="+currentpage+"&orderBy="+ selectOption +"&category="+category;
				
				/*
				if(category!=null && category!=""){
					param+="&category="+category;
				}
				*/
				//console.log("Apageno --> "+ $('#currentPageA').attr('pageAvalue'));
				//console.log("param -->"+ param);
				$.ajax({
					url : 'rest_all_list',
					data : param ,
					dataType : 'json',
					async: false,
					success: function(result) {
						restRequestCallback(result);
					}
					
					
				});
				
			});
			
			/*
			$('#sort_rating').on('change',function(){
				//console.log($('#sort_price > option:selected').attr('value'));
				let selectOption= $('#sort_rating > option:selected').attr('value');
				let currentpage = document.getElementById('currentPageA').getAttribute('pageAvalue');
				//location.href="restaurants_all_list?pageno="+${currentPageno}+"&orderBy="+ selectOption;
				let category =document.getElementById("category").value;
				let param ="pageno="+currentpage+"&orderBy="+ selectOption +"&category="+category;
				console.log("currentpage --> "+currentpage);
				
				if(category!=null && category!=""){
					param+="&category="+category;
				}
				
				
				$.ajax({
					url : 'rest_all_list',
					data : param ,
					dataType : 'json',
					async: false,
					success: function(result){
						restRequestCallback(result);
					}
				});
				<!-- ajax end-->
			});
			
			*/
			<!-- sort_rating -->
			
			$('input').iCheck({
			   checkboxClass: 'icheckbox_square-grey',
			   //radioClass: 'iradio_square-grey'
			 });
			
			$('input').on('ifToggled', function(e){
				/*
				let rowCnt = $('div[mkattr="search"]').length;
				for (var i = 0; i < rowCnt; i++) {
					$('div[valueStatus="'+i+'"]').hide();
				}
				*/
				
				//console.log("row 수"+ rowCnt);
				
				let bx5Checked = $('#bx1').is(':checked');
				let bx4Checked = $('#bx2').is(':checked');
				let bx3Checked = $('#bx3').is(':checked');
				let bx2Checked = $('#bx4').is(':checked');
				let bx1Checked = $('#bx5').is(':checked');
				let bx0Checked = $('#bx6').is(':checked');
				
				checkboxCheck(bx0Checked,bx1Checked,bx2Checked,bx3Checked,bx4Checked,bx5Checked);
				
			});
			
				
			
			
			
		});
		<!--load On function End-->
		function restRequestCallback(result){

			//console.log('result::'+result);
			//let jsonStringify = JSON.stringify(result);
			//console.log("jsonStringify::"+jsonStringify);
			//console.log("result.list.length-->"+result.list.length);
			//console.log("$('div[mkattr=search]').length -->"+$('div[mkattr="search"]').length);
			//console.log("json.startRowNum->"+result.startRowNum);
			//console.log("json.endRowNum->"+result.endRowNum);
			//console.log("restListPage.startRowNum -->"+${restListPage.startRowNum});
			//console.log("restListPage.startRowNum -->"+${restListPage.endRowNum});
			//console.log("currentPageno ==>" + ${currentPageno});
			//console.log("restListPage2-->"+${restListPage2});
		
			let showRowAjax;
			for (var i = 0; i < result.list.length; i++) {
				//시작 로우 부터 끝로우 까지만 show() 나머지는 hide()!!
				
				//let jsonStringify = JSON.stringify(result);
				//console.log("jsonStringify::"+jsonStringify); 
				/*
				showRowAjax = $('div[valueStatus="'+i+'"]').attr("valueStatus");
				if(result.startRowNum -1<= showRowAjax
						&& result.endRowNum -1 >= showRowAjax){
					$('div[valueStatus="'+i+'"]').show();
				}else{
					//console.log("흠???");
					$('div[valueStatus="'+i+'"]').hide();
				}
				*/
				//showRowAjax = $('div[valueStatus="'+i+'"]').attr("valueStatus"); =i
				if(result.startRowNum -1<= i
						&& result.endRowNum -1 >= i){
					$('div[valueStatus="'+i+'"]').show();
				}else{
					//console.log("흠???");
					$('div[valueStatus="'+i+'"]').hide();
				}
				//console.log("i::"+i);
				$('div[valueStatus='+i+'] h3 > strong').text(result.list[i].pname);
				$('div[valueStatus='+i+'] .tour_list_desc p').text(result.list[i].pdesc);
				//console.log("result rate[i] ==>" + i + "--->"+result.list[i].prate);
				document.querySelector('.row .tour_list_desc > .rating > small').firstChild.nodeValue = "("+result.list[i].prate+")";
				let priceParentNode = document.querySelector('div[valueStatus="'+i+'"] .price_list  label' );
				priceParentNode.firstChild.nodeValue="￦"+ numberWithCommas(result.list[i].pprice);
			
			
			}
			
			document.querySelectorAll('.tour_list_desc > .rating > small').forEach(function(elt, i) {
				let eltParentNode = elt.parentNode;
				$(elt.parentNode).empty();
				let prate = result.list[i].prate;
				
				
				if(prate==0){
					for (var j = 0; j < 5; j++) {
						let Itag = document.createElement("i");
						Itag.setAttribute('class','icon-smile');
						eltParentNode.appendChild(Itag);
					}
					
				}else if(prate==1){
					for (var j = 0; j < 5; j++) {
						if(j<1){
							let Itag = document.createElement("i");
							Itag.setAttribute('class','icon-smile voted');
							eltParentNode.appendChild(Itag);
						}else{
							let Itag = document.createElement("i");
							Itag.setAttribute('class','icon-smile');
							eltParentNode.appendChild(Itag);
						}
					}
					
				}else if(prate==2){
					for (var j = 0; j < 5; j++) {
						if(j<2){
							let Itag = document.createElement("i");
							Itag.setAttribute('class','icon-smile voted');
							eltParentNode.appendChild(Itag);
						}else{
							let Itag = document.createElement("i");
							Itag.setAttribute('class','icon-smile');
							eltParentNode.appendChild(Itag);
						}
					}
					
				}else if(prate==3){
					for (var j = 0; j < 5; j++) {
						if(j<3){
							let Itag = document.createElement("i");
							Itag.setAttribute('class','icon-smile voted');
							eltParentNode.appendChild(Itag);
						}else{
							let Itag = document.createElement("i");
							Itag.setAttribute('class','icon-smile');
							eltParentNode.appendChild(Itag);
						}
					}
					
				
				}else if(prate==4){
					for (var j = 0; j < 5; j++) {
						if(j<4){
							let Itag = document.createElement("i");
							Itag.setAttribute('class','icon-smile voted');
							eltParentNode.appendChild(Itag);
						}else{
							let Itag = document.createElement("i");
							Itag.setAttribute('class','icon-smile');
							eltParentNode.appendChild(Itag);
						}
					}
					
				}else if(prate==5){
					for (var j = 0; j < 5; j++) {
						let Itag = document.createElement("i");
						Itag.setAttribute('class','icon-smile voted');
						eltParentNode.appendChild(Itag);
					}
					
				}
				
				
				let smallTag =  document.createElement("small");
				let smallTxtNode = document.createTextNode("("+prate+")");
				smallTag.appendChild(smallTxtNode);	
				eltParentNode.appendChild(smallTag);
				
				let bx5Checked = $('#bx1').is(':checked');
				let bx4Checked = $('#bx2').is(':checked');
				let bx3Checked = $('#bx3').is(':checked');
				let bx2Checked = $('#bx4').is(':checked');
				let bx1Checked = $('#bx5').is(':checked');
				let bx0Checked = $('#bx6').is(':checked');
				
				if(bx5Checked || bx4Checked || bx3Checked || bx2Checked || bx1Checked || bx0Checked){
					checkboxCheck(bx0Checked,bx1Checked,bx2Checked,bx3Checked,bx4Checked,bx5Checked);
				}
				
				/*
				let Itag = document.createElement("i");
				Itag.setAttribute('class','icon-smile voted');
				let smallTag =  document.createElement("small");
				let smallTxtNode = document.createTextNode(prate);
				smallTag.appendChild(smallTxtNode);
				eltParentNode.appendChild(Itag);
				eltParentNode.appendChild(smallTag);
				*/
				//elt.innerHTML = "("+result.list[i].prate+")";
				
			});
			
		}
		
		
		function checkboxCheck(bx0Checked, bx1Checked, bx2Checked, bx3Checked, bx4Checked, bx5Checked){
			let rowCnt = $('div[mkattr="search"]').length;
			for (var i = 0; i < rowCnt; i++) {
				$('div[valueStatus="'+i+'"]').hide();
			}
			
			//console.log("bx0Checked-->"+ bx0Checked);
			//console.log("bx1Checked-->"+ bx1Checked);
			//console.log("bx2Checked-->"+ bx2Checked);
			//console.log("bx3Checked-->"+ bx3Checked);
			//console.log("bx4Checked-->"+ bx4Checked);
			//console.log("bx5Checked-->"+ bx5Checked);
			
			  if(bx0Checked){ //0<= x <= 2
				  console.log("bx1 checked!!!!");
			  	  document.querySelectorAll('div[class="row"] div[class="rating"] > small').forEach(function(elt,i){
			  		  let prate_0_str = elt.firstChild.nodeValue;
			  		  let prate_0_1 = prate_0_str.replace("(","");
			  		  let prate_0_2 = prate_0_1.replace(")","");
			  		  let prate_0 = Number(prate_0_2);
			  		  
			  		  //console.log("prate_0 ::" + prate_0);
			  		  if(prate_0 == 0){
			  			$('div[valueStatus="'+i+'"]').show();
			  		  }
			  	  });
			  }else{
				  document.querySelectorAll('div[class="row"] div[class="rating"] > small').forEach(function(elt,i){
			  		  let prate_0_str = elt.firstChild.nodeValue;
			  		  let prate_0_1 = prate_0_str.replace("(","");
			  		  let prate_0_2 = prate_0_1.replace(")","");
			  		  let prate_0 = Number(prate_0_2);
			  		  //console.log("prate_0 ::" + prate_0_2);
			  		  if(prate_0==0){
			  			$('div[valueStatus="'+i+'"]').hide();
			  		  }
			  	  });
			  }
			
			
			  if(bx1Checked){ //0<= x <= 2
				  //console.log("bx1 checked!!!!");
			  	  document.querySelectorAll('div[class="row"] div[class="rating"] > small').forEach(function(elt,i){
			  		  let prate_0_2_str = elt.firstChild.nodeValue;
			  		  let prate_0_2_1 = prate_0_2_str.replace("(","");
			  		  let prate_0_2_2 = prate_0_2_1.replace(")","");
			  		  let prate_0_2 = Number(prate_0_2_2);
			  		  
			  		  //console.log("prate_0_2 ::" + prate_0_2);
			  		  if(prate_0_2>0 && prate_0_2<=2){
			  			$('div[valueStatus="'+i+'"]').show();
			  		  }
			  	  });
			  }else{
				  document.querySelectorAll('div[class="row"] div[class="rating"] > small').forEach(function(elt,i){
			  		  let prate_0_2_str = elt.firstChild.nodeValue;
			  		  let prate_0_2_1 = prate_0_2_str.replace("(","");
			  		  let prate_0_2_2 = prate_0_2_1.replace(")","");
			  		  let prate_0_2 = Number(prate_0_2_2);
			  		  //console.log("prate_0_2 ::" + prate_0_2);
			  		  if(prate_0_2>0 && prate_0_2<= 2){
			  			$('div[valueStatus="'+i+'"]').hide();
			  		  }
			  	  });
			  }
			  
			  if(bx2Checked){ //2<= x <4
				  //console.log("bx2 checked!!!!");
				  document.querySelectorAll('div[class="row"] div[class="rating"] > small').forEach(function(elt,i){
			  		  let prate_2_4_str = elt.firstChild.nodeValue;
			  		  let prate_2_4_1 = prate_2_4_str.replace("(","");
			  		  let prate_2_4_2 = prate_2_4_1.replace(")","");
			  		  let prate_2_4 = Number(prate_2_4_2);
			  		  //console.log("prate_2_4 ::" + prate_2_4);
			  		  if(prate_2_4>2 && prate_2_4<= 4){
			  			$('div[valueStatus="'+i+'"]').show();
			  		  }
			  	  });
			  }else{
				  document.querySelectorAll('div[class="row"] div[class="rating"] > small').forEach(function(elt,i){
			  		  let prate_2_4_str = elt.firstChild.nodeValue;
			  		  let prate_2_4_1 = prate_2_4_str.replace("(","");
			  		  let prate_2_4_2 = prate_2_4_1.replace(")","");
			  		  let prate_2_4 = Number(prate_2_4_2);
			  		  //console.log("prate_2_4 ::" + prate_2_4);
			  		  if(prate_2_4>2 && prate_2_4<= 4){
			  			$('div[valueStatus="'+i+'"]').hide();
			  		  }
			  	  });
			  }
			  if(bx3Checked){ //4<= x <6
				  //console.log("bx3 checked!!!!");
				  document.querySelectorAll('div[class="row"] div[class="rating"] > small').forEach(function(elt,i){
			  		  let prate_4_6_str = elt.firstChild.nodeValue;
			  		  let prate_4_6_1 = prate_4_6_str.replace("(","");
			  		  let prate_4_6_2 = prate_4_6_1.replace(")","");
			  		  let prate_4_6 = Number(prate_4_6_2);
			  		  //console.log("prate_4_6 ::" + prate_4_6);
			  		  if(prate_4_6>4 && prate_4_6<= 6){
			  			$('div[valueStatus="'+i+'"]').show();
			  		  }
			  	  });
			  }else{
				  document.querySelectorAll('div[class="row"] div[class="rating"] > small').forEach(function(elt,i){
			  		  let prate_4_6_str = elt.firstChild.nodeValue;
			  		  let prate_4_6_1 = prate_4_6_str.replace("(","");
			  		  let prate_4_6_2 = prate_4_6_1.replace(")","");
			  		  let prate_4_6 = Number(prate_4_6_2);
			  		  //console.log("prate_4_6 ::" + prate_4_6);
			  		  if(prate_4_6>4 && prate_4_6<= 6){
			  			$('div[valueStatus="'+i+'"]').hide();
			  		  }
			  	  });
			  }
			  if(bx4Checked){ //6<= x <8
				  //console.log("bx4 checked!!!!");
				  document.querySelectorAll('div[class="row"] div[class="rating"] > small').forEach(function(elt,i){
			  		  let prate_6_8_str = elt.firstChild.nodeValue;
			  		  let prate_6_8_1 = prate_6_8_str.replace("(","");
			  		  let prate_6_8_2 = prate_6_8_1.replace(")","");
			  		  let prate_6_8 = Number(prate_6_8_2);
			  		  //console.log("prate_6_8 ::" + prate_6_8);
			  		  if(prate_6_8>6 && prate_6_8<=8){
			  			$('div[valueStatus="'+i+'"]').show();
			  		  }
			  	  });
			  }else{
				  document.querySelectorAll('div[class="row"] div[class="rating"] > small').forEach(function(elt,i){
					  let prate_6_8_str = elt.firstChild.nodeValue;
			  		  let prate_6_8_1 = prate_6_8_str.replace("(","");
			  		  let prate_6_8_2 = prate_6_8_1.replace(")","");
			  		  let prate_6_8 = Number(prate_6_8_2);
			  		  //console.log("prate_6_8 ::" + prate_6_8);
			  		  if(prate_6_8>6 && prate_6_8<= 8){
			  			$('div[valueStatus="'+i+'"]').hide();
			  		  }
			  	  });
			  }
			  if(bx5Checked){ //8<= x <10
				  //console.log("bx5 checked!!!!");
				  document.querySelectorAll('div[class="row"] div[class="rating"] > small').forEach(function(elt,i){
					  let prate_8_10_str = elt.firstChild.nodeValue;
			  		  let prate_8_10_1 = prate_8_10_str.replace("(","");
			  		  let prate_8_10_2 = prate_8_10_1.replace(")","");
			  		  let prate_8_10 = Number(prate_8_10_2);
			  		  if(prate_8_10>8 && prate_8_10<=10){
			  			$('div[valueStatus="'+i+'"]').show();
			  		  }
			  	  });
			 
			  }else{
				  document.querySelectorAll('div[class="row"] div[class="rating"] > small').forEach(function(elt,i){
					  let prate_8_10_str = elt.firstChild.nodeValue;
			  		  let prate_8_10_1 = prate_8_10_str.replace("(","");
			  		  let prate_8_10_2 = prate_8_10_1.replace(")","");
			  		  let prate_8_10 = Number(prate_8_10_2);
			  		  //console.log("prate_8_10 ::" + prate_8_10);
			  		  if(prate_8_10>8 && prate_8_10<=10){
			  			$('div[valueStatus="'+i+'"]').hide();
			  		  }
			  	  });
			  }
		}
		
		
	</script>
	
</body>

</html>