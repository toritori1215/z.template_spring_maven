<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

    <!-- SPECIFIC CSS -->
	<link href="${pageContext.request.contextPath}/resources/css/timeline.css" rel="stylesheet">
	
	
	
	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->

	<section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/img/header_bg.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
				<h1>Tour timeline</h1>
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
				<h2>Detailed <span>timeline </span>for Louvre Tour</h2>
				<p>
					Quisque at tortor a libero posuere laoreet vitae sed arcu. Curabitur consequat.
				</p>
			</div>
			<hr>
			<ul class="cbp_tmtimeline">
				<li>
					<time class="cbp_tmtime" datetime="09:30"><span>30 minutes</span> <span>09:30</span>
					</time>
					<div class="cbp_tmicon timeline_icon_point"></div>
					<div class="cbp_tmlabel">
						<div class="float-right d-none d-md-block">Guide <strong>John Doe</strong><img src="${pageContext.request.contextPath}/resources/img/guide_1.jpg" alt="Image" class="rounded-circle speaker">
						</div>
						<h2><span>Lorem ipsum</span>Meeting point</h2>
						<p>Winter purslane courgette pumpkin quandong komatsuna fennel green bean cucumber watercress. Pea sprouts wattle seed rutabaga okra yarrow cress avocado grape radish bush tomato ricebean black-eyed pea maize eggplant. </p>
					</div>
				</li>
				<li>
					<time class="cbp_tmtime" datetime="11:30"><span>2 hours</span> <span>11:30</span>
					</time>
					<div class="cbp_tmicon timeline_icon_pic"></div>
					<div class="cbp_tmlabel">
						<div class="float-right d-none d-md-block">Guide <strong>John Doe</strong><img src="${pageContext.request.contextPath}/resources/img/guide_2.jpg" alt="Image" class="rounded-circle speaker">
						</div>
						<h2><span>Lorem ipsum</span>Exhibitions</h2>
						<p>Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette lettuce. Celery coriander bitterleaf epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi.</p>
					</div>
				</li>
				<li>
					<time class="cbp_tmtime" datetime="13:30"><span>1 hour</span> <span>13:30</span>
					</time>
					<div class="cbp_tmicon timeline_icon_break"></div>
					<div class="cbp_tmlabel">
						<h2><span>Lorem ipsum</span>Lunch and coffee break</h2>
						<p>Parsnip lotus root celery yarrow seakale tomato collard greens tigernut epazote ricebean melon tomatillo soybean chicory broccoli beet greens peanut salad. </p>
					</div>
				</li>
				<li>
					<time class="cbp_tmtime" datetime="14:30"><span>2 hours</span> <span>14:30</span>
					</time>
					<div class="cbp_tmicon timeline_icon_audio"></div>
					<div class="cbp_tmlabel">
						<div class="float-right d-none d-md-block">Guide <strong>John Doe</strong><img src="${pageContext.request.contextPath}/resources/img/guide_1.jpg" alt="Image" class="rounded-circle speaker">
						</div>
						<h2><span>Lorem ipsum</span>The auditorium Louvre</h2>
						<p>Peanut gourd nori welsh onion rock melon mustard jícama. Desert raisin amaranth kombu aubergine kale seakale brussels sprout pea. Black-eyed pea celtuce bamboo shoot salad kohlrabi leek squash prairie turnip catsear rock melon chard taro broccoli turnip greens. Fennel quandong potato watercress ricebean swiss chard garbanzo. Endive daikon brussels sprout lotus root silver beet epazote melon shallot.</p>
					</div>
				</li>
				<li>
					<time class="cbp_tmtime" datetime="16:30"><span>2 hours</span> <span>16:30</span>
					</time>
					<div class="cbp_tmicon timeline_icon_pic"></div>
					<div class="cbp_tmlabel">
						<div class="float-right d-none d-md-block">Guide <strong>John Doe</strong><img src="${pageContext.request.contextPath}/resources/img/guide_2.jpg" alt="Image" class="rounded-circle speaker">
						</div>
						<h2><span>Lorem ipsum</span>Modern art</h2>
						<p>Parsley amaranth tigernut silver beet maize fennel spinach. Ricebean black-eyed pea maize scallion green bean spinach cabbage jícama bell pepper carrot onion corn plantain garbanzo. Sierra leone bologi komatsuna celery peanut swiss chard silver beet squash dandelion maize chicory burdock tatsoi dulse radish wakame beetroot.</p>
					</div>
				</li>
			</ul>
		</div>
		<!-- End container -->
	</main>
	<!-- End main -->

	<!-- Footer================================================== -->
	<jsp:include page="common_footer_2.jsp"/>
	<!-- End Footer -->
	

</body>

</html>