<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- 추가 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%  
int price[] = {10000,20000,30000,40000}; 
String name[] = {"사과", "포도", "딸기", "청송사과"};
String imageName[]= {"apple", "grape", "strawberry", "apple"};
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	#scroll-to-top {
				width:50px;
				height:50px;
				position:fixed;
				bottom:3rem;
				right:3rem;
	}
</style>
</head>
<body>
	<h3>오픈 마켓</h3>
	<h2>상품 목록 리스트</h2>
	<div id="apple">
	<% 	for(int i=0; i<price.length; i++) { %>
		<div>
			<img src="images/<%=imageName[i] %>Image.jpg">
		</div>
		<div>
			<b><c:out value="<%=name[i] %>" /></b>
		</div>
		<div>
			<b><fmt:formatNumber value="<%=price[i] %>" pattern="#,###원"/></b>
		</div>
	<% } %>
        <img id="scroll-to-top" src="images/top_image.png" onclick="window.scrollTo(0,0)">
	</div>
</body>
</html>