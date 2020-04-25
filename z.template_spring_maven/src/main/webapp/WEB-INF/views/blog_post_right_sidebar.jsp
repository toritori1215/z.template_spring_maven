<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
	
	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->

	<section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/img/blog_main.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>Blog List</h1>
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
					<li>${blog.bTitle}</li>
					<li><a href="#">${blog.bTitle}</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- End position -->
		
		<div class="container margin_60">
			<div class="row">
				<div class="col-lg-9">
					<div class="box_style_1">
						<input type="hidden" name="bNo" id="bNo" value="${blog.bNo}">
						<div class="post nopadding">
							<img src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/blog/${blog.bImg}" alt="Image" class="img-fluid">
							<div class="post_info clearfix">
								<div class="post-left">
									<ul>
										<li><i class="icon-calendar-empty"></i>On <span>${blog.bDate}</span>
										</li>
										<li><i class="icon-inbox-alt"></i>In <a href="blog_right_sidebar_byType?type=${blog.bCategory}">Top ${blog.bCategory}</a>
										</li>
									</ul>
								</div>
							</div>
							<h2>${blog.bTitle}</h2>
							<p>${blog.bContent}</p>
							<c:if test="${blog.mNo == sUser.mNo}">
								<a href="#" class="btn_1" data-toggle="modal" data-target="#updateBlog">Update</a>&nbsp;&nbsp;&nbsp;
								<a href="blog_delete?bNo=${blog.bNo}" class="btn_1">Delete</a>
							</c:if>
							<c:if test="${blog.mNo == sUser.mNo}">
							<hr>
							${SessionBlog.bNo}
							<form id="form1" name="form1" action="blog_right_sidebar" method="post">
								<h4>Upload profile photo</h4>
								<!-- Drop Zone -->
								<div id="attachFile" style="width: 100%;"></div>
								<br>
								<button type="submit" class="btn_1 green" id="js-upload-submit" onclick="formSubmit()">Upload file</button>
							</form>
							<hr>
							</c:if>
						</div>
						<!-- end post -->
					</div>
					<!-- end box_style_1 -->
				</div>
				<!-- End col-md-8-->
				
				<aside class="col-lg-3 add_bottom_30">
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
									<div><a href="blog_post_right_sidebar?bNo=${recentBlog.bNo}">${recentBlog.bTitle}</a></div>
								</li>
							</c:forEach>
						</ul>
					</div>
					<!-- End widget -->
				</aside>
				<!-- End aside -->
			</div>
			<!-- End row-->
		</div>
		<!-- End container -->
		<input type="hidden" id="blogViewMsg" value="${blogViewMsg}">
	</main>
	<!-- End main -->
	
	<!-- Footer================================================== -->
	<jsp:include page="common_footer_2.jsp"/>
	<!-- End Footer -->
	
	<script type="text/javascript">
		$(function() {
			var blogViewMsg = $("#blogViewMsg").val()
			if (blogViewMsg != null && blogViewMsg != "") {
				alert(blogViewMsg);
			}
		})
		
	</script>
	<c:if test="${blog.mNo == sUser.mNo}">
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/z.SiliconVillage/gu-upload/guuploadManager.js"></script>
	<script type="text/javascript">
		var guManager = null;
		
		window.onload = function() {
			var option = {
				fileid: "attachFile",
				listtype: "thumbnail",
				uploadURL: "uploadBlogImg",
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
	</c:if>
</body>

</html>