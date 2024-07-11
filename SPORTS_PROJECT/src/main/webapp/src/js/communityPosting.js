
// 드롭박스
$(document).ready(function() {
	let sub = $("input[name='sub']");
	let sub_value = sub.val()

	if (sub_value == "update") {
			$(".posting-type").html("게시글 수정")
			$(".category").html(``);
			$(".team").html(``);
	}

});

function selectCategory(el){
	
	let selectedValue = el.value;
	console.log(selectedValue);
	
	switch(selectedValue){
		case "free" : $(".team").html(""); break;
		case "cheer" : $(".team").html(`
					<select name="team" id="team" style="border: none; outline: none;">
				    	<option value="kia">기아 타이거즈</option>
		            	<option value="la">LA 다저스</option>
					</select>
				`); break;
	}
}
































