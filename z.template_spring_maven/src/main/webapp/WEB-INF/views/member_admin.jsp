<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->

	<section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/img/admin_top.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>Hello ${sUser.mId}!</h1>
				<p>HAVE A GOOD DAY!!</p>
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
					<li><a href="#">Category</a>
					</li>
					<li>Page active</li>
				</ul>
			</div>
		</div>
		<!-- End Position -->

		<div class="margin_60 container">
			<div id="tabs" class="tabs">
				<nav>
					<ul>
						<li><a href="#section-1" class="icon-booking"><span>Bookings</span></a>
						</li>
						<li><a href="#section-2" class="icon-wishlist"><span>Wishlist</span></a>
						</li>
						<li><a href="#section-3" class="icon-settings"><span>Settings</span></a>
						</li>
						<li><a href="#section-4" class="icon-profile"><span>Profile</span></a>
						</li>
					</ul>
				</nav>
				<div class="content">

					<section id="section-1">
						<c:forEach var="jumunDetail" items="${jumunDetailList}">
							<div class="strip_booking">
								<div class="row">
									<div class="col-lg-2 col-md-2">
										<div class="date">
											<span class="month">${jumunDetail.jdDy}</span>
											<span class="day"><strong>${jumunDetail.jdDd}</strong>${jumunDetail.jdMon}</span>
										</div>
									</div>
									<div class="col-lg-6 col-md-5">
										<h3 class="hotel_booking">Guest Name: ${jumunDetail.jGuest}<span>Total Price: ${jumunDetail.jdProductTot}</span></h3>
									</div>
									<div class="col-lg-2 col-md-3">
										<ul class="info_booking">
											<li><strong>Booking id</strong>${jumunDetail.jdNo}</li>
											<li><strong>Booked on</strong> ${jumunDetail.jdOrderDate}</li>
										</ul>
									</div>
									<div class="col-lg-2 col-md-2">
										<div class="booking_buttons">
											<a href="member_jumunDetail_detail?jdNo=${jumunDetail.jdNo}" class="btn_2">See Detail</a>
											<c:if test="${jumunDetail.jdIfCanCancel > 7}">
												<a href="member_cancelJumunDetail?jdNo=${jumunDetail.jdNo}" class="btn_3">Cancel</a>
											</c:if>
										</div>
									</div>
								</div>
								<!-- End row -->
							</div>
							<!-- End strip booking -->
						</c:forEach>
						<c:forEach var="jumunDetailCancel" items="${jumunDetailCancelList}">
							<div class="strip_booking">
								<div class="row">
									<div class="col-lg-2 col-md-2">
										<div class="date">
											<span class="month">${jumunDetailCancel.jdDy}</span>
											<span class="day"><strong>${jumunDetailCancel.jdDd}</strong>${jumunDetailCancel.jdMon}</span>
										</div>
									</div>
									<div class="col-lg-6 col-md-5">
										<h1 class="hotel_booking" align="center">Canceled</h1>
									</div>
									<div class="col-lg-2 col-md-3">
										<ul class="info_booking">
											<li><strong>Booking id</strong>${jumunDetailCancel.jdNo}</li>
											<li><strong>Booked on</strong> ${jumunDetailCancel.jDate}</li>
										</ul>
									</div>
									<div class="col-lg-2 col-md-2">
										<div class="booking_buttons">
											<a href="member_jumunDetailCancel_detail?jdNo=${jumunDetailCancel.jdNo}" class="btn_2">See Detail</a>
										</div>
									</div>
								</div>
								<!-- End row -->
							</div>
							<!-- End strip booking -->
						</c:forEach>
					</section>
					<!-- End section 1 -->

					<section id="section-2">
						<div class="row">
							<c:forEach var="wishlist" items="${wishlistList}">
							<div class="col-lg-4 col-md-6" mNo="${sUser.mNo}" pNo="${wishlist.pNo}">
								<div class="hotel_container">
									<div class="img_container">
										<a href="tour_detail?pNo=${wishlist.pNo}">
											<img src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/${wishlist.pName}1.jpg" width="800" height="533" class="img-fluid" alt="Image">
											<div class="ribbon top_rated">
											</div>
											<div class="score">
												<span>${wishlist.pRate}</span>Good
											</div>
											<div class="short_info hotel">
												From/Per night<span class="price"><sup></sup>${wishlist.pPrice}</span>
											</div>
										</a>
									</div>
									<div class="hotel_title">
										<h3><strong>${wishlist.pName}</strong> ${wishlist.pType}</h3>
										<div class="rating">
											<c:choose>
												<c:when test="${wishlist.pRate == 1}">
													<i class="icon-star voted"></i>
													<i class="icon-star-empty"></i>
													<i class="icon-star-empty"></i>
													<i class="icon-star-empty"></i>
													<i class="icon-star-empty"></i>
												</c:when>
												<c:when test="${wishlist.pRate == 2}">
													<i class="icon-star voted"></i>
													<i class="icon-star voted"></i>
													<i class="icon-star-empty"></i>
													<i class="icon-star-empty"></i>
													<i class="icon-star-empty"></i>
												</c:when>
												<c:when test="${wishlist.pRate == 3}">
													<i class="icon-star voted"></i>
													<i class="icon-star voted"></i>
													<i class="icon-star voted"></i>
													<i class="icon-star-empty"></i>
													<i class="icon-star-empty"></i>
												</c:when>
												<c:when test="${wishlist.pRate == 4}">
													<i class="icon-star voted"></i>
													<i class="icon-star voted"></i>
													<i class="icon-star voted"></i>
													<i class="icon-star voted"></i>
													<i class="icon-star-empty"></i>
												</c:when>
												<c:when test="${wishlist.pRate == 5}">
													<i class="icon-star voted"></i>
													<i class="icon-star voted"></i>
													<i class="icon-star voted"></i>
													<i class="icon-star voted"></i>
													<i class="icon-star voted"></i>
												</c:when>
												<c:otherwise>
													<i class="icon-star-empty"></i>
													<i class="icon-star-empty"></i>
													<i class="icon-star-empty"></i>
													<i class="icon-star-empty"></i>
													<i class="icon-star-empty"></i>
													<i class="icon-star-empty"></i>
												</c:otherwise>
											</c:choose>
										</div>
										<!-- end rating -->
										<div class="wishlist_close_admin">-</div>
									</div>
								</div>
								<!-- End box tour -->
							</div>
							<!-- End col-md-6 -->
							</c:forEach>
						</div>
						<!-- End row -->
						<a href="#" class="btn_1 green" data-toggle="modal" data-target="#memberAddWishlist">Update wishlist</a>
					</section>
					<!-- End section 2 -->

					<section id="section-3">
						<div class="row">
							<div class="col-md-6 add_bottom_30">
								<form id="f3-1" method="post" action="javascript:updatePassword();">
									<h4>Change your password</h4>
									<input type="hidden" id="password1" value="${sUser.mPassword}">
									<input type="hidden" id="password2" value="${sUser.mTempPassword}">
									<div class="form-group">
										<label>Old password</label>
										<input class="form-control" name="old_password" id="old_password" type="password">
									</div>
									<div class="form-group">
										<label>New password</label>
										<input class="form-control" name="new_password" id="new_password" type="password">
									</div>
									<div class="form-group">
										<label>Confirm new password</label>
										<input class="form-control" name="confirm_password" id="confirm_new_password" type="password">
									</div>
									<button type="submit" class="btn_1 green">Update Password</button>
								</form>
							</div>
							<div class="col-md-6 add_bottom_30">
								<form id="f3-2" method="post" action="javascript:updateEmail();">
									<h4>Change your email</h4>
									<input type="hidden" id="email1" value="${sUser.mEmail}">
									<div class="form-group">
										<label>Old Email</label>
										<input class="form-control" name="old_email" id="old_email" type="text" value="${sUser.mEmail}">
									</div>
									<div class="form-group">
										<label>New Email</label>
										<input class="form-control" name="new_email" id="new_email" type="text">
									</div>
									<div class="form-group">
										<label>Comfirm Email</label>
										<input class="form-control" name="confirm_email" id="confirm_new_email" type="text">
									</div>
									<button type="submit" class="btn_1 green">Update Email</button>
								</form>
							</div>
						</div>
						<!-- End row -->
						<hr>
						<br>
						<div class="row">
							<div class="col-lg-6">
							<form method="post" action="member_delete">
								<h4>Delete Account</h4>
								<table class="table table-striped options_cart">
									<tbody>
										<tr>
											<td style="width:10%"><i class=" icon_set_1_icon-17"></i></td>
											<td style="width:60%">Deactive Account and Save Informations for 30 days</td>
											<td style="width:35%">
												<label class="switch-light switch-ios pull-right">
													<input type="checkbox" name="option_1" id="option_1" checked>
													<span>
													<span>No</span>
													<span>Yes</span>
													</span>
													<a></a>
												</label>
											</td>
										</tr>
									</tbody>
								</table>
								<br>
								<button type="submit" class="btn_1 green">Delete Account</button>
							</form>
							</div>
						</div>
						<!-- End row -->
					</section>
					<!-- End section 3 -->

					<section id="section-4">
					<form id="f4" action="javascript:updateMember();" method="post">
						<div class="row">
							<div class="col-md-6">
								<h4>Your profile</h4>
								<ul id="profile_summary">
									<li>Username <span>${sUser.mId}</span>
									</li>
									<li>First name <span>${sUser.mFirstName}</span>
									</li>
									<li>Last name <span>${sUser.mLastName}</span>
									</li>
									<li>Email <span>${sUser.mEmail}</span>
									</li>
									<li>Phone number <span>${sUser.mTel}</span>
									</li>
									<li>Date of birth <span>${sUser.mBirth}</span>
									</li>
									<li>Street address <span>${sUser.mAddress}</span>
									</li>
									<li>Town/City <span>${sUser.mCity}</span>
									</li>
									<li>Zip code <span>${sUser.mZipCode}</span>
									</li>
									<li>Country <span>${sUser.mCountry}</span>
									</li>
								</ul>
							</div>
							<div class="col-md-6">
								<p>
								<c:choose>
									<c:when test="${sUser.mImg != null and sUser.mImg ne ''}">
										<img src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/member/${sUser.mImg}" width="250" height="250" alt="Image" class="img-fluid styled profile_pic">
									</c:when>
									<c:otherwise>
										<img src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/member/member.jpg" width="250" height="250" alt="Image" class="img-fluid styled profile_pic">
									</c:otherwise>
								</c:choose>
								</p>
							</div>
						</div>
						<!-- End row -->

						<div class="divider"></div>
						
						<div class="row">
							<div class="col-md-12">
								<h4>Edit profile</h4>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>First name</label>
									<input class="form-control" name="first_name" id="first_name" type="text" value="${sUser.mFirstName}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Last name</label>
									<input class="form-control" name="last_name" id="last_name" type="text" value="${sUser.mLastName}">
								</div>
							</div>
						</div>
						<!-- End row -->

						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Phone number</label>
									<input class="form-control" name="tel" id="tel" type="text" value="${sUser.mTel}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Date of birth <small>YYYYMMDD</small>
									</label>
									<input class="form-control" name="birth" id="birth" type="text" value="${sUser.mBirth}">
								</div>
							</div>
						</div>
						<!-- End row -->
						
						<br>
						<div class="row">
							<div class="col-md-12">
								<h4>Edit address</h4>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Street address</label>
									<input class="form-control" name="address" id="address" type="text" value="${sUser.mAddress}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>City/Town</label>
									<input class="form-control" name="city" id="city" type="text" value="${sUser.mCity}">
								</div>
							</div>
						</div>
						<!-- End row -->

						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Zip code</label>
									<input class="form-control" name="zipcode" id="zipcode" type="text" value="${sUser.mZipCode}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Country</label>
									<input type="hidden" id="countryCheck" value="${sUser.mCountry}">
									<select id="country" class="form-control" name="country">
										<option value="U.S.A">United States</option>
										<option value="U.K">United Kingdom</option>
										<option value="CANADA">CANADA</option>
										<option value="KOREA">KOREA</option>
										<option value="CHINA">CHINA</option>
									</select>
								</div>
							</div>
						</div>
						<!-- End row -->
						<button type="submit" class="btn_1 green">Update Profile</button>
					</form>

					<hr>
					<form id="form1" name="form1" action="member_mypage" method="post">
						<h4>Upload profile photo</h4>
						<!-- Drop Zone -->
						<div id="attachFile" style="width: 100%;"></div>
						<br>
						<button type="submit" class="btn_1 green" id="js-upload-submit" onclick="formSubmit()">Upload file</button>
					</form>
					<hr>
					</section>
					<!-- End section 4 -->

					</div>
					<!-- End content -->
				</div>
				<!-- End tabs -->
			</div>
			<!-- end container -->
		<input type="hidden" id="inputMsg" value="${inputMsg}">
		<input type="hidden" id="alertMsg" value="${alertMsg}">
	</main>
	<!-- End main -->
	
	
	<!-- Footer================================================== -->
	<jsp:include page="common_footer_2.jsp"/>
	<!-- End Footer -->

	<!-- Specific scripts -->
	<script src="${pageContext.request.contextPath}/resources/js/tabs.js"></script>
	
	<script>
		var inputMsg = $("#inputMsg").val();
		if (inputMsg == 1) {
			new CBPFWTabs(document.getElementById('tabs'),{start : 1});
		} else if (inputMsg == 2) {
			new CBPFWTabs(document.getElementById('tabs'),{start : 2});
		} else if (inputMsg == 3) {
			new CBPFWTabs(document.getElementById('tabs'),{start : 3});
		} else {
			new CBPFWTabs(document.getElementById('tabs'));
		}
	</script>
	
	<script type="text/javascript">
		$(function() {
			var alertMsg = $("#alertMsg").val();
			if (alertMsg != null && alertMsg != "") {
				alert(alertMsg);
			}
			
			var country = $("#countryCheck").val();
			if (country == null || country.trim() == "" || country == "U.S.A") {
				window.f4.country[0].selected = true;
			}
			if (country == "U.K") {
				window.f4.country[1].selected = true;
			}
			if (country == "CANADA") {
				window.f4.country[2].selected = true;
			}
			if (country == "KOREA") {
				window.f4.country[3].selected = true;
			}
			if (country == "CHINA") {
				window.f4.country[4].selected = true;
			}
		});
	</script>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/gu-upload/guuploadManager.js"></script>
	<script type="text/javascript">
		var guManager = null;
		
		window.onload = function() {
			var option = {
				fileid: "attachFile",
				listtype: "thumbnail",
				uploadURL: "upload",
				maxFileSize: 100,
				maxFileCount: 1,
				useButtons: true,
				afterFileTransfer: afterFileTransfer
			}
			guManager = new guUploadManager(option);
		}	
		
		function formSubmit() {
			guManager.uploadFiles();
		}
		
		function afterFileTransfer(realname, filename, filesize) {
			var realname9 = document.getElementById("realname");
			var filename9 = document.getElementById("filename");
			var filesize9 = document.getElementById("filesize");
			
			realname9.value = realname;
			filename9.value = filename;
			filesize9.value = filesize;
			
			document.form1.submit();
		}
	</script>
	
</body>

</html>