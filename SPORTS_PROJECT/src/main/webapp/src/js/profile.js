var contextPath = "";

$(document).ready(function () {
	contextPath = "/" + window.location.pathname.split("/")[1];
});

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

// 전체 페이지네이션 함수 (category, title, content)
function paginationTemplate(data) {
    let item = "";
    $.each(data, function(index, d){
	  	item += 
	  		`<div class="item checkbox__blue small-square base__lblue">
	            <div class="element-text">
	                <input type="checkbox" id="post-check" name="post-check" value="1">
	                <div>
	                    <p class="fc__gray"> <span>${d.category}</span> ${d.title}</p>
	                    <p class="item-text"> ${d.content} </p>
	                </div>
	            </div>
	            <div class="element-edit">
	                <img src="/SPORTS_PROJECT/public/icons/edit.png"">
	            </div>
	        </div>`
	})

    return item;
}

// 내 댓글 페이지네이션 함수
if ($('#comments-pagination').length > 0){
	$('#comments-pagination').pagination({
    dataSource: [
		{category : "[ 커뮤니티 - 구호 ]", title : "커뮤니티 글1", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 지호 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 기호 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 테스트30", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 야호 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 테스트입니다 60", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 제호 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 테스트입니다 120", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 테스트입니다 120", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 커뮤니티 - 공지 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
	
	],
 
    pageSize: 10,
    
    callback: function(data, pagination) {
        var html = paginationTemplate(data);
        
        $('#comments-data').html(html);	// 데이터 페이지네이션
        
        // 체크박스 전체선택 함수
        allChecks();

		var currentPage = pagination.pageNumber;	// 현재 페이지 번호
		
		// 페이지네이션 변경
		var pagingEl = $(`.paginationjs-page[data-num='${currentPage}'] a`);
		pagingEl.css({
			fontSize : "14px",
			textDecoration : "underline"
		})
	}
})}

// 내 게시글 페이지네이션 함수
if ($('#board-pagination').length > 0){
	$('#board-pagination').pagination({
    dataSource: [
		{category : "[ 공지사항 ]", title : "", content : "커뮤니티 공지사항입니다 확인해주세요 "},
		{category : "[ 자유게시판 ]", title : "", content : "안녕 나의 게시물입니다. 반갑습니다."},
		{category : "[ 응원 - 기아 ]", title : "", content : "기아 응원합니다!"},
		{category : "[ 응원 - 다저스 ]", title : "", content : "다저스 응원합니다!"},
		{category : "[ 자유게시판 ]", title : "", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 응원 - 한화 ]", title : "", content : "한화 응원합니다!!"},
		{category : "[ 공지사항 ]", title : "", content : "커뮤니티 공지사항입니다 확인해주세요 "},
		{category : "[ 자유게시판 ]", title : "", content : "안녕 나의 게시물입니다. 반갑습니다."},
		{category : "[ 응원 - 기아 ]", title : "", content : "기아 응원합니다!"},
		{category : "[ 응원 - 다저스 ]", title : "", content : "다저스 응원합니다!"},
		{category : "[ 자유게시판 ]", title : "", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 응원 - 한화 ]", title : "", content : "한화 응원합니다!!"},
		{category : "[ 공지사항 ]", title : "", content : "커뮤니티 공지사항입니다 확인해주세요 "},
		{category : "[ 자유게시판 ]", title : "", content : "안녕 나의 게시물입니다. 반갑습니다."},
		{category : "[ 응원 - 기아 ]", title : "", content : "기아 응원합니다!"},
		{category : "[ 응원 - 다저스 ]", title : "", content : "다저스 응원합니다!"},
		{category : "[ 자유게시판 ]", title : "", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 응원 - 한화 ]", title : "", content : "한화 응원합니다!!"},
		{category : "[ 공지사항 ]", title : "", content : "커뮤니티 공지사항입니다 확인해주세요 "},
		{category : "[ 자유게시판 ]", title : "", content : "안녕 나의 게시물입니다. 반갑습니다."},
		{category : "[ 응원 - 기아 ]", title : "", content : "기아 응원합니다!"},
		{category : "[ 응원 - 다저스 ]", title : "", content : "다저스 응원합니다!"},
		{category : "[ 자유게시판 ]", title : "", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 응원 - 한화 ]", title : "", content : "한화 응원합니다!!"},
		{category : "[ 공지사항 ]", title : "", content : "커뮤니티 공지사항입니다 확인해주세요 "},
		{category : "[ 자유게시판 ]", title : "", content : "안녕 나의 게시물입니다. 반갑습니다."},
		{category : "[ 응원 - 기아 ]", title : "", content : "기아 응원합니다!"},
		{category : "[ 응원 - 다저스 ]", title : "", content : "다저스 응원합니다!"},
		{category : "[ 자유게시판 ]", title : "", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 응원 - 한화 ]", title : "", content : "한화 응원합니다!!"},
		{category : "[ 공지사항 ]", title : "", content : "커뮤니티 공지사항입니다 확인해주세요 "},
		{category : "[ 자유게시판 ]", title : "", content : "안녕 나의 게시물입니다. 반갑습니다."},
		{category : "[ 응원 - 기아 ]", title : "", content : "기아 응원합니다!"},
		{category : "[ 응원 - 다저스 ]", title : "", content : "다저스 응원합니다!"},
		{category : "[ 자유게시판 ]", title : "", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
		{category : "[ 응원 - 한화 ]", title : "", content : "한화 응원합니다!!"},
	
	],
 
    pageSize: 10,
    
    callback: function(data, pagination) {
        var html = paginationTemplate(data);
        
        $('#board-data').html(html);	// 데이터 페이지네이션
        
        // 체크박스 전체선택 함수
        allChecks();

		var currentPage = pagination.pageNumber;	// 현재 페이지 번호
		
		// 페이지네이션 변경
		var pagingEl = $(`.paginationjs-page[data-num='${currentPage}'] a`);
		pagingEl.css({
			fontSize : "14px",
			textDecoration : "underline"
		})
	}
})}

// 내 게시글 페이지네이션 함수
if ($('#scrab-pagination').length > 0){
	$('#scrab-pagination').pagination({
    dataSource: [
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지! "},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
		{category : "[ 뉴스 종류1 ]", title : "", content : " ‘9실점 악몽’ 준 키움과 2달 만에 재회하여 무진장 털려버렸다. 감독 뉴스 길이가 아무리 길어도 Eclipsis 로 없앨 수 있지!"},
	
	],
 
    pageSize: 10,
    
    callback: function(data, pagination) {
        var html = paginationTemplate(data);
        
        $('#scrab-data').html(html);	// 데이터 페이지네이션
        
        // 체크박스 전체선택 함수
        allChecks();

		var currentPage = pagination.pageNumber;	// 현재 페이지 번호
		
		// 페이지네이션 변경
		var pagingEl = $(`.paginationjs-page[data-num='${currentPage}'] a`);
		pagingEl.css({
			fontSize : "14px",
			textDecoration : "underline"
		})
	}
})}



