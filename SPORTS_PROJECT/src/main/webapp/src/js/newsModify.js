// 드롭박스
$(document).ready(function () {
	// 이미지 썸네일 이벤트 리스너 연결 함수
	showThumbnail();
	
	// 카테고리선택시 팀 데이터 가져오는 함수
	getTeamNameAll();
});

// 팀 이름 가져오는 함수
function getTeamNameAll() {
    let request_url = `${contextPath}/api/news/getAllTeams`;
    let teamCategoryEl = $(".team-category").eq(0)

    $.ajax({
        type: "GET",
        url: request_url,
        dataType: "json",
        success: function (res) {
			let isGetData = res.hasOwnProperty("data")
			if (isGetData){
				let teams = res.data;
				
				$.each(teams, function(index, d){
					teamCategoryEl.append(`<option value="${d.teamNo}">${d.teamName}</option>`)
				})
			} else{
				toastPop("warn", "팀 데이터를 불러오는데 실패하였습니다")
			}
        },
        error: function (request, status, error) {
            console.log(request);
            console.log(status);
            console.log(error);
        }
    });
}

// 이미지 썸네일 이벤트 리스너 연결 함수
function showThumbnail(){
	const preview = $(".preview").eq(0);
	const thumbnailContainter = $(".newsThumbnail-container").eq(0);
	const inputThumbnail = $(".newsThumbnail").eq(0);
	const deleteImage = $(".delete-image").eq(0);
	
	inputThumbnail.on("change", function(){
	
		// 파일 선택시
		if(this.files[0] != undefined){
			const reader = new FileReader(); 
			thumbnailContainter.addClass("onImg")
			
			reader.readAsDataURL(this.files[0]);
			reader.onload = function(e){ // reader가 파일을 다 읽어온 경우
				preview.prop("src", e.target.result)
			}
	
		// 파일이 선택되지 않았을 때 (취소)
		}else{ 
			preview.removeAttr("src");
			thumbnailContainter.removeClass("onImg")
		}
	    // 미리보기 삭제 버튼(x)이 클릭되었을 때
		deleteImage.on("click", function(){
			// 미리보기가 존재하는 경우에만 x 버튼 동작
			if(preview.prop("src") != ""){
				preview.removeAttr("src");
				thumbnailContainter.removeClass("onImg")
				inputThumbnail.val("");
			}
		})
	})
}


// 뉴스 작성 유효성 검사
function writeValidate(){
    let newsTitle = $("input[name='title']").eq(0);
    let newsPublisher = $("input[name='publisher']").eq(0);
    let newsThumbnail = $("input[name='newsThumbnail']").eq(0);
    let newsContent = $("[name='content']").eq(0);

    if(newsTitle.val().trim() == ''){
        toastPop("warn", "제목을 입력해주세요");
        newsTitle.focus();
        return false;
    } 
    if(newsPublisher.val().trim() == ''){
        toastPop("warn", "뉴스 발행사를 입력해주세요");
        newsPublisher.focus();
        return false;
	}
    if(newsThumbnail.trim() == ''){
        toastPop("warn", "뉴스 이미지를 추가해주세요");
        return false;
	}
    if(newsContent.val().trim() == ''){
        toastPop("warn", "뉴스 내용을 입력해주세요");
        newsContent.focus();
        return false;
	}
    return true;
}

function goBack() {
    window.history.back();
}































