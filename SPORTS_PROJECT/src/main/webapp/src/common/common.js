/**
 * Write common util code like 
 * Validation.js
 * Connect.js
 */

/** HEADER & FOOTER */

// 토스트 메소드
function toastPop(type, message){
	const toastBtn = $('.toastPop')
	const toastElement = $('#liveToast')
	
	// 메시지로 변경
	$(".toast-body").find(".toast-message").text(message);
	$(".toast").removeClass("base-warn__red");
	$(".toast").removeClass("base-info__green");
	
	// 토스트 스타일 변경
	if (type == "warn"){
		$(".toast").addClass("base-warn__red");
		
	} else if(type == "info"){
		$(".toast").addClass("base-info__green");
	}
		
	// 토스트 실행
	if (toastBtn) {
		const toastBootstrap = bootstrap.Toast.getOrCreateInstance(toastElement)
		toastBootstrap.show()

	}
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

// 로그아웃 메소드
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
		$("input[name*='_id']").addClass("base-warn__red fc__white vibration")
		$("input[name*='_id']").eq(0).focus();
		setTimeout(()=>{
			$("input[name*='_id']").removeClass("vibration")
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
	let pwRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{10,20}$/

	// 형식에 맞지 않을경우
	if (!pwRegex.test(password)){

		// 컬러변경 및 진동효과
		$("input[name*='_pw']").addClass("base-warn__red fc__white vibration")
		$("input[name*='_pw']").eq(0).focus();
		setTimeout(()=>{
			$("input[name*='_pw']").removeClass("vibration")
		}, 300)

		toastPop("warn", "올바른 비밀번호 형식이 아닙니다.")
		return false;
	}

	return true;
}

function emailValidate(email){
	/* email 체크 
		- 이메일 형식
	*/
	let emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/

	// 형식에 맞지 않을경우
	if (!emailRegex.test(email)){

		// 컬러변경 및 진동효과
		$("input[name*='_email']").addClass("base-warn__red fc__white vibration")
		$("input[name*='_email']").eq(0).focus();
		setTimeout(()=>{
			$("input[name*='_email']").removeClass("vibration")
		}, 300)

		toastPop("warn", "올바른 이메일 형식이 아닙니다.")
		return false;
	}

	return true;
}

function nameValidate(name){
	/* name 체크 
		- 최소 2글자, 최대 4글자
		- 한글만 사용가능
	*/
	let nameRegex = /^[ㄱ-힣]{2,4}$/

	// 형식에 맞지 않을경우
	if (!nameRegex.test(name)){

		// 컬러변경 및 진동효과
		$("input[name*='_name']").addClass("base-warn__red fc__white vibration")
		$("input[name*='_name']").eq(0).focus();
		setTimeout(()=>{
			$("input[name*='_name']").removeClass("vibration")
		}, 300)

		toastPop("warn", "올바른 이름 형식이 아닙니다.")
		return false;
	}

	return true;
}


// INPUT Observing Method
function observingInput(){
	$("input[name*='_id']").on("input",function(){
		$(this).removeClass("base-warn__red fc__white")
	})

	$("input[name*='_pw']").on("input",function(){
		$(this).removeClass("base-warn__red fc__white")
	})
	
	$("input[name*='_email']").on("input",function(){
		$(this).removeClass("base-warn__red fc__white")
	})

	$("input[name*='_name']").on("input",function(){
		$(this).removeClass("base-warn__red fc__white")
	})
}