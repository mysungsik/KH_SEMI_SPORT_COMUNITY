
// 드롭박스
$(document).ready(function () {
	let sub = $("input[name='sub']");
	let sub_value = sub.val()

	if (sub_value == "update") {
		$(".posting-type").html("게시글 수정")
		$(".category").html("");
		$(".team").html("");
	}

});

// 함수화된 AJAX 요청
function selectTeams() {
    let request_url = `${contextPath}/api/community/communityBoard`;

    $.ajax({
        type: "GET",
        url: request_url,
        dataType: "json",
        success: function (res) {
            // Handle teams data for select options
            let teams = res.teams; // Assuming "teams" is the key in your JSON response

            // Populate options for the team select
            updateTeamSelectOptions(teams);
        },
        error: function (request, status, error) {
            console.log(request);
            console.log(status);
            console.log(error);
        }
    });
}

function updateTeamSelectOptions(teams) {
    // Clear existing options (if any)
    $("#team").empty();

    // Populate options
    teams.forEach(function (team) {
        $("#team").append(`<option value="${team.teamNo}">${team.teamName}</option>`);
    });

    // Optionally, select the first team as default
    if (teams.length > 0) {
        $("#team").val(teams[0].teamNo);
    }
}

function selectCategory(el) {
    let selectedValue = el.value;

    switch (selectedValue) {
        case "2":
        case "1":
            $(".team").html(""); // 빈 문자열로 설정하여 내용을 비웁니다.
            break;
        case "3": $(".team").html(`
			<select name="team" id="team" style="border: none; outline: none;">
			</select>
		`);
            // AJAX를 통해 팀 목록을 불러와 셀렉트 박스를 생성합니다.
            selectTeams();
            break;
    }
}



// 미리보기 관련 요소 모두 얻어오기
const preview = document.getElementsByClassName("preview")[0];
const inputImage = document.getElementsByClassName("inputImage")[0];
const deleteImage = document.getElementsByClassName("delete-image")[0];

inputImage.addEventListener("change", function(){

	if(this.files[0] != undefined){
		
		const reader = new FileReader(); 
		// 선택된 파일을 읽을 객체 생성

		reader.readAsDataURL(this.files[0]);
		// 지정된 파일을 읽음 -> result에 저장(URL 포함)
		// -> URL을 이용해서 이미지 볼 수 있음

		reader.onload = function(e){ // reader가 파일을 다 읽어온 경우
			// e.target == reader
			// e.target.result == 읽어들인 이미지의 URL
			// preview[i] == 파일이 선택된 input 태그와 인접한 preview 이미지 태그

			preview.setAttribute("src", e.target.result)


		}

	}else{ // 파일이 선택되지 않았을 때 (취소)
		preview.removeAttribute("src");

	}

	    // 미리보기 삭제 버튼(x)이 클릭되었을 때
		deleteImage.addEventListener("click", function(){

			// 미리보기가 존재하는 경우에만 x 버튼 동작
			if(preview.getAttribute("src") != ""){
	
				// 미리보기 삭제
				preview.removeAttribute("src");
		
				// input의 값 "" 만들기
				inputImage.value = "";
		
			}
	
			
		})

})

// 게시글 작성 유효성 검사
function writeValidate(){
    const boardTitle = document.getElementsByName("title")[0];
    const boardContent = document.querySelector("[name='content']");

    if(boardTitle.value.trim().length == 0){
        alert("제목을 입력해주세요.");
        boardTitle.focus();
        boardTitle.value = "";
        return false;
    }

    if(boardContent.value.trim().length == 0){
        alert("내용을 입력해주세요.");
        boardContent.focus();
        boardContent.value = "";
        return false;
    }

    return true;
}

function goBack() {
    window.history.back();
}































