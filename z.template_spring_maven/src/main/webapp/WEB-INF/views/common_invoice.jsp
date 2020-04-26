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
	<title>Silicon Village</title>

	<!-- Favicons-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/z.SiliconVillage/img/SiliconVillage.png" type="image/x-icon">
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
    .invoice-title h2, .invoice-title h3 {
        display: inline-block;
    }
    
    .table > tbody > tr > .no-line {
        border-top: none;
    }
    
    .table > thead > tr > .no-line {
        border-bottom: none;
    }
    
    .table > tbody > tr > .thick-line {
        border-top: 2px solid;
    }
    </style>
        
    
        
</head>
<body>
  <div class="container">
    <div class="row">
        <div class="col-12">
    		<div class="invoice-title">
    			<h2>Invoice</h2><br>
    			<h3 class="pull-right"> Order #${jumunDetail.jdNo}</h3>
   				<h6 align="right"><a href="member_orderList" class="btn_1">Back to order list</a></h6>
    		</div>
    		<hr>
    		<div class="row">
    			<div class="col-6">
    				<address>
	    				<strong>Billed to:</strong><br>
	    				<div style="margin-left: 30px">
	    				<strong>Guest:</strong> ${jumunDetail.jCardOwner}
	    				</div>
    				</address>
    			</div>
    			<div class="col-6 text-left">
    				<address>
	    				<strong>Address:</strong><br>
	    				<div style="margin-left: 30px">
		    				<strong>Country:</strong> ${jumunDetail.jCountry}<br>
		    				<strong>State:</strong> ${jumunDetail.jState}<br>
		    				<strong>City:</strong> ${jumunDetail.jCity}<br>
		    				<strong>Detail address:</strong> ${jumunDetail.jStreetNMG}
	    				</div>
    				</address>
    			</div>
    		</div>
    		<div class="row">
    			<div class="col-6">
    				<address >
    					<strong>Date:</strong><br>
    					<div style="margin-left: 30px">
    						<strong>Order date:</strong> ${jumunDetail.jDate}<br>
    						<strong>Booked on:</strong> ${jumunDetail.jdOrderDate}
    					</div>
    				</address>
    			</div>
    			<div class="col-6 text-left">
    				<address>
    					<strong>Payment Method:</strong><br>
	    				<div style="margin-left: 30px">
    						<strong>Card No:</strong> ${jumunDetail.jCardNo}<br>
    						<strong>Email:</strong>   ${jumunDetail.jEmail}
    					</div>
    				</address>
    			</div>
    		</div>
    	</div>
    </div>
    
    <div class="row">
    	<div class="col-lg-12">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<h3 class="panel-title"><strong>Order summary</strong></h3>
    			</div>
    			<div class="panel-body">
    				<div class="table-responsive">
    					<table class="table table-condensed">
    						<thead>
                                <tr>
        							<td><strong>Item</strong></td>
        							<td class="text-center"><strong>Price</strong></td>
        							<td class="text-center"><strong>Quantity</strong></td>
        							<td class="text-right"><strong>Totals</strong></td>
                                </tr>
    						</thead>
    						<tbody>
    							<!-- foreach ($order->lineItems as $line) or some such thing here -->
    							<tr>
    								<td>${jumunDetail.pName}</td>
    								<td class="text-center">${jumunDetail.jdProductTot/jumunDetail.jdProductQty}</td>
    								<td class="text-center">${jumunDetail.jdProductQty}</td>
    								<td class="text-right">${jumunDetail.jdProductTot}</td>
    							</tr>
    						</tbody>
    					</table>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
</div>

  </body>
</html>