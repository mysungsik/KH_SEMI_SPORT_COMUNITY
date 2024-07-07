

// 드롭박스
$(document).ready(function() {
	contextPath = "/" + window.location.pathname.split("/")[1];

	let sub = $("input[name='sub']");
	let sub_value = sub.val()
	$(".switch-category").addClass("base__lblue")
	$(".switch-title").addClass("fc__gray")

	switch (sub_value) {
		
		case "free": {
			$(".category").html(`
					<select name="category" onchange="if(this.value) location.href=(this.value);" id="category" style="border: none; outline: none;">
		            	<option value="free" name="free" selected>자유 게시판</option>
				    	<option value="cheer" name="cheer">응원 게시판</option>
					</select>
			`);
			$(".team").html(`

			`);
			break;
		}
		case "cheer": {
			$(".category").html(`
					<select name="category" onchange="if(this.value) location.href=(this.value);" id="category" style="border: none; outline: none;">
		            	<option value="free" name="free">자유 게시판</option>
				    	<option value="cheer" name="cheer" selected>응원 게시판</option>
					</select>
			`);
			$(".team").html(`
					<select name="team" id="team" style="border: none; outline: none;">
				    	<option value="kia">기아 타이거즈</option>
		            	<option value="la">LA 다저스</option>
					</select>
				`);
			break;
		}

	}

});


