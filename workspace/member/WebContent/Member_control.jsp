<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="mem" class="member.DBBean" scope="page" />
<jsp:setProperty property="*" name="mem"/>
<%
	//"action" 이라는 문자열의 값 => 즉 "insert" action 참조변수에 할당
	String action = request.getParameter("action");

	if(action.equals("insert")) {
		if(mem.insertDB()) {	// 반환type : Boolean
		//System.out.println("member 테이블에 데이타 입력 성공!");
			response.sendRedirect("welcome.jsp");
		} else {
			System.out.println("member 테이블에 데이타 입력 실패!");
			response.sendRedirect("Member_Form.jsp");
		}
	}
%>
