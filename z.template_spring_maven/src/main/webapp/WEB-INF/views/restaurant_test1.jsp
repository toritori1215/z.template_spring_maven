<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 
<script type="text/javascript" src="sample_js.js"></script>
 -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

	

	$(function(){
		
		$('div .ajaxsample').click(function(e){
			console.log(e);
			$.ajax({
				
				url: "RestaurantDTO_XML",
				method:'GET',
				data: "pNo=14",
				dataType:'xml',
				async :true,
				success : function(xmlData){
					console.log(xmlData);
					alert(xmlData);
				}
				
			});
			e.preventDefault();
		});
		
		/*
		$(document).on('submit','#guest_login_form',function(e){
			guest_login_action_function();
			e.preventDefault();
		});
		
		*/
		
		/*
		$('div > form > .submit_btn').click(function(e){
			console.log(e);
			var param = "pName="+document.getElementById('pName').firstChild.nodeValue+
						"pPrice"+document.getElementById('pPrice').firstChild.nodeValue+
						"pType"+document.getElementById('pType').firstChild.nodeValue+
						"pAvailable"+document.getElementById('pAvailable').firstChild.nodeValue+
						"pImg"+document.getElementById('pImg').firstChild.nodeValue+
						"pRate"+document.getElementById('pRate').firstChild.nodeValue+
						"pDesc"+document.getElementById('pDesc').firstChild.nodeValue;
			console.log(param);
			
			$.ajax({
				
				url: "insertRestDTO",
				method:'GET',
				data: param,
				dataType: "String",
				async :true,
				success : function(cntData){
					console.log("insertCnt:"+cntData);
					alert(cntData);
				}
				
			});
			
			e.preventDefault();
		});
		*/
		
		$(document).on("submit","#f",function(e){
			
			console.log(e);
			var param = "pname="+document.getElementById('pname').value+
						"&pprice="+document.getElementById('pprice').value+
						"&ptype="+document.getElementById('ptype').value+
						"&pavailable="+document.getElementById('pavailable').value+
						"&pimg="+document.getElementById('pimg').value+
						"&prate="+document.getElementById('prate').value+
						"&pdesc="+document.getElementById('pdesc').value+
						"&pfoodcategory="+document.getElementById('pfoodcategory').value;
			console.log(param);
			
			$.ajax({
				
				url: "insertRestDTO",
				method:'GET',
				data: param,
				dataType: "String",
				async :true,
				success : function(cntData){
					console.log("insertCnt:"+cntData);
					alert(cntData);
				}
				
			});
			
			e.preventDefault();
		});
		
	});

	
</script>


</head>
<body>
	
	<h2><a href="restaurant_test2">restaurant_test2입니다!..</a></h2>
	<h2><a href="restaurant_all_list_test">restaurant_all_list_test입니다!..</a></h2>
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- -------------------------------------------- -->
	<h2><a href="restaurants_all_list">restaurants_all_list입니다!..</a></h2>
	<h2><a href="restaurant_cart_fixed_sidebar">restaurant_cart_fixed_sidebar입니다!..</a></h2>
	<h2><a href="restaurant_single_food_detail">restaurant_single_food_detail입니다!..</a></h2>
	<h2><a href="restaurant_payment_fixed_sidebar">restaurant_payment_fixed_sidebar입니다!..</a></h2>
	<h2><a href="restaurant_confirmation_fixed_sidebar">restaurant_confirmation_fixed_sidebar입니다!..</a></h2>
	<h2><a href="restaurant_single_restaurant_detail">restaurant_single_restaurant_detail입니다!..</a></h2>
	
	
	
	<div>
		<h2><a href="asdasf" class="ajaxsample">ajax 요청 입니다!..</a></h2>
	</div>
	<div>
		<form id="f" action="#">
			
			음식이름:<input type="text" name="pname" id="pname"></br>
			음식갸격:<input type="text" name="pprice" id="pprice"></br>
			타입:<input type="text" name="ptype" id="ptype"></br>
			남은좌석수:<input type="text" name="pavailable" id="pavailable"></br>
			이미지:<input type="text" name="pimg" id="pimg"></br>
			평점:<input type="text" name="prate" id="prate"></br>
			설명:<input type="text" name="pdesc" id="pdesc"></br>
			음식카테고리:<input type="text" name="pfoodcategory" id="pfoodcategory"></br>
			
			<input type="submit" name="제출" class="submit_btn">

		</form>
	</div>
</body>
</html>