$(document).ready(function(){
	observingInput();
	resultMessage();
})

function resultMessage(){
	let resultValue = $("#resultMessage").val();
	
	if (resultValue != ""){
		toastPop("warn", resultValue)
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
					showModal();
				}
				else{
					toastPop("warn", `${res.message}`)
				}
			}
		})
	}
}

function showModal(){
	let modalEl = $('#commonModal');

	modalEl.find(".modal-title").html("비밀번호 변경")
	modalEl.find(".modal-body").html(`
		<p> 변경할 비밀번호를 입력해주세요 </p>
		<input type="password" name="new_pw">`
	);

	modalEl.modal('show');
}

function modalConfirm(){
	let findPwForm = document.findPwForm;
	
	let inputId = findPwForm.find_id.value;
	let inputEmail = findPwForm.find_email.value;
	let inputPw = $('input[name="new_pw"]').val();
	
	// 체크된 ID, EMAIL 이므로 더이상 체크하지않는다.
	if (pwValidate(inputPw)){
	let requestUrl = `${contextPath}/api/updateUser/updatePw`
		$.ajax({
			type : "POST",
			url : requestUrl,
			data : {
				inputId,
				inputEmail,
				inputPw
			},
			dataType: "json",
			success : function(res){
				console.log(res)
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
}