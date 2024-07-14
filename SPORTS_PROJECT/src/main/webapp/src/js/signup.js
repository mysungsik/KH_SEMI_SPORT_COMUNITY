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
			let inputBd = signupForm.signup_bd.value;
			let inputPhone = signupForm.signup_phone.value;
			let inputAddress = signupForm.signup_address.value;
			
			let inputGender = signupForm.signup_gender.value;
			if (inputGender != null){
				inputGender = inputGender.toUpperCase();
			}
			let inputNation  = signupForm.signup_nation.value;
			if (inputNation != null){
				inputNation = inputNation.toUpperCase();
			}
			
			if (idValidate(inputId) &&
				pwValidate(inputPw) &&
				emailValidate(inputEmail) &&
				nameValidate(inputName)) {
				
				let request_url = `${contextPath}/api/sign/signup`
				$.ajax({
					type: "POST",
					url: request_url,
					data: {
						inputId,
						inputPw,
						inputEmail,
						inputName,
						inputBd,
						inputPhone,
						inputAddress,
						inputGender,
						inputNation
					},
					dataType: "json",
					success: function (res) {
						// 로그인 성공 여부 판단
						let isSignedUp = res.hasOwnProperty("data")
	
						if (isSignedUp){
							window.location.href = `${contextPath}/login`
						} else{
							toastPop("warn", `${res.message}`)
						}
						
					},
					error : function(request, status, error){
						console.log(request)
						console.log(status)
						console.log(error)
					}
				});
			} 
		}
	)}
}