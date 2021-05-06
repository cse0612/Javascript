<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>[중요] 쇼핑몰 사이트에 jQuery의 change() 함수 활용</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function() {
		$('#select2,#select3').hide();
		
		$('select[name=option1]').change(function(){
				$('#select2').show();
		});
		
		$('#select2').change(function(){
			$('#select3').show();
		});
	});
</script>
</head>
<body>
	<form name="shoppingForm">
		<b>와이셔츠 옵션 선택</b>
		<br><br>
		<select id="select1" name="option1">
			<option selected>상품명 선택</option>
			<option value="링클프리 셔츠">링클프리 셔츠</option>
			<option value="라인NB 셔츠">라인NB 셔츠</option>
			<option value="이중ST포켓 셔츠">이중ST포켓 셔츠</option>
		</select>
		<br><br>
		
		<select id="select2" name="option2">
			<option selected>색상 선택</option>
			<option value="white">White</option>
			<option value="Black">Black</option>
			<option value="Dark Red">Dark Red</option>
			<option value="Maroon">Maroon</option>
			<option value="Darkcyan">Darkcyan</option>
		</select>
		<br><br>
		
		<select id="select3" name="option3">
			<option selected>사이즈 선택</option>
			<option value="L">L|50,000원|10</option>
		</select>
				
	</form>
</body>
</html>