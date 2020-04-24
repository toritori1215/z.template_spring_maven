<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->


	<section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/img/bg_blog.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>Customer Blog</h1>
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
					<li><a href="blog_right_sidebar">Blog List</a>
					</li>
					
				</ul>
			</div>
		</div>
		<!-- End position -->

		<div class="container margin_60">
			<div class="row">

				<div class="col-lg-9">
					<div class="box_style_1">
						<div class="post">
						<c:forEach var ="blog" items = "${blogList}">
							<form id="blogForm" method="post" action="blog_delete">
							<input type="hidden" name="bNo" value="${blog.bNo}">
							<a href="blog_post_right_sidebar?bNo=${blog.bNo}"><img src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/blog/${blog.bImg}" alt="Image" class="img-fluid"></a>
							<div class="post_info clearfix">
								<div class="post-left">
									<ul>
										<li><i class="icon-calendar-empty"></i> On <span>${blog.bDate}</span>
										</li>
										<li><i class="icon-inbox-alt"></i> In ${blog.bCategory}
										</li>
									</ul>
								</div>
								<div class="post-right"><i class="icon-comment"></i><a href="#">${blog.bReadCount}</a>
								</div>
							</div>
							<h2>${blog.bTitle}</h2>
							<p>${blog.bContent}</p>
							<input type="button" class="btn_1" value="Read More" onclick="location.href='blog_post_right_sidebar?bNo=${blog.bNo}'"> &nbsp;&nbsp;&nbsp;
							</form>
						<hr>
						</c:forEach>
						</div>
						<!-- end post -->
					</div>

					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center">
							<li class="page-item">
								<a class="page-link" href="#" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
									<span class="sr-only">Previous</span>
								</a>
							</li>
							<li class="page-item active"><span class="page-link">1<span class="sr-only">(current)</span></span>
							</li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item">
								<a class="page-link" href="#" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
									<span class="sr-only">Next</span>
								</a>
							</li>
						</ul>
					</nav>
					<!-- end pagination-->
					
				</div>
				<!-- End col -->

				<aside class="col-lg-3">

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
							<li><a href="blog_right_sidebar">All blogs</a>
							</li>
							<li><a href="blog_right_sidebar_byType?type=Tour">Tour</a>
							</li>
							<li><a href="blog_right_sidebar_byType?type=Restaurant">Restaurant</a>
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
							<c:if test="${sUser != null and sUser != ''}">
								<a href="#" class="btn_1" data-toggle="modal" data-target="#writeBlog">write a Blog</a>
							</c:if>
							<c:if test="${sUser == null or sUser == ''}">
								If you want to write a blog<br>
								Please <a href="#sign-in-dialog" id="access_link4"><font color="red">Sign in</font></a>	
							</c:if>
						</ul>
					</div>
					<!-- End widget -->

				</aside>
				<!-- End aside -->

			</div>
			<!-- End row-->
		</div>
		<!-- End container -->
		<input type="hidden" id="blogMsg" value="${blogMsg}">
	</main>
	<!-- End main -->
	
	
	
	<!-- Footer================================================== -->
	<jsp:include page="common_footer_2.jsp"/>
	<!-- End Footer -->
	
	<script type="text/javascript">
		$(function() {
			var blogMsg = $("#blogMsg").val()
			if (blogMsg != null && blogMsg != "") {
				alert(blogMsg);
			}
		})
	</script>
	
	
</body>

</html>