<%@page import="com.itwill.hotel.util.RestaurantBoardListPageDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<%
	RestaurantBoardListPageDto restBoardPageDto = (RestaurantBoardListPageDto)request.getAttribute("restListPage");
	System.out.println("restBoardPageDto= "+restBoardPageDto.getList());
	System.out.println("restBoardPageDto.size()= "+restBoardPageDto.getList().size());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<table border="1" bordercolor = "red"  >
		<tr>
			<td>상풍명</td>
			<td>가격</td>
		</tr>
		
		
		<%for(int i=0; i < restBoardPageDto.getList().size(); i++){ %>
			<tr>
				
				<td><%=restBoardPageDto.getList().get(i).getPname()%></td>
				<td><%=restBoardPageDto.getList().get(i).getPprice()%></td>
				<!-- 
				<td>${restListPage.list[i].pname}</td>
				<td>${restListPage.list[i].pprice}</td>
				 -->
			</tr>
		<%} %>
	</table>
	
	<table border="0" cellpadding="0" cellspacing="1" width="590">
		<tr>
			<td align="center">
				<%if (restBoardPageDto.isShowFirst()) {%> 
					<a href="restaurant_all_list_test?pageno=1">◀◀</a>&nbsp; 
				<%}%> 
				<%if (restBoardPageDto.isShowPreviousGroup()) {%>
					<a href="restaurant_all_list_test?pageno=<%=restBoardPageDto.getPreviousGroupStartPageNo()%>">◀</a>&nbsp;&nbsp;
				<%}%>
				<%
				 	for (int i = restBoardPageDto.getStartPageNo(); i <= restBoardPageDto
				 			.getEndPageNo(); i++) {
				 	if (restBoardPageDto.getSelectPageNo() == i) {
				%>
				 <font color='red'><strong><%=i%></strong></font>&nbsp;
				<%} else {%>
				<a href="restaurant_all_list_test?pageno=<%=i%>"><strong><%=i%></strong></a>&nbsp;
				<%
				   }
				  }%>
				   <%
					if (restBoardPageDto.isShowNextGroup()) {
					%>
					 <a href="restaurant_all_list_test?pageno=<%=restBoardPageDto.getNextGroupStartPageNo()%>">▶&nbsp;</a>
					<%
					}
					%> 
				<%
 				if (restBoardPageDto.isShowLast()) {
 				%> <a href="restaurant_all_list_test?pageno=<%=restBoardPageDto.getTotalPageCount()%>">▶▶</a>&nbsp;
				<%
					}
				%>
					</td>
				</tr>
			</table>

</body>
</html>