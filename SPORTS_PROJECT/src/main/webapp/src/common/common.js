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
	let URL = `${contextPath}/api/login/logout`
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
    $("input[name*='-password']").prop("type", "text");
    $(this).prop("src",`${contextPath}/public/icons/eye.png` )
})
$(".password-eye").on("mouseout", function(){
    $(this).prop("src",`${contextPath}/public/icons/eye-closed.png` )
})
$(".password-eye").on("mouseup", function(){
    $("input[name*='-password']").prop("type", "password");
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