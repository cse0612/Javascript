<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 추가 (한글깨짐 방지) -->
<% request.setCharacterEncoding("UTF-8");  %>
<!--  JSP에서 자바빈을 사용하기 위한 액션태그   -->
<jsp:useBean id="mem" class="member.DBBean" scope="page"/>

<%	//스크립트릿 안에는 자바 코드 기술
	String mem_id = request.getParameter("mem_id");
	int idCheck = mem.confirmId(mem_id);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IdCheck.jsp 페이지</title>
</head>
<body>
	<table border="0" align="center">
		<tr>
			<td align="center">
			<%
				if(idCheck == 1) {	// ID가 중복된 경우
			%>
			<br>
			<%=mem_id %> 는 이미 존재하는 ID입니다. &nbsp;<br><br>
			<input type="button" value="닫기" onclick="javascript:self.close(); opener.document.memberForm.mem_id.focus();">	
			<%  }else{ %>
			<br>
			<%=mem_id %>는 사용 가능한 ID입니다.&nbsp;<br><br>
			<input type="button" value="닫기" onclick="javascript:self.close(); opener.document.memberForm.mem_passwd.focus();">
			<%  }  %>
			</td>
		</tr>
	</table>
</body>
</html>