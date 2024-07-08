$(document).ready(function(){

})

function findId(e){
	let findIdForm = document.findIdForm;
	e.preventDefault();
	
	let inputEmail = findIdForm.find_email.value;
	let inputName = findIdForm.find_name.value;
	
	if (emailValidate(inputEmail) && 
		nameValidate(inputName)){
		let requestUrl = `${contextPath}/findUser/findId`
		$.ajax({
			url : requestUrl,
			data : {
				inputEmail,
				inputName
			},
			dateType: "json",
			success : function(res){
				console.log(res)
				// 아이디 찾았는지 여부 판단
				let isFindUser =  res.hasOwnProperty("data");
				
				// 찾았다면 저기로
				if (isFindUser){
					window.location.href = 'findResult';
				}
				else{
					toastPop("warn", `${res.message}`)
				}
			}
		})
	}

}