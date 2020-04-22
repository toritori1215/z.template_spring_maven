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
	
	<!-- COMMON CSS -->
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/vendors.css" rel="stylesheet">
	
	<!-- CUSTOM CSS -->
	<link href="${pageContext.request.contextPath}/resources/css/custom.css" rel="stylesheet">
	
    <style>
	.the-icons {
	  font-size: 12px;
	  line-height: 30px;
	}
	.the-icons i{
	  font-size: 22px;
	}
	.codesOn .i-name {
	  display: none;
	}
	.codesOn .i-code {
	  display: inline;
	}
	.i-code {
	  display: none;
	  }
	</style>
    
    <script>
      function toggleCodes(on) {
        var obj = document.getElementById('icons');
        
        if (on) {
          obj.className += ' codesOn';
        } else {
          obj.className = obj.className.replace(' codesOn', '');
        }
      }
    </script>
        
</head>
<body>

	<!-- Header================================================== -->
	<jsp:include page="../WEB-INF/views/common_header_6.jsp"/>
	<!-- End Header -->
    
	 <section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/img/header_bg.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1">
			<div class="animated fadeInDown">
			<h1>Icon pack 3</h1>
			<p>Ridiculus sociosqu cursus neque cursus curae ante scelerisque vehicula.</p>
			</div>
		</div>
	</section><!-- End Section -->

<main>   
<div id="position">
    	<div class="container">
                	<ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Category</a></li>
                    <li>Page active</li>
                    </ul>
        </div>
    </div><!-- End Position -->
	
<section class="margin_60">
	<div id="icons" class="container">
    <div class="row">
    	<div class="col-sm-6">
        	<h4>Use as reference</h4>
        </div>
        <div class="col-sm-6 text-right">
        	<label class="switch">
        <input type="checkbox" onclick="toggleCodes(this.checked)"> Show codes
      </label>
        </div>
    </div>
    <hr>
      <div class="row">
        <div title="Code: 0xe8003" class="the-icons col-md-3"><i class="icon_set_2_icon-102"></i> <span class="i-name">icon_set_2_icon-102</span><span class="i-code">0xe8003</span></div>
        <div title="Code: 0xe8013" class="the-icons col-md-3"><i class="icon_set_2_icon-103"></i> <span class="i-name">icon_set_2_icon-103</span><span class="i-code">0xe8013</span></div>
        <div title="Code: 0xe8033" class="the-icons col-md-3"><i class="icon_set_2_icon-105"></i> <span class="i-name">icon_set_2_icon-105</span><span class="i-code">0xe8033</span></div>
        <div title="Code: 0xe8043" class="the-icons col-md-3"><i class=" icon_set_2_icon-106"></i> <span class="i-name">icon_set_2_icon-106</span><span class="i-code">0xe8043</span></div>
      </div>
      <div class="row">
        <div title="Code: 0xe8053" class="the-icons col-md-3"><i class="icon_set_2_icon-107"></i> <span class="i-name">icon_set_2_icon-107</span><span class="i-code">0xe8053</span></div>
        <div title="Code: 0xe8063" class="the-icons col-md-3"><i class="icon_set_2_icon-108"></i> <span class="i-name">icon_set_2_icon-108</span><span class="i-code">0xe8063</span></div>
        <div title="Code: 0xe8073" class="the-icons col-md-3"><i class="icon_set_2_icon-109"></i> <span class="i-name">icon_set_2_icon-109</span><span class="i-code">0xe8073</span></div>
        <div title="Code: 0xe8083" class="the-icons col-md-3"><i class="icon_set_2_icon-110"></i> <span class="i-name">icon_set_2_icon-110</span><span class="i-code">0xe8083</span></div>
      </div>
      <div class="row">
        <div title="Code: 0xe8093" class="the-icons col-md-3"><i class="icon_set_2_icon-111"></i> <span class="i-name">icon_set_2_icon-111</span><span class="i-code">0xe8093</span></div>
        <div title="Code: 0xe80a3" class="the-icons col-md-3"><i class="icon_set_2_icon-112"></i> <span class="i-name">icon_set_2_icon-112</span><span class="i-code">0xe80a3</span></div>
        <div title="Code: 0xe80b3" class="the-icons col-md-3"><i class="icon_set_2_icon-104"></i> <span class="i-name">icon_set_2_icon-104</span><span class="i-code">0xe80b3</span></div>
        <div title="Code: 0xe80c3" class="the-icons col-md-3"><i class="icon_set_2_icon-114"></i> <span class="i-name">icon_set_2_icon-114</span><span class="i-code">0xe80c3</span></div>
      </div>
      <div class="row">
        <div title="Code: 0xe80d3" class="the-icons col-md-3"><i class="icon_set_2_icon-115"></i> <span class="i-name">icon_set_2_icon-115</span><span class="i-code">0xe80d3</span></div>
        <div title="Code: 0xe80e3" class="the-icons col-md-3"><i class="icon_set_2_icon-116"></i> <span class="i-name">icon_set_2_icon-116</span><span class="i-code">0xe80e3</span></div>
        <div title="Code: 0xe80f3" class="the-icons col-md-3"><i class="icon_set_2_icon-117"></i> <span class="i-name">icon_set_2_icon-117</span><span class="i-code">0xe80f3</span></div>
        <div title="Code: 0xe8103" class="the-icons col-md-3"><i class="icon_set_2_icon-118"></i> <span class="i-name">icon_set_2_icon-118</span><span class="i-code">0xe8103</span></div>
      </div>
        <div class="row">
        <div title="Code: 0x0041" class="the-icons col-md-3"><i class="icon_set_3_restaurant-1"></i> <span class="i-name">icon_set_3_restaurant-1</span><span class="i-code">0x0041</span></div>

        <div title="Code: 0x0042" class="the-icons col-md-3"><i class="icon_set_3_restaurant-2"></i> <span class="i-name">icon_set_3_restaurant-2</span><span class="i-code">0x0042</span></div>
        <div title="Code: 0x0043" class="the-icons col-md-3"><i class="icon_set_3_restaurant-3"></i> <span class="i-name">icon_set_3_restaurant-3</span><span class="i-code">0x0043</span></div>
		<div title="Code: 0x0044" class="the-icons col-md-3"><i class="icon_set_3_restaurant-4"></i> <span class="i-name">icon_set_3_restaurant-4</span><span class="i-code">0x0044</span></div>
        <div title="Code: 0x0045" class="the-icons col-md-3"><i class="icon_set_3_restaurant-5"></i> <span class="i-name">icon_set_3_restaurant-5</span><span class="i-code">0x0045</span></div>
        <div title="Code: 0x0046" class="the-icons col-md-3"><i class="icon_set_3_restaurant-6"></i> <span class="i-name">icon_set_3_restaurant-6</span><span class="i-code">0x0046</span></div>
        <div title="Code: 0x0047" class="the-icons col-md-3"><i class="icon_set_3_restaurant-7"></i> <span class="i-name">icon_set_3_restaurant-7</span><span class="i-code">0x0047</span></div>
        <div title="Code: 0x0048" class="the-icons col-md-3"><i class="icon_set_3_restaurant-8"></i> <span class="i-name">icon_set_3_restaurant-8</span><span class="i-code">0x0048</span></div>
		<div title="Code: 0x0049" class="the-icons col-md-3"><i class="icon_set_3_restaurant-9"></i> <span class="i-name">icon_set_3_restaurant-9</span><span class="i-code">0x0049</span></div>
       <div title="Code: 0x004A" class="the-icons col-md-3"><i class="icon_set_3_restaurant-10"></i> <span class="i-name">icon_set_3_restaurant-10</span><span class="i-code">0x004A</span></div>
        <div title="Code: 0x004B" class="the-icons col-md-3"><i class="icon_set_3_restaurant-11"></i> <span class="i-name">icon_set_3_restaurant-11</span><span class="i-code">0x004B</span></div>
      </div>
    </div>
	
</section><!-- End Section -->
</main><!-- End main -->

	<!-- Footer================================================== -->
	<jsp:include page="../WEB-INF/views/common_footer_2.jsp"/>
	<!-- End Footer -->
	

  </body>
</html>