var contextPath = "";

$(document).ready(function () {
	contextPath = "/" + window.location.pathname.split("/")[1];
});


// 페이지네이션 함수
function pagingTemplate(data) {

    let comments = "";
    $.each(data, function(index, item){
	  	comments += 
	  		`<comment class="comment checkbox__blue small-square base__lblue">
	            <div class="element-text">
	                <input type="checkbox" id="post-check" name="post-check" value="1">
	                <div>
	                    <p class="fc__gray"> <span>${item.category}</span> ${item.content}</p>
	                    <p class="comment-text"> ${item.comment} </p>
	                </div>
	            </div>
	            <div class="element-edit">
	                <img src="/SPORTS_PROJECT/public/icons/edit.png"">
	            </div>
	        </comment>`
	})

    return comments;
}

$('#pagination-container').pagination({
    dataSource: [
		{category : "[ 커뮤니티 - 구호 ]", content : "커뮤니티 글1", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 지호 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 기호 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 테스트30", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 야호 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 테스트입니다 60", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 제호 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 테스트입니다 120", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 테스트입니다 120", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", content : "커뮤니티 글 이렇게 쓰는게 맞나요", comment : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
	
	],
 
    pageSize: 10,
    
    callback: function(data, pagination) {
        var html = pagingTemplate(data);
        
        $('#data-container').html(html);	// 데이터 페이지네이션
        
        // 체크박스 전체선택 함수
        allChecks();

		var currentPage = pagination.pageNumber;	// 현재 페이지 번호
		var pagingEl = $(`.paginationjs-page[data-num='${currentPage}'] a`);
		
		console.log(pagingEl)
		pagingEl.css({
			fontSize : "14px",
			textDecoration : "underline"
		})
		
		
		
		
}
})

// 체크박스 전체선택 함수
function allChecks(){
	let allCheck = $("#check-all")	// 체크박스 전체선택 요소
    allCheck.prop("checked", false);	// 페이지 옮기면 취소
    
	let chekcboxes = $("input[type='checkbox']")
	
	allCheck.on("click", ()=>{
	    if(allCheck.prop("checked") == true){
	        $(chekcboxes).prop("checked", true);
	    }
	})
}
