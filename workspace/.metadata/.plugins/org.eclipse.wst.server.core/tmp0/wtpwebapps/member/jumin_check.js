$(document).ready(function(){
	 $('#jumin1').on('keyup', function(){
         if($(this).val().length == 6)
             $('#jumin2').trigger('focus');
     });
});

//주민번호체크버튼
function juminCheck() {
 	if(($("#jumin1").val() == "") || ($("#jumin2").val() == "")){
	    alert("주민등록번호를 다시 입력해주세요");
	    $("#jumin1").focus();
	    return false;
	}
	if(checkJumin() == false){
	    return false;
	} 
}

// 주민번호 정상 유무 체크 함수
function checkJumin(){
    
    var jumins3 = $("#jumin1").val() + $("#jumin2").val();
    //주민등록번호 생년월일 전달

    var fmt = RegExp(/^\d{6}[1234]\d{6}$/)  //정규표현식 포멧 설정
    var buf = new Array(13);

    //주민번호 입력 패턴 검사
    if (!fmt.test(jumins3)) {
          alert("주민등록번호 형식에 맞게 입력해주세요");
          $("#jumin1").focus();
          return false;
    }

    //주민번호 유효성 검사
    for(var i = 0; i < buf.length; i++){
  		buf[i] = parseInt(jumins3.charAt(i));
    }
    var multipliers = [2,3,4,5,6,7,8,9,2,3,4,5];	// 밑에 더해주는 12자리 숫자들 
    var sum = 0;
    for(var i = 0; i < 12; i++){
    	sum += (buf[i] *= multipliers[i]);	// 배열끼리12번 돌면서 
     }
	if ((11 - (sum % 11)) % 10 != buf[12]) {
    	alert("잘못된 주민등록번호 입니다.");
       	$("#jumin1").focus();
        return false;
    } else {
    	alert("주민등록번호가 정상입니다");
    	return true;
    }
}