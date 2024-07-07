var contextPath = "";

$(document).ready(function () {
	contextPath = "/" + window.location.pathname.split("/")[1];

	// 로그인 폼 연결
	userLogin()
	observingInput();
});

function userLogin(){
	let loginForm = document.loginForm
	
	loginForm.addEventListener("submit", function(e){
		e.preventDefault();

		let inputId = loginForm.login_id.value;
		let inputPw = loginForm.login_pw.value;
		
		if (idValidate(inputId) &&
			pwValidate(inputPw)) {
			
			let request_url = `${contextPath}/api/user/login`
			$.ajax({
				type: "POST",
				url: request_url,
				data: {
					inputId,
					inputPw
				},
				dataType: "json",
				success: function (res) {
					// 로그인 성공 여부 판단
					let isloginUser = res.hasOwnProperty("data")

					if (isloginUser){
						window.location.href = 'dashboard';
					} else{
						toastPop("warn", `${res.message}`)
					}
					
				},
				error : function(request, status, error){

				}
			});

		} 
	})
}

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