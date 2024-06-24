let chekcboxes = $("input[type='checkbox']")
let allCheck = $("#term-all")
allCheck.on("click", checkAll)

// 전체체크
function checkAll(){
    if(allCheck.prop("checked") == true){
        $(chekcboxes).prop("checked", true);
    }
}
