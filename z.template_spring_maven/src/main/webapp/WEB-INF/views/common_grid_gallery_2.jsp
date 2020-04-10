<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="${pageContext.request.contextPath}/resources/img/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Gochi+Hand|Montserrat:300,400,700" rel="stylesheet">
	
	<!-- SPECIFIC CSS - GRID GALLERY -->
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/finaltilesgallery.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/lightbox2.css" rel="stylesheet">
	
	
	
	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->

	<section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/img/header_bg.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>Gallery page</h1>
				<p>Ridiculus sociosqu cursus neque cursus curae ante scelerisque vehicula.</p>
			</div>
		</div>
	</section>
	<!-- End Section -->

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
		<!-- End Position -->

		<div class="container margin_60">
			<div class="main_title">
				<h2>Some <span>images</span> from travellers</h2>
				<p>
					Quisque at tortor a libero posuere laoreet vitae sed arcu. Curabitur consequat.
				</p>
			</div>
			<hr>

			<div id="gallery" class="final-tiles-gallery  effect-dezoom effect-fade-out caption-top social-icons-right">
				<div class="ftg-filters">
					<a href="#ftg-set-ftgall">All</a>
					<a href="#ftg-set-rome">Rome</a>
					<a href="#ftg-set-milan">Milan</a>
					<a href="#ftg-set-florence">Florence</a>
				</div>
				<div class="ftg-items">
					<div class="tile ftg-set-rome">
						<a class="tile-inner" data-title="Lorem ipsum" data-lightbox="gallery" href="http://placehold.it/500x300/B52626/ffffff&text=500x300">
							<img class="item" width="250" height="150" src="data:${pageContext.request.contextPath}/resources/image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://placehold.it/500x300/B52626/ffffff&text=500x300">
							<span class='title'>Lorem ipsum</span>
							<span class='subtitle'>Pellentesque ornare ornare</span>
						</a>
						<div class="ftg-social">
							<a href="#" data-social="twitter"><i class="fa fa-twitter"></i></a>
							<a href="#" data-social="facebook"><i class="fa fa-facebook"></i></a>
							<a href="#" data-social="google-plus"><i class="fa fa-google"></i></a>
							<a href="#" data-social="pinterest"><i class="fa fa-pinterest"></i></a>
						</div>
					</div>
					<!-- End image -->

					<div class="tile ftg-set-milan">
						<a class="tile-inner" data-title="Lorem ipsum" data-lightbox="gallery" href="http://placehold.it/800x600/B52626/ffffff&text=1">
							<img class="item" src="data:${pageContext.request.contextPath}/resources/image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://placehold.it/250x250/2B7E7E/ffffff&text=250x250">
							<span class='title'>Lorem ipsum</span>
							<span class='subtitle'>Pellentesque ornare ornare</span>
						</a>
						<div class="ftg-social">
							<a href="#" data-social="twitter"><i class="fa fa-twitter"></i></a>
							<a href="#" data-social="facebook"><i class="fa fa-facebook"></i></a>
							<a href="#" data-social="google-plus"><i class="fa fa-google"></i></a>
							<a href="#" data-social="pinterest"><i class="fa fa-pinterest"></i></a>
						</div>
					</div>
					<!-- End image -->

					<div class="tile ftg-set-rome ftg-set-milan">
						<a class="tile-inner" data-title="Lorem ipsum" data-lightbox="gallery" href="http://placehold.it/400x800/99C542/ffffff&text=400x800">
							<img class="item" src="data:${pageContext.request.contextPath}/resources/image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://placehold.it/400x800/99C542/ffffff&text=400x800">
							<span class='title'>Lorem ipsum</span>
							<span class='subtitle'>Pellentesque ornare ornare</span>
						</a>
						<div class="ftg-social">
							<a href="#" data-social="twitter"><i class="fa fa-twitter"></i></a>
							<a href="#" data-social="facebook"><i class="fa fa-facebook"></i></a>
							<a href="#" data-social="google-plus"><i class="fa fa-google"></i></a>
							<a href="#" data-social="pinterest"><i class="fa fa-pinterest"></i></a>
						</div>
					</div>
					<!-- End image -->

					<div class="tile ftg-set-florence">
						<a class="tile-inner" data-title="Lorem ipsum" data-lightbox="gallery" href="http://placehold.it/600x400/F57373/ffffff&text=600x400">
							<img class="item" src="data:${pageContext.request.contextPath}/resources/image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://placehold.it/600x400/F57373/ffffff&text=600x400">
							<span class='title'>Lorem ipsum</span>
							<span class='subtitle'>Pellentesque ornare ornare</span>
						</a>
						<div class="ftg-social">
							<a href="#" data-social="twitter"><i class="fa fa-twitter"></i></a>
							<a href="#" data-social="facebook"><i class="fa fa-facebook"></i></a>
							<a href="#" data-social="google-plus"><i class="fa fa-google"></i></a>
							<a href="#" data-social="pinterest"><i class="fa fa-pinterest"></i></a>
						</div>
					</div>
					<!-- End image -->

					<div class="tile ftg-set-florence">
						<a class="tile-inner" data-title="Lorem ipsum" data-lightbox="gallery" href="http://placehold.it/250x600/7CA924/ffffff&text=/250x600">
							<img class="item" src="data:${pageContext.request.contextPath}/resources/image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://placehold.it/250x600/7CA924/ffffff&text=/250x600">
							<span class='title'>Lorem ipsum</span>
							<span class='subtitle'>Pellentesque ornare ornare</span>
						</a>
						<div class="ftg-social">
							<a href="#" data-social="twitter"><i class="fa fa-twitter"></i></a>
							<a href="#" data-social="facebook"><i class="fa fa-facebook"></i></a>
							<a href="#" data-social="google-plus"><i class="fa fa-google"></i></a>
							<a href="#" data-social="pinterest"><i class="fa fa-pinterest"></i></a>
						</div>
					</div>
					<!-- End image -->

					<div class="tile ftg-set-rome ftg-set-florence">
						<a class="tile-inner" data-title="Lorem ipsum" data-lightbox="gallery" href="http://placehold.it/800x400/76B8B8/ffffff&text=800x400">
							<img class="item" src="data:${pageContext.request.contextPath}/resources/image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://placehold.it/800x400/76B8B8/ffffff&text=800x400">
							<span class='title'>Lorem ipsum</span>
							<span class='subtitle'>Pellentesque ornare ornare</span>
						</a>
						<div class="ftg-social">
							<a href="#" data-social="twitter"><i class="fa fa-twitter"></i></a>
							<a href="#" data-social="facebook"><i class="fa fa-facebook"></i></a>
							<a href="#" data-social="google-plus"><i class="fa fa-google"></i></a>
							<a href="#" data-social="pinterest"><i class="fa fa-pinterest"></i></a>
						</div>
					</div>
					<!-- End image -->

					<div class="tile ftg-set-florence">
						<a class="tile-inner" data-title="Lorem ipsum" data-lightbox="gallery" href="http://placehold.it/800x800/B52626/ffffff&text=800x800">
							<img class="item" src="data:${pageContext.request.contextPath}/resources/image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://placehold.it/800x800/B52626/ffffff&text=800x800">
							<span class='title'>Lorem ipsum</span>
							<span class='subtitle'>Pellentesque ornare ornare</span>
						</a>
						<div class="ftg-social">
							<a href="#" data-social="twitter"><i class="fa fa-twitter"></i></a>
							<a href="#" data-social="facebook"><i class="fa fa-facebook"></i></a>
							<a href="#" data-social="google-plus"><i class="fa fa-google"></i></a>
							<a href="#" data-social="pinterest"><i class="fa fa-pinterest"></i></a>
						</div>
					</div>
					<!-- End image -->

					<div class="tile ftg-set-rome">
						<a class="tile-inner" data-title="Lorem ipsum" data-lightbox="gallery" href="http://placehold.it/800x600/8F0D0D/ffffff&text=800x600">
							<img class="item" src="data:${pageContext.request.contextPath}/resources/image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://placehold.it/800x600/8F0D0D/ffffff&text=800x600">
							<span class='title'>Lorem ipsum</span>
							<span class='subtitle'>Pellentesque ornare ornare</span>
						</a>
						<div class="ftg-social">
							<a href="#" data-social="twitter"><i class="fa fa-twitter"></i></a>
							<a href="#" data-social="facebook"><i class="fa fa-facebook"></i></a>
							<a href="#" data-social="google-plus"><i class="fa fa-google"></i></a>
							<a href="#" data-social="pinterest"><i class="fa fa-pinterest"></i></a>
						</div>
					</div>
					<!-- End image -->

					<div class="tile ftg-set-rome">
						<a class="tile-inner" data-title="Lorem ipsum" data-lightbox="gallery" href="http://placehold.it/250x300/5D860C/ffffff&text=250x300">
							<img class="item" src="data:${pageContext.request.contextPath}/resources/image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://placehold.it/250x300/5D860C/ffffff&text=250x300">
							<span class='title'>Lorem ipsum</span>
							<span class='subtitle'>Pellentesque ornare ornare</span>
						</a>
						<div class="ftg-social">
							<a href="#" data-social="twitter"><i class="fa fa-twitter"></i></a>
							<a href="#" data-social="facebook"><i class="fa fa-facebook"></i></a>
							<a href="#" data-social="google-plus"><i class="fa fa-google"></i></a>
							<a href="#" data-social="pinterest"><i class="fa fa-pinterest"></i></a>
						</div>
					</div>
					<!-- End image -->

					<div class="tile ftg-set-milan">
						<a class="tile-inner" data-title="Lorem ipsum" data-lightbox="gallery" href="http://placehold.it/900x300/76B8B8/ffffff&text=900x300">
							<img class="item" src="data:${pageContext.request.contextPath}/resources/image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://placehold.it/900x300/76B8B8/ffffff&text=900x300">
							<span class='title'>Lorem ipsum</span>
							<span class='subtitle'>Pellentesque ornare ornare</span>
						</a>
						<div class="ftg-social">
							<a href="#" data-social="twitter"><i class="fa fa-twitter"></i></a>
							<a href="#" data-social="facebook"><i class="fa fa-facebook"></i></a>
							<a href="#" data-social="google-plus"><i class="fa fa-google"></i></a>
							<a href="#" data-social="pinterest"><i class="fa fa-pinterest"></i></a>
						</div>
					</div>
					<!-- End image -->

					<div class="tile ftg-set-rome ftg-set-florence">
						<a class="tile-inner" data-title="Lorem ipsum" data-lightbox="gallery" href="http://placehold.it/250x250/8F0D0D/ffffff&text=250x250">
							<img class="item" src="data:${pageContext.request.contextPath}/resources/image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://placehold.it/250x250/8F0D0D/ffffff&text=250x250">
							<span class='title'>Lorem ipsum</span>
							<span class='subtitle'>Pellentesque ornare ornare</span>
						</a>
						<div class="ftg-social">
							<a href="#" data-social="twitter"><i class="fa fa-twitter"></i></a>
							<a href="#" data-social="facebook"><i class="fa fa-facebook"></i></a>
							<a href="#" data-social="google-plus"><i class="fa fa-google"></i></a>
							<a href="#" data-social="pinterest"><i class="fa fa-pinterest"></i></a>
						</div>
					</div>
					<!-- End image -->

					<div class="tile ftg-set-florence">
						<a class="tile-inner" data-title="Lorem ipsum" data-lightbox="gallery" href="http://placehold.it/400x250/459393/ffffff&text=400x250">
							<img class="item" src="data:${pageContext.request.contextPath}/resources/image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7" data-src="http://placehold.it/400x250/459393/ffffff&text=400x250">
							<span class='title'>Lorem ipsum</span>
							<span class='subtitle'>Pellentesque ornare ornare</span>
						</a>
						<div class="ftg-social">
							<a href="#" data-social="twitter"><i class="fa fa-twitter"></i></a>
							<a href="#" data-social="facebook"><i class="fa fa-facebook"></i></a>
							<a href="#" data-social="google-plus"><i class="fa fa-google"></i></a>
							<a href="#" data-social="pinterest"><i class="fa fa-pinterest"></i></a>
						</div>
					</div>
					<!-- End image -->

				</div>

			</div>
		</div>
		<!-- End container -->
	</main>
	<!-- End main -->

	<!-- Footer================================================== -->
	<jsp:include page="common_footer_2.jsp"/>
	<!-- End Footer -->

	<!-- Specific scripts - Grid gallery -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.finaltilesgallery.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/lightbox2.js"></script>
	<script>
		$(function () {
			'use strict';
			//we call Final Tiles Grid Gallery without parameters,
			//see reference for customisations: http://final-tiles-gallery.com/index.html#get-started
			$(".final-tiles-gallery").finalTilesGallery();
		});
	</script>
	

</body>

</html>