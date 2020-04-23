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
	<jsp:include page="WEB-INF/views/common_header_6.jsp"/>
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
				<c:choose>
					<c:when test="${blogReviewSize != 0}">
						<div class="col-lg-9">
						<div class="box_style_1">
						<input type="hidden" name="bNo" id="bNo" value="${blog.bNo}">
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
									<div class="post-right"><i class="icon-comment"></i> ${blogReviewSize} Comments</div>
								</div>
								<h2>${blogView.bTitle}</h2>
								<p>
									${blogView.bContent}
								</p>
								<!-- 
								<blockquote class="styled">
									<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </p>
									<small>Someone famous in <cite title="">Body of work</cite></small>
								</blockquote>
								 -->
								<form action="blog_right_sidebar">
									<c:if test="${blogView.mNo == sUser.mNo}">
									<a href="#" class="btn_1" data-toggle="modal"
										data-target="#updateBlog">Update</a>
										
									<input type="submit" id="delete_blog_post" class="btn_1" value="Delete">
									</c:if>
								</form>
							</div>
							<!-- end post -->
						</div>
						<!-- end box_style_1 -->
	
						<h4>${blogReviewSize} comments</h4>
						<div id="comments">
							<ol>
							<c:forEach var="blogReview" items="${blogReviewList}">
								<li>
									<div class="avatar"><img height="100px" width="80px" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/member/${blogReview.mImg}" alt="Image"></div>
									<div class="comment_right clearfix">
										<div class="comment_info">
											Posted by: ${blogReview.mId} <span>|</span> ${blogReview.brDate} <c:if test="${sUser.mNo == blogReview.mNo}"><span>|</span> <a href="#">Modify</a> <span>|</span> <a href="#">Delete</a></c:if>
										</div>
										<p>${blogReview.brContent}</p>
									</div>
								</li>
								<hr>
							</c:forEach>
							<c:if test="${blogReviewSize==0}">
								<br><br><br>
								<li>
									<div class="avatar"></div>
									<div class="comment_right clearfix">
										<div class="comment_info">
											<blockquote class="styled">
												<p style="font-size: 25px;">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Leave a comment
												<p>
											</blockquote>
										</div>
									</div>
								</li>
								<hr>
							</c:if>
							</ol>
						</div>
						<!-- End Comments -->
	
							<h4>Leave a comment</h4>
							<form action="#" method="post">
								<input type="hidden" name="bNo" value="${blogView.bNo}">
								<div class="form-group">
									<label>User ID</label>
									<input class="form-control style_2" type="text" name="mId" placeholder="Enter user ID"  value="${sUser.mId}">
								</div>
								<div class="form-group">
									<label>Message</label>
									<textarea name="message" class="form-control style_2" style="height:150px;" placeholder="Message"></textarea>
								</div>
								<div class="form-group">
									<c:choose>
										<c:when test="${sUser != null and sUser != ''}">
											<input type="reset" class="btn_1" value="Clear form" />
											<input type="submit" class="btn_1" value="Post Comment" />
										</c:when>
										<c:otherwise>
											If you want to leave comments, pealse <a href="#sign-in-dialog" id="access_link4"><font color="red">Sign in</font></a> 
										</c:otherwise>
									</c:choose>
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
									<li><a href="#">Tour</a>
									</li>
									<li><a href="#">Hotel</a>
									</li>
									<li><a href="#">Facility</a>
									</li>
									<li><a href="#">Restaurant</a>
									</li>
								</ul>
							</div>
							<!-- End widget -->
		
							<hr>
		
							<div class="widget">
								<h4>Recent post</h4>
								<ul class="recent_post">
									<c:forEach var="recentBlog" items="${recentBlogList}">
										<li>
											<i class="icon-calendar-empty"></i> ${recentBlog.bDate}
											<div><a href="blog_post_right_sidebar?bNo=${recentBlog.bNo}">${recentBlog.bTitle}</a>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
							<!-- End widget -->
						</aside>
						<!-- End aside -->
					</c:when>
					
					<c:otherwise>
						<div class="col-lg-9">
							<div class="box_style_1">
							<input type="hidden" name="bNo" id="bNo" value="${blogView.bNo}">
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
										<div class="post-right"><i class="icon-comment"></i> No Comments</div>
									</div>
									<h2>${blogView.bTitle}</h2>
									<p>
										${blogView.bContent}
									</p>
									<form action="blog_right_sidebar" method="post">
										<c:if test="${blogView.mNo == sUser.mNo}">
										<a href="#" class="btn_1" data-toggle="modal"
											data-target="#updateBlog">Update</a>
											<input type="hidden" name="bNo" value="${blogView.bNo}">
										<input type="button" id="delete_blog_post" class="btn_1" value="Delete">
										</c:if>
									</form>
								</div>
								<!-- end post -->
							</div>
							<!-- end box_style_1 -->
	
							<h4>No comments</h4>
							<div id="comments">
								<ol>
								<br><br><br>
								<li>
									<div class="avatar"></div>
									<div class="comment_right clearfix">
										<div class="comment_info">
											<blockquote class="styled">
												<p style="font-size: 25px;">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Leave the first comment
												<p>
											</blockquote>
										</div>
									</div>
								</li>
								<hr>
								</ol>
							</div>
							<!-- End Comments -->
							
							<h4>Leave a comment</h4>
							<form action="#" method="post">
								<input type="hidden" name="bNo" value="${blogView.bNo}">
								<div class="form-group">
									<label>User ID</label>
									<input class="form-control style_2" type="text" name="mId" placeholder="Enter user ID" value="${sUser.mId}">
								</div>
								<div class="form-group">
									<label>Message</label>
									<textarea name="message" class="form-control style_2" style="height:150px;" placeholder="Message"></textarea>
								</div>
								<div class="form-group">
									<c:choose>
										<c:when test="${sUser != null and sUser != ''}">
											<input type="reset" class="btn_1" value="Clear form" />
											<input type="submit" class="btn_1" value="Post Comment" />
										</c:when>
										<c:otherwise>
											If you want to leave comments, pealse <a href="#sign-in-dialog" id="access_link4"><font color="red">Sign in</font></a> 
										</c:otherwise>
									</c:choose>
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
									<li><a href="#">Tour</a>
									</li>
									<li><a href="#">Hotel</a>
									</li>
									<li><a href="#">Facility</a>
									</li>
									<li><a href="#">Restaurant</a>
									</li>
								</ul>
							</div>
							<!-- End widget -->
							<hr>
							<div class="widget">
								<h4>Recent post</h4>
								<ul class="recent_post">
									<c:forEach var="recentBlog" items="${recentBlogList}">
										<li>
											<i class="icon-calendar-empty"></i> ${recentBlog.bDate}
											<div><a href="blog_post_right_sidebar?bNo=${recentBlog.bNo}">${recentBlog.bTitle}</a>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
							<!-- End widget -->
						</aside>
						<!-- End aside -->
					</c:otherwise>
				</c:choose>
				
			</div>
			<!-- End row-->
		</div>
		<!-- End container -->
	</main>
	<!-- End main -->
	
	<!-- Footer================================================== -->
	<jsp:include page="WEB-INF/views/common_footer_2.jsp"/>
	<!-- End Footer -->

</body>

<script type="text/javascript">

$('#delete_blog_post').click(function(){
	//alert($('#bNo').val());
	//alert($('#review_rNo').val());
	
	var bNo = $('#bNo').val();
	var params="bNo="+bNo;	
	$.ajax({
		type: "GET",
		url: "blog_delete",
		data: params,
		success : function() {
			alert("삭제 되었습니다");
			location.href="blog_right_sidebar";
		},
		error : function(){
		
		}
	});
});



</script>



</html>