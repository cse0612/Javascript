<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
.title {
}

#right {
	font-size: 16px;
	text-align: right;
	width: 1250px;
}

#button {
	text-align: center;
	height: 50px;
}

#subject {
	height: 50px;
	font-size: 20px;
	text-align: center;
	background: #DB7093;
	font-weight: bold;
	color: white;
}

.require {
	color: red;
	font-weight: bold;
	text-align: right;
}

.table {
	margin-left: auto;
	margin-right: auto;
	border-spacing: 0;
	text-align: center;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	border-left: 1px solid #ccc;
}

th {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	text-align: right;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #fff;
	border-left: 1px solid #fff;
	background: #F5FFFA;
}

td {
	font-size: 12px;
	text-align: left;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #fff;
	border-left: 1px solid #fff;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- script src="jumin_check.js"></script -->
<script src="script.js" charset="UTF-8"></script>
</head>
<body>
	<form name="memberForm" method="post" action="Member_control.jsp">
		<input type="hidden" name="action" value="insert">
		<div align="center">
			<h1 class="title">회원가입</h1>
			<div class="container">
				<div class="right">
					<span class="require">*</span>필수입력사항
				</div>
				<table class="table">
					<thead>
						<tr>
							<th id="subject" colspan="2">회원 기본 정보</th>
						</tr>
					</thead>
					<tbody class="tbody">
						<tr>
							<th>아이디<span class="require">*</span></th>
							<td><input type="text" name="mem_id" placeholder="6자 이상의 영문과 숫자" required autofocus> 
								<input type="button" value="ID중복확인" onclick="idCheck(mem_id.value)"></td>
						</tr>
						<tr>
							<th>비밀번호<span class="require">*</span></th>
							<td><input type="text" name="mem_passwd" maxlength="12" minlength="8" required>
								8~12자리의 영문 대소문자와 숫자, 특수문자로만 입력</td>
						</tr>
						<tr>
							<th>비밀번호확인<span class="require">*</span></th>
							<td><input type="text" name="mem_passwd2" maxlength="12" minlength="8" required></td>
						</tr>
						<tr>
							<th>이 름<span class="require">*</span></th>
							<td><input type="text" name="mem_name" required></td>
						</tr>
						<tr>
							<th>닉네임</th>
							<td><input type="text" name="mem_nickname">2~10자리의
								한글로만 입력</td>
						</tr>
						<tr>
							<th>이메일<span class="require">*</span></th>
							<td><input type="email" name="mem_email" maxlength="50"
								placeholder="id@domain.com" required>예)id@domain.com</td>
						</tr>
						<tr>
							<th>주민등록번호<span class="require">*</span></th>
							<td><input type="text" id="jumin1" name="mem_num1"
								data-name="주민번호1" size=6 maxlength="6" required> - <input
								type="text" id="jumin2" name="mem_num2" data-name="주민번호2" size=7
								maxlength="7" required> <input type="button" name="btn"
								value="주민번호 정상 유무 체크" onclick="juminCheck(mem_num1.value, mem_num2.value);"></td>
						<tr>
						<tr>
							<th>휴대폰번호<span class="require">*</span></th>
							<td><input type="tel" name="mem_phone"
								placeholder="010-1234-1234" pattern="(010)-[0-9]{4}-[0-9]{4}"></td>
						</tr>
						<tr>
							<th>성 별</th>
							<td><input type="radio" name="mem_gender" value="male"
								checked>남성 <input type="radio" name="mem_gender"
								value="female">여성</td>
						</tr>
						<tr>
							<th>생년월일<span class="require">*</span></th>
							<td><select name="mem_Birthday1" required>
									<!-- option value="">년</option -->
									<script>
									var today = new Date();
									var toyear = parseInt(today.getFullYear());
									var start = toyear;
									var end = toyear - 100;
										document.write("<option value='"+ toyear +"'selected>"+ toyear + "</option>");
									for (i = start; i >= end; i--) {
											document.write("<option value='"+ (i-1) +"'>"+ (i-1) + "</option>");
										}
									</script>
							</select> <select name="mem_Birthday2" required>
									<option value="">월</option>
									<script>
										for (i = 1; i < 13; i++) {
											document.write("<option value='"+ i +"'>"+ i + "</option>");
										}
									</script>
							</select> <select name="mem_Birthday3" required>
									<option value="">일</option>
									<script>
										for (i = 1; i < 32; i++) {
											document.write("<option value='"+ i +"'>"+ i + "</option>");
										}
									</script>
							</select></td>
						</tr>
						<tr>
							<th>직업<span class="require">*</span></th>
							<td><select name="mem_job" required>
									<option value="" selected>직업선택</option>
									<option value="1">회사원</option>
									<option value="2">공무원</option>
									<option value="3">학생</option>
									<option value="4">무직</option>
							</select></td>
						</tr>
						<tr>
							<th>주소<span class="require">*</span></th>
							<td><input type="text" name="zipCode" placeholder="우편번호">
								<input type="button" value="우편번호 찾기" onclick="execDaumPostcode()"></br>
							</br> <input type="text" name="userAddr1" size="100" placeholder="주소"
								required></br> <input type="text" name="userAddr2"
								placeholder="상세주소(동호수 입력)" required> <input type="text"
								name="userAddr3" placeholder="참고항목(도로명인 경우: 지역 동이름과 아파트 이름)"
								size="50"></br><p>
								<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
								<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
								</div>
							</td>
						</tr>
						<tr>
							<td id="button" colspan="2"><input type="submit"
								value="회원가입 등록">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
								type="reset" value="다시쓰기"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</form>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    // 우편번호 찾기 찾기 화면을 넣을 element
	    var element_wrap = document.getElementById('wrap');
	
	    function foldDaumPostcode() {
	        // iframe을 넣은 element를 안보이게 한다.
	        element_wrap.style.display = 'none';
	    }
	
	    function execDaumPostcode() {
	        // 현재 scroll 위치를 저장해놓는다.
	        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.memberForm.userAddr3.value = extraAddr;
	                
	                } else {
	                    document.memberForm.userAddr3.value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.memberForm.zipCode.value = data.zonecode;
	                document.memberForm.userAddr1.value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.memberForm.userAddr2.focus();
	
	                // iframe을 넣은 element를 안보이게 한다.
	                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
	                element_wrap.style.display = 'none';
	
	                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
	                document.body.scrollTop = currentScroll;
	            },
	            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
	            onresize : function(size) {
	                element_wrap.style.height = size.height+'px';
	            },
	            width : '100%',
	            height : '100%'
	        }).embed(element_wrap);
	
	        // iframe을 넣은 element를 보이게 한다.
	        element_wrap.style.display = 'block';
	    }
	</script>
	
</body>
</html>