$(document).ready(function(){
	observingInput();
	resultMessage();
})

function resultMessage(){
	let resultEl = $("#resultMessage");
	
	if (resultEl.length != 0){
		let resultValue = $("#resultMessage").val();
	
		if (resultValue != ""){
			toastPop("warn", resultValue)
		}
	}
}

function findId(){
	let findIdForm = document.findIdForm;

	let inputEmail = findIdForm.find_email.value;
	let inputName = findIdForm.find_name.value;
	
	if (emailValidate(inputEmail) && 
		nameValidate(inputName)){
		return true;
	}else{
		return false;	
	}
}

function findPw(e){
	let findPwForm = document.findPwForm;
	e.preventDefault();
	
	let inputId = findPwForm.find_id.value;
	let inputEmail = findPwForm.find_email.value;
	
	if (idValidate(inputId) && 
		emailValidate(inputEmail)){
		let requestUrl = `${contextPath}/api/findUser/findPw`
		$.ajax({
			type : "POST",
			url : requestUrl,
			data : {
				inputId,
				inputEmail
			},
			dataType: "json",
			success : function(res){
				console.log(res)
				// 비밀번호 찾았는지 여부 판단
				let isFindUser =  res.hasOwnProperty("data");
				
				// 찾았다면 모달 띄우기
				if (isFindUser){
					showModal(res.data);
				}
				else{
					toastPop("warn", `${res.message}`)
				}
			}
		})
	}
}

function showModal(foundUserNo){
	let modalEl = $('#changePwModal');

	modalEl.find(".modal-title").html("비밀번호 메일 인증")
	modalEl.find(".modal-body").html(`
		<p class="fs-14"> 전송된 메일의 인증번호를 입력해주세요 </p>
		<p> 메일 인증 성공시 비밀번호는 <span class="fs-14__b fc__dblue"> Qwertyuiop1 </span>로 변경됩니다.</p>
		<p class="fc__gray"> 반드시 임시 비밀번호를 복사하여 저장해주세요 </p>
		<input type="hidden" name="user_no" value=${foundUserNo}>
		<input type="text" name="mail_auth">`
	);

	modalEl.modal('show');
}

function modalConfirm(){
	let modalEl = $('#changePwModal');
	var changePwModal = bootstrap.Modal.getInstance(modalEl);
	
	const userNo =$('input[name="user_no"]').val();
	let inputMailAuth = $('input[name="mail_auth"]').val();
	
	let requestUrl = `${contextPath}/api/updateUser/resetPw`
		$.ajax({
			type : "POST",
			url : requestUrl,
			data : {
				userNo,
				inputMailAuth
			},
			dataType: "json",
			success : function(res){
				// 비밀번호 업데이트 되었는지 여부 판단
				let isPasswordUpdated =  res.hasOwnProperty("data");
				
				// 업데이트 되었다면, 로그인페이지로 이동
				if (isPasswordUpdated){
					window.location.href = `${contextPath}/login`
				}
				else{
					toastPop("warn", `${res.message}`)
				}
			}
		})
	
}