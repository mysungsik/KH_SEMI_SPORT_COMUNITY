$(document).ready(function () {
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