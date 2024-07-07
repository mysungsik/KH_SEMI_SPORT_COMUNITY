/**
 * Write common util code like 
 * Validation.js
 * Connect.js
 */

/** HEADER & FOOTER */
var contextPath = "";

$(document).ready(function () {
	contextPath = "/" + window.location.pathname.split("/")[1];
});


// 로그아웃 메서드
function logout(){
	let URL = `${contextPath}/api/user/logout`
	$.ajax({
        type: "POST",        // 데이터 전송 타입
        url : URL,          // 데이터를 주고받을 파일 주소 입력
        data: "",           // 보내는 데이터
        async : false,
        success : function(){
			location.href = `${contextPath}/login`;
		}
   })
}

// 비밀번호 보기 이벤트
$(".password-eye").on("mousedown", function(){
    $("input[name*='_pw']").prop("type", "text");
    $(this).prop("src",`${contextPath}/public/icons/eye.png` )
})
$(".password-eye").on("mouseout", function(){
    $(this).prop("src",`${contextPath}/public/icons/eye-closed.png` )
})
$(".password-eye").on("mouseup", function(){
    $("input[name*='_pw']").prop("type", "password");
    $(this).prop("src",`${contextPath}/public/icons/eye-closed.png` )
})


// 체크박스 전체선택
let chekcboxes = $("input[type='checkbox']")
let allCheck = $("#check-all")
allCheck.on("click", ()=>{
    if(allCheck.prop("checked") == true){
        $(chekcboxes).prop("checked", true);
    }
})

// VALIDATING METHOD
function idValidate(id){
	/* ID 체크 
		- 5글자 이상 13글자 이하
		- 반드시 소문자 포함
		- 추가적으로 대문자, 숫자 가능
		- 대문자, 숫자만으로 이루어질 수 없음
	*/
	let idRegex = /^(?=.*[a-z])(?!^\d+$)[a-zA-Z\d]{5,13}$/

	// 형식에 맞지 않을경우
	if (!idRegex.test(id)){

		// 컬러변경 및 진동효과
		$("input[name='login_id']").addClass("base-warn__red fc__white vibration")
		$("input[name='login_id']").eq(0).focus();
		setTimeout(()=>{
			$("input[name='login_id']").removeClass("vibration")
		}, 300)
		
		toastPop("warn", "올바른 아이디 형식이 아닙니다.")
		return false;
	}

	return true;
}
function pwValidate(password){
	/* password 체크 
		- 최소 10글자, 최대 20글자
		- 최소 하나의 소문자, 대문자, 숫자를 반드시 포함
		- 특수문자 사용 가능
	*/
	let idRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{10,20}$/

	// 형식에 맞지 않을경우
	if (!idRegex.test(password)){

		// 컬러변경 및 진동효과
		$("input[name='login_pw']").addClass("base-warn__red fc__white vibration")
		$("input[name='login_pw']").eq(0).focus();
		setTimeout(()=>{
			$("input[name='login_pw']").removeClass("vibration")
		}, 300)

		toastPop("warn", "올바른 비밀번호 형식이 아닙니다.")
		return false;
	}

	return true;
}

function observingInput(){
	$("input[name='login_id']").on("input",function(){
		$(this).removeClass("base-warn__red fc__white")
	})

	$("input[name='login_pw']").on("input",function(){
		$(this).removeClass("base-warn__red fc__white")
	})
}