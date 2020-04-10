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

    <!-- COMMON CSS -->
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/vendors.css" rel="stylesheet">
	
	<!-- CUSTOM CSS -->
	<link href="${pageContext.request.contextPath}/resources/z.SiliconVillage/css/member.css" rel="stylesheet">
        
</head>
<body>

	<!-- Header================================================== -->
	<jsp:include page="z.references/common_header_6.jsp"/>
	<!-- End Header -->
    
	<main>
    <section id="hero" class="login">
    	<div class="container">
        	<div class="row justify-content-center">
            	<div class="col-xl-4 col-lg-5 col-md-6 col-sm-8">
                	<div id="login">
                    		<div class="text-center"><img src="${pageContext.request.contextPath}/resources/img/logo_sticky.png" alt="Image" data-retina="true" ></div>
							<div class="divider"><span><font style="font-style: normal; font-size: 15px; color: red;">${msg}</font></span></div>
                           	<form id="f" action="member_insert" method="post">
                           		<div id="insert-member">
	                                <div class="form-group">
	                                	<label>Username</label>
	                                    <input type="text" class="form-control"  placeholder="Username" name="mId" value="${member.mId}">
	                                	<i class="icon-user-1"></i>
	                                </div>
	                                <div class="form-group">
	                                	<label>Password</label>
	                                    <input type="password" class="form-control" id="password1" placeholder="Password" name="mPassword">
	                                	<i class="icon-lock"></i>
	                                </div>
	                                <div class="form-group">
	                                	<label>Confirm password</label>
	                                    <input type="password" class="form-control" id="password2" placeholder="Confirm password" name="mPassword2">
	                                	<i class="icon-lock-open-alt"></i>
	                                </div>
	                                <div class="form-group">
	                                	<label>First Name</label>
	                                    <input type="text" class="form-control"  placeholder="First Name" name="mFirstName" value="${member.mFirstName}">
	                                	<i class="icon-doc-text-1"></i>
	                                </div>
	                                <div class="form-group">
	                                	<label>Last Name</label>
	                                    <input type="text" class="form-control"  placeholder="Last Name" name="mLastName" value="${member.mLastName}">
		                                <i class="icon-doc-text-inv-1"></i>
	                                </div>                                
	                                <div class="form-group">
	                                	<label>Phone</label>
	                                    <input type="tel" maxlength="11" class="form-control" placeholder="01023456789" name="mTel" value="${member.mTel}">
	                                	<i class="icon-phone-3"></i>
	                                </div>
	                                <div class="form-group">
	                                	<label>Email</label>
	                                    <input type="email" class="form-control" placeholder="xxx@gmail.com" name="mEmail" value="${member.mEmail}">
	                                	<i class="icon-mail"></i>
	                                </div>
	                                <div class="form-group">
	                                	<label>Birth</label>
	                                    <input type="text" maxlength="8" class="form-control" placeholder="19940927" name="mBirth" value="${member.mBirth}">
	                                	<i class="icon-calendar-5"></i>
	                                </div>
	                                <div id="pass-info" class="clearfix"></div><br>
	                                <input class="btn_full" type="submit" value="Create an account">
                                </div>
                            </form>
                	</div>
            	</div>
        	</div>
		</div>
    </section>
	</main>
	<!-- End main -->

	<!-- Footer================================================== -->
	<jsp:include page="z.references/common_footer_2.jsp"/>
	<!-- End Footer -->

	<!-- Specific scripts -->
	<script src="${pageContext.request.contextPath}/resources/js/pw_strenght.js"></script>
	<script src="${pageContext.request.contextPath}/resources/z.SiliconVillage/js/member.js"></script>
	

  </body>
</html>