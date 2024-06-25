/**
 * Write common util code like 
 * Validation.js
 * Connect.js
 */

/** HEADER & FOOTER */
$(document).ready(function () {
});

// 비밀번호 보기 이벤트
$(".password-eye").on("mousedown", function(){
    $("input[name*='-password']").prop("type", "text");
    $(this).prop("src","/SPORTS_PROJECT/public/icons/eye.png" )
})
$(".password-eye").on("mouseout", function(){
    $(this).prop("src","/SPORTS_PROJECT/public/icons/eye-closed.png" )
})
$(".password-eye").on("mouseup", function(){
    $("input[name*='-password']").prop("type", "password");
    $(this).prop("src","/SPORTS_PROJECT/public/icons/eye-closed.png" )
})


// 체크박스 전체선택
let chekcboxes = $("input[type='checkbox']")
let allCheck = $("#check-all")
allCheck.on("click", ()=>{
    if(allCheck.prop("checked") == true){
        $(chekcboxes).prop("checked", true);
    }
})