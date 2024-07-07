$(document).ready(function () {
	// 회원가입 폼 연결
	signup()
	observingInput();
});

function signup(){
	
	let signupForm = document.signupForm
	
	if (signupForm != undefined){
		signupForm.addEventListener("submit", function(e){
			
			e.preventDefault();
			
			let inputId = signupForm.signup_id.value;
			let inputPw = signupForm.signup_pw.value;
			let inputEmail = signupForm.signup_email.value;
			let inputName = signupForm.signup_name.value;
			let inputSSN = signupForm.signup_ssn.value;
			let inputNumber = signupForm.signup_number.value;
			let inputAddress = signupForm.signup_address.value;
			let inputGender = signupForm.signup_gender.value;
			let inputRegion = signupForm.signup_region.value;
			
			if (idValidate(inputId) &&
				pwValidate(inputPw) &&
				emailValidate(inputEmail) &&
				nameValidate(inputName)) {
				
				/* AJAX  -----------------------------
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
	
				----------------------------------------------*/
				window.location.href = `${contextPath}/login`
			} 
		}
	)}
}