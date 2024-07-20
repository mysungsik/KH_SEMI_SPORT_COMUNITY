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

function birthdayValidate(bd){
	/* 생년월일 체크 
		- "-"가 없는 번호 형식
	*/
	let birthDayRegex = /^(19[3-9][0-9]|20[0-1][0-9]|202[0-4])((01(0[1-9]|[12][0-9]|3[01]))|(02(0[1-9]|1[0-9]|2[0-8]))|(02(29))|((0[469]|11)(0[1-9]|[12][0-9]|30))|((0[13578]|1[02])(0[1-9]|[12][0-9]|3[01])))$/

	// 형식에 맞지 않을경우
	if (!birthDayRegex.test(bd)){

		// 컬러변경 및 진동효과
		$("input[name*='_bd']").addClass("base-warn__red fc__white vibration")
		$("input[name*='_bd']").eq(0).focus();
		setTimeout(()=>{
			$("input[name*='_bd']").removeClass("vibration")
		}, 300)

		toastPop("warn", "올바른 생년월일 형식이 아닙니다.")
		return false;
	}

	return true;
}

function phoneValidate(phone){
	/* 핸드폰번호 체크 
		- "-"가 없는 번호 형식
	*/
	let phoneRegex = /^(010)+([0-9]{3,4})([0-9]{4})/

	// 형식에 맞지 않을경우
	if (!phoneRegex.test(phone)){

		// 컬러변경 및 진동효과
		$("input[name*='_phone']").addClass("base-warn__red fc__white vibration")
		$("input[name*='_phone']").eq(0).focus();
		setTimeout(()=>{
			$("input[name*='_phone']").removeClass("vibration")
		}, 300)

		toastPop("warn", "올바른 핸드폰번호 형식이 아닙니다.")
		return false;
	}

	return true;
}

function addressValidate(address){
	/* 주소 체크
		- XX시, XX동 입력
		- 반드시 "," 와 "시", "동" 이 필요
	*/
	let addressRegex = /^[가-힣]{1,10}시,\s?[가-힣]{1,10}동$/

	// 형식에 맞지 않을경우
	if (!addressRegex.test(address)){

		// 컬러변경 및 진동효과
		$("input[name*='_address']").addClass("base-warn__red fc__white vibration")
		$("input[name*='_address']").eq(0).focus();
		setTimeout(()=>{
			$("input[name*='_address']").removeClass("vibration")
		}, 300)

		toastPop("warn", "올바른 생년월일 형식이 아닙니다.")
		return false;
	}

	return true;
}

function authValidate(auth){
	/* 권한 체크
		- A, U 
	*/
	let authRegex = /^[A,U]{1}$/

	// 형식에 맞지 않을경우
	if (!authRegex.test(auth)){

		// 컬러변경 및 진동효과
		$("input[name*='_auth']").addClass("base-warn__red fc__white vibration")
		$("input[name*='_auth']").eq(0).focus();
		setTimeout(()=>{
			$("input[name*='_auth']").removeClass("vibration")
		}, 300)

		toastPop("warn", "올바른 권한 형식이 아닙니다 ( A / U ).")
		return false;
	}

	return true;
}

function stateValidate(state){
	/* 상태 체크
		- G, R, L 
	*/
	let stateRegex = /^[G,R,L]{1}$/

	// 형식에 맞지 않을경우
	if (!stateRegex.test(state)){

		// 컬러변경 및 진동효과
		$("input[name*='_state']").addClass("base-warn__red fc__white vibration")
		$("input[name*='_state']").eq(0).focus();
		setTimeout(()=>{
			$("input[name*='_state']").removeClass("vibration")
		}, 300)

		toastPop("warn", "올바른 상태 형식이 아닙니다 ( G / R / L).")
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
	
	$("input[name*='_bd']").on("input",function(){
		$(this).removeClass("base-warn__red fc__white")
	})
	
	$("input[name*='_phone']").on("input",function(){
		$(this).removeClass("base-warn__red fc__white")
	})

	$("input[name*='_address']").on("input",function(){
		$(this).removeClass("base-warn__red fc__white")
	})
}