<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
	<meta name="author" content="Ansonika">
	<title>CITY TOURS - City tours and travel site template by Ansonika</title>

	<!-- Favicons-->
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/apple-touch-icon-57x57-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/img/apple-touch-icon-72x72-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/img/apple-touch-icon-114x114-precomposed.png">
	

    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="${pageContext.request.contextPath}/resources/img/apple-touch-icon-144x144-precomposed.png"><!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Gochi+Hand|Montserrat:300,400,700" rel="stylesheet">
	
	<!-- CSS -->
	<link href="${pageContext.request.contextPath}/resources/css/blog.css" rel="stylesheet">
	
	
	<!-- Header================================================== -->
	<jsp:include page="z.references/common_header_6.jsp"/>
	<!-- End Header -->

	<section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/img/bg_blog.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>Tour Blog</h1>
				<p>Ridiculus sociosqu cursus neque cursus curae ante scelerisque vehicula.</p>
			</div>
		</div>
	</section>
	<!-- End section -->

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
				<div class="col-lg-9">
					<div class="box_style_1">
					<input type="hidden" name="bNo" id="bNo" value="${blogView}">
						<div class="post nopadding">
							<img src="${pageContext.request.contextPath}/resources/img/blog-1.jpg" alt="Image" class="img-fluid">
							<div class="post_info clearfix">
								<div class="post-left">
									<ul>
										<li><i class="icon-calendar-empty"></i>On <span>${blogView.bDate}</span>
										</li>
										<li><i class="icon-inbox-alt"></i>In <a href="#">Top tours</a>
										</li>
										<li><i class="icon-tags"></i>Tags <a href="#">Works</a> <a href="#">Personal</a>
										</li>
									</ul>
								</div>
								<div class="post-right"><i class="icon-comment"></i><a href="#">25</a>Comments</div>
							</div>
							<h2>${blogView.bTitle}</h2>
							<p>
								${blogView.bContent}
							</p>
							<p>
								Aenean iaculis sodales dui, non hendrerit lorem rhoncus ut. Pellentesque ullamcorper venenatis elit idaipiscingi Duis tellus neque, tincidunt eget pulvinar sit amet, rutrum nec urna. Suspendisse pretium laoreet elit vel ultricies. Maecenas ullamcorper ultricies rhoncus. Aliquam erat volutpat.
							</p>
							
							<blockquote class="styled">
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </p>
								<small>Someone famous in <cite title="">Body of work</cite></small>
							</blockquote>
								<form action="blog_right_sidebar">
									<c:if test="${blogView.mNo == sUser.mNo}">
									<a href="#" class="btn_1" data-toggle="modal"
										data-target="#myReview">Update</a>
									<input type="button" id="delete_blog_post" class="btn_1" value="Delete">
									</c:if>
								</form>
						</div>
						
						<!-- end post -->
					</div>
					<!-- end box_style_1 -->



					<h4>${size} comments</h4>

					<div id="comments">
						<ol>
						<c:forEach var="i" begin="1" end="${size}">
						<c:forEach var="blogReview" items="${blogReviewList}">
						<c:if test="${blogReview.brGroup == i}">
							
							<c:if test="${blogReview.brDepth == 1}">
								<li>
									brGroup: ${blogReview.brGroup}, brStep: ${blogReview.brStep}, brDepth: ${blogReview.brDepth}
									<div class="avatar"><a href="#"><img src="${pageContext.request.contextPath}/resources/img/avatar1.jpg" alt="Image"></a></div>
									<div class="comment_right clearfix">
										<div class="comment_info">
											Posted by: <a href="#">ToriTori</a><span>|</span> ${blogReview.brDate} <span>|</span><a href="#">Reply</a>
										</div><p>${blogReview.brContent}</p>
									</div>
								</li>
							</c:if>
							
							<c:forEach var="j" begin="2" end="${size}">
								<c:if test="${blogReview.brStep == j}">
									<c:if test="${blogReview.brDepth == 2}">
										<li style="padding-left: 70px">
											brGroup: ${blogReview.brGroup}, brStep: ${blogReview.brStep}, brDepth: ${blogReview.brDepth}
											<div class="avatar"><a href="#"><img src="${pageContext.request.contextPath}/resources/img/avatar2.jpg" alt="Image"></a></div>
											<div class="comment_right clearfix">
												<div class="comment_info">
													Posted by: <a href="#">ToriTori</a><span>|</span> ${blogReview.brDate} <span>|</span><a href="#">Reply</a>
												</div><p>${blogReview.brContent}</p>
											</div>
										</li>
									</c:if>
									
									<c:if test="${blogReview.brDepth == 3}">
									<li style="padding-left: 140px">
										brGroup: ${blogReview.brGroup}, brStep: ${blogReview.brStep}, brDepth: ${blogReview.brDepth}
										<div class="avatar"><a href="#"><img src="${pageContext.request.contextPath}/resources/img/avatar3.jpg" alt="Image"></a></div>
										<div class="comment_right clearfix">
											<div class="comment_info">
												Posted by: <a href="#">ToriTori</a><span>|</span> ${blogReview.brDate} 
											</div><p>${blogReview.brContent}</p>
										</div>
									</li>
								</c:if>
								</c:if>
							</c:forEach>
							
							
						</c:if>
						</c:forEach>
						</c:forEach>
						</ol>
					</div>
					<!-- End Comments -->


					<h4>Leave a comment</h4>
					<form action="#" method="post">
						<div class="form-group">
							<input class="form-control style_2" type="text" name="name" placeholder="Enter name">
						</div>
						<div class="form-group">
							<input class="form-control style_2" type="text" name="mail" placeholder="Enter email">
						</div>
						<div class="form-group">
							<textarea name="message" class="form-control style_2" style="height:150px;" placeholder="Message"></textarea>
						</div>
						<div class="form-group">
							<input type="reset" class="btn_1" value="Clear form" />
							<input type="submit" class="btn_1" value="Post Comment" />
						</div>
					</form>
				</div>
				<!-- End col-md-8-->

				<aside class="col-lg-3 add_bottom_30">

					<div class="widget">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search...">
							<span class="input-group-btn">
						<button class="btn btn-default" type="button" style="margin-left:0;"><i class="icon-search"></i></button>
						</span>
						</div>
						<!-- /input-group -->
					</div>
					<!-- End Search -->
					<hr>
					<div class="widget" id="cat_blog">
						<h4>Categories</h4>
						<ul>
							<li><a href="#">Places to visit</a>
							</li>
							<li><a href="#">Top tours</a>
							</li>
							<li><a href="#">Tips for travellers</a>
							</li>
							<li><a href="#">Events</a>
							</li>
						</ul>
					</div>
					<!-- End widget -->

					<hr>

					<div class="widget">
						<h4>Recent post</h4>
						<ul class="recent_post">
							<li>
								<i class="icon-calendar-empty"></i> 16th July, 2020
								<div><a href="#">It is a long established fact that a reader will be distracted </a>
								</div>
							</li>
							<li>
								<i class="icon-calendar-empty"></i> 16th July, 2020
								<div><a href="#">It is a long established fact that a reader will be distracted </a>
								</div>
							</li>
							<li>
								<i class="icon-calendar-empty"></i> 16th July, 2020
								<div><a href="#">It is a long established fact that a reader will be distracted </a>
								</div>
							</li>
						</ul>
					</div>
					<!-- End widget -->
					<hr>
					<div class="widget tags">
						<h4>Tags</h4>
						<a href="#">Lorem ipsum</a>
						<a href="#">Dolor</a>
						<a href="#">Long established</a>
						<a href="#">Sit amet</a>
						<a href="#">Latin words</a>
						<a href="#">Excepteur sint</a>
					</div>
					<!-- End widget -->

				</aside>
				<!-- End aside -->

			</div>
			<!-- End row-->
		</div>
		<!-- End container -->
	</main>
	<!-- End main -->
	<!-- Modal Update -->
<div class="modal fade" id="myReview" tabindex="-1" role="dialog"
	aria-labelledby="myReviewLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myReviewLabel">Update your Blog</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div id="message-review"></div>
				<form method="post"
					action="review_write"
					name="review_hotel" id="review_hotel">
					<input name="hotel_name" id="hotel_name" type="hidden"
						value="Mariott Hotel Paris">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>First Name</label>
								<input name="name_review" id="name_review" type="text"
									placeholder="Your name" class="form-control" value="${sUser.mFirstName}" readonly="readonly">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>Last Name</label>
								<input name="lastname_review" id="lastname_review" type="text"
									placeholder="Your last name" class="form-control"  value="${sUser.mLastName}" readonly="readonly">
							</div>
						</div>
					</div>

					<!-- End row -->

					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>Email Address</label>
								<input name="email_review" id="email_review" type="email"
									placeholder="Your email" class="form-control" value="${sUser.mEmail}" readonly="readonly">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>Room Type</label>
								<!--  <input name="email_review" id="email_review" type="email"
									placeholder="Your email" class="form-control" value="" readonly="readonly">
								-->
								<select class="form-control" name="room_type_review"
									id="room_type_review">
									<option value="">Select room type</option>
									<option value="Single room">Single Room</option>
									<option value="Double Room">Double Room</option>
									<option value="King double room">King Double Room</option>
								</select>
							</div>
						</div>
					</div>

					<!-- End row -->

					<hr>
					
					<div class="col-md-6">
							<div class="form-group">
								<label>Blog Title</label>
								<input type="text" name="update_blogTitle"
									 class="form-control" value="" >
							</div>
						</div>
				
					
							<div class="form-group">
								<label>Blog Title</label> <select class="form-control"
									name="price_review" id="price_review">
								
							</div>
								
								
					</div>

					<!-- End row -->
					<div class="form-group">
						<textarea name="rContent" id="rContent" class="form-control"
								  style="height: 100px" placeholder="Update your Blog"></textarea>
					</div>
					<br>
					<input type="submit" value="Submit" class="btn_1"
						   id="submit-review">
				</form>
			</div>
		</div>
	</div>
</div>
<!-- End modal review -->

	<!-- Footer================================================== -->
	<jsp:include page="z.references/common_footer_2.jsp"/>
	<!-- End Footer -->

</body>

</html>