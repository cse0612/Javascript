<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <!-- 추가 -->
<%@ page import="java.sql.Timestamp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>도서 상품 등록 예제</title>
</head>
<style>
	tr td:nth-child(1) {
	  font-weight: bold;
	  font-size:14px;
	  text-align: center;
	  background: orange;
	  width: 100px;
	}
	
	tr td:nth-child(2) {
	  font-size:12px;
	  text-align: left;
	}
	
	#button { 
	  text-align:center; 
	  background-color: orange;
	} 
</style>

<body>
<p style="text-align:center;font-weight:bold">책 등록</p>
<form name="writeform" metdod="post" action="bookReister.jsp" enctype="multipart/form-data">
<table width="500" border="1" cellspacing="0" cellpading="0" align="center">
  <tr>
  	<td>분류선택</td>
  	<td>
  		<select name="book_kind">
			<option selected>---- 도 서 선 택 -----</option>
			<option value="100">문학</option>
			<option value="200">역사</option>
			<option value="300">여행</option>
			<option value="400">정치/사회</option>
			<option value="500">과학</option>
  		</select>
  	</td>
  </tr>
  <tr>
  	<td>제  목</td>
  	<td><input type="text" name="book_title" size="50" required></td>
  </tr>
  <tr>
  	<td>가  격</td>
  	<td><input type="text" name="book_price" size="10" required>원</td>
  	
  </tr>
  <tr>
  	<td>수  량</td>
  	<td><input type="number" name="book_count" style="width:95px" value="1">권</td>
  </tr>
  <tr>
  	<td>저  자</td>
  	<td><input type="text" name="autdor" size="10"></td>
  </tr>
  <tr>
  	<td>출판사</td>
  	<td><input type="text" name="publisher" size="10" ></td>
  </tr>
  <tr>
  	<td>출판일</td>
  	<td><select name="publishing_year">
  			<option selected>년</option>
	<%	//자바코드 기술
		//timestamp => 2021-04-26 17:00:01
		Timestamp nowTime = new Timestamp(System.currentTimeMillis());
		int lastYear = Integer.parseInt(nowTime.toString().substring(0,4));
		for(int i = lastYear; i >= 2010; i--) {
	%>
			<option value="<%= i %>"><%= i %></option>
	<%			
		}
	%>
  	</select>
  	<select name="publishing_montd">
  			<option selected>월</option>
  			<%
  				for(int i = 1; i <= 12; i++) {
  			%>
  					<option value="<%= i %>"><%= i %></option>
  			<%
  				}
  			 %>
  	</select>
  	<select name="publishing_day">
  			<option selected>일</option>
  			<%
  				for(int i = 1; i <= 31; i++) {
  			%>
  					<option value="<%= i %>"><%= i %></option>
  			<%
  				}
  			 %>
  	</select>
  	</td>
  </tr>
  <tr>
  	<td>이미지</td>
  	<td><input type="file" name="book_image"></td>
  </tr>
  <tr>
  	<td>내용</td>
  	<td><textarea rows="13" cols="40" name="book_content"></textarea></td>
  </tr>
  <tr>
  	<td>할인율</td>
  	<td><input type="number" name="discount_rate" style="width:90px">%</td>
  </tr>
  <tr>
  	<td id="button" colspan="2">
  		<input type="submit" value="책등록">&nbsp;&nbsp;&nbsp;
  		<input type="reset"  value="다시작성">
  	</td>
  </tr>
</table>
</form>
</body>
</html>