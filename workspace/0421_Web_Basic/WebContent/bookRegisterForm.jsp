<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <!-- �߰� -->
<%@ page import="java.sql.Timestamp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��ǰ ��� ����</title>
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
<p style="text-align:center;font-weight:bold">å ���</p>
<form name="writeform" metdod="post" action="bookReister.jsp" enctype="multipart/form-data">
<table width="500" border="1" cellspacing="0" cellpading="0" align="center">
  <tr>
  	<td>�з�����</td>
  	<td>
  		<select name="book_kind">
			<option selected>---- �� �� �� �� -----</option>
			<option value="100">����</option>
			<option value="200">����</option>
			<option value="300">����</option>
			<option value="400">��ġ/��ȸ</option>
			<option value="500">����</option>
  		</select>
  	</td>
  </tr>
  <tr>
  	<td>��  ��</td>
  	<td><input type="text" name="book_title" size="50" required></td>
  </tr>
  <tr>
  	<td>��  ��</td>
  	<td><input type="text" name="book_price" size="10" required>��</td>
  	
  </tr>
  <tr>
  	<td>��  ��</td>
  	<td><input type="number" name="book_count" style="width:95px" value="1">��</td>
  </tr>
  <tr>
  	<td>��  ��</td>
  	<td><input type="text" name="autdor" size="10"></td>
  </tr>
  <tr>
  	<td>���ǻ�</td>
  	<td><input type="text" name="publisher" size="10" ></td>
  </tr>
  <tr>
  	<td>������</td>
  	<td><select name="publishing_year">
  			<option selected>��</option>
	<%	//�ڹ��ڵ� ���
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
  			<option selected>��</option>
  			<%
  				for(int i = 1; i <= 12; i++) {
  			%>
  					<option value="<%= i %>"><%= i %></option>
  			<%
  				}
  			 %>
  	</select>
  	<select name="publishing_day">
  			<option selected>��</option>
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
  	<td>�̹���</td>
  	<td><input type="file" name="book_image"></td>
  </tr>
  <tr>
  	<td>����</td>
  	<td><textarea rows="13" cols="40" name="book_content"></textarea></td>
  </tr>
  <tr>
  	<td>������</td>
  	<td><input type="number" name="discount_rate" style="width:90px">%</td>
  </tr>
  <tr>
  	<td id="button" colspan="2">
  		<input type="submit" value="å���">&nbsp;&nbsp;&nbsp;
  		<input type="reset"  value="�ٽ��ۼ�">
  	</td>
  </tr>
</table>
</form>
</body>
</html>