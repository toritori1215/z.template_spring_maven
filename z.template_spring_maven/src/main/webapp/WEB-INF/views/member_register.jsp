<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
   
	<!-- Header================================================== -->
	<jsp:include page="common_header_6.jsp"/>
	<!-- End Header -->
    
	<main>
    <section id="hero" class="login">
    	<div class="container">
        	<div class="row justify-content-center">
            	<div class="col-xl-4 col-lg-5 col-md-6 col-sm-8">
                	<div id="login">
                    		<div class="text-center"><img src="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/SiliconVillage_S_Black.png" style="margin-left: 30px" width: 233px" height="100px" alt="Image" data-retina="true" ></div>
                        	<br>
							<div class="divider"><span><font style="font-style: normal; font-size: 15px; color: red;">${msg}</font></span></div>
                           	<form id="f" action="member_insert" method="post">
                           		<div id="insert-member">
	                                <div class="form-group">
	                                	<label>Username</label>
	                                    <input type="text" class="form-control"  placeholder="Username" name="mId" value="${mId}">
	                                	<i class="icon-user-1"></i>
	                                </div>
	                                <div class="form-group">
	                                	<label>Password</label>
	                                    <input type="password" class="form-control" id="password1" placeholder="Password" name="mPassword">
	                                	<i class="icon-lock"></i>
	                                </div>
	                                <div class="form-group">
	                                	<label>Confirm Password</label>
	                                    <input type="password" class="form-control" id="password2" placeholder="Confirm password" name="mPassword2">
	                                	<i class="icon-lock-open-alt"></i>
	                                </div>
	                                <div class="form-group">
	                                	<label>First Name</label>
	                                    <input type="text" class="form-control"  placeholder="First Name" name="mFirstName" value="${mFirstName}">
	                                	<i class="icon-doc-text-1"></i>
	                                </div>
	                                <div class="form-group">
	                                	<label>Last Name</label>
	                                    <input type="text" class="form-control"  placeholder="Last Name" name="mLastName" value="${mLastName}">
		                                <i class="icon-doc-text-inv-1"></i>
	                                </div>                                
	                                <div class="form-group">
	                                	<label>Phone</label>
	                                    <input type="tel" maxlength="11" class="form-control" placeholder="01023456789" name="mTel" value="${mTel}">
	                                	<i class="icon-phone-3"></i>
	                                </div>
	                                <div class="form-group">
	                                	<label>Email</label>
	                                    <input type="email" class="form-control" placeholder="xxx@gmail.com" name="mEmail" value="${mEmail}">
	                                	<i class="icon-mail"></i>
	                                </div>
	                                <div class="form-group">
	                                	<label>Birth</label>
	                                    <input type="text" maxlength="8" class="form-control" placeholder="19940927" name="mBirth" value="${mBirth}">
	                                	<i class="icon-calendar-5"></i>
	                                </div>
	                                <div id="pass-info" class="clearfix"></div><br>
	                                <input class="btn_full" type="submit" value="Create an account">
	                 				<div class="text-center">
										I Already Have an Account <a href="member_login_form">Login</a>
									</div>
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
	<jsp:include page="common_footer_2.jsp"/>
	<!-- End Footer -->

	<!-- Specific scripts -->
	<script src="${pageContext.request.contextPath}/resources/js/pw_strenght.js"></script>
	<script src="${pageContext.request.contextPath}/resources/z.SiliconVillage/js/member.js"></script>
	

  </body>
</html>