<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		
	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->
    
	<main>
    <section id="hero" class="login">
    	<div class="container">
        	<div class="row justify-content-center">
            	<div class="col-xl-4 col-lg-5 col-md-6 col-sm-8">
                	<div id="login">
                		
                   		<div class="text-center"><img src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/youngae.jpg" width="120px" height="150px" alt="Image" data-retina="true" ></div>
						<div class="divider"><span>
						<c:if test="${msg == null or msg eq ''}">
						<font style="font-style: normal; font-size: 15px; color: red;">당신은 임시 비밀번호로 등록했습니다</font>
						</c:if>
						<c:if test="${msg != null and msg ne ''}">
						<font style="font-style: normal; font-size: 15px; color: red;">${msg}</font>
						</c:if>
						</span></div>
                        <form id="login_form" method="post" action="member_change_password_action">
                        	<div id="login-form">
                              <div class="form-group">
                                  <label>Username</label>
                                  <input type="text" class=" form-control " readonly="readonly" name="mId" value="${sUser.mId}">
                              	  <i class="icon-user-1"></i>
                              </div>
                              <div class="form-group">
                                  <label>New Password</label>
                                  <input type="password" class=" form-control" placeholder="New Password" name="mPassword" value="">
								  <i class="icon-lock"></i>
                              </div>
                              <div class="form-group">
                                  <label>Comfirm Password</label>
                                  <input type="password" class=" form-control" placeholder="Comfirm Password" name="mPassword2" value="">
								  <i class="icon-lock"></i>
                              </div>
                              <input class="btn_full" type="submit" value="Change Password">
                        	</div>
                        </form>
             		</div>
                </div>
            </div>
        </div>
    </section>
	</main><!-- End main -->
	
	<!-- Footer================================================== -->
	<jsp:include page="common_footer_2.jsp"/>
	<!-- End Footer -->
	
  </body>
</html>