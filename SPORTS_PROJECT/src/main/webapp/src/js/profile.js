var contextPath = "";

// 더미데이터 START ---------------------------------
let commentsData = [
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
			
]

let contentsData = [
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
	
	]
	
	
let scrabData = [
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
	
]

// 더미데이터 END ---------------------------------

$(document).ready(function () {
	contextPath = "/" + window.location.pathname.split("/")[1];
	
	// 페이지네이션 실행
	paginationActive("comments", commentsData);
	paginationActive("board", contentsData);
	paginationActive("scrab", scrabData);
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

// 페이지네이션 템플릿 함수 (category, title, content)
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


// 페이지네이션 실행 함수
function paginationActive(id, datas){
	
	if ( $(`#${id}-pagination`).length > 0 ){

		 $(`#${id}-pagination`).pagination({
		    dataSource: datas,
		 
		    pageSize: 10,
		    
		    callback: function(data, pagination) {
		        var html = paginationTemplate(data);
		        
		        $(`#${id}-data`).html(html);	// 데이터 페이지네이션
		        
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
		})
	}
}


