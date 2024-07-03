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

let userData = [
		{no : 1 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 2 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 3 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 4 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 5 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 6 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 7 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 8 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 9 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 10 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 11 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 12 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 13 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 14 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 15 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 16 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 17 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 18 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 19 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 20 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 21 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 22 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 23 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 24 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 25 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 26 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 27 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 28 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 29 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 30 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 31 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 32 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 33 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 34 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 35 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 36 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 37 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 38 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 39 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 40 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
		{no : 41 , id : "test_id1", email : "test_email@email.com", role : "A", number:"010-1111-2222"},
]

let reportData = [
	{no : 1 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 2 , id : "test_id1", rep_type : "게시글",  vio_type: "허위사실", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 3 , id : "test_id1", rep_type : "뉴스",  vio_type: "허위사실", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 4 , id : "test_id1", rep_type : "댓글",  vio_type: "사행성조장", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 5 , id : "test_id1", rep_type : "댓글",  vio_type: "혐오발언", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 6 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 7 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 8 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 9 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 10 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 11 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 12 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 13 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 14 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 15 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 16 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 17 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 18 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 19 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 20 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 21 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 22 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 23 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 24 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 25 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 26 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 27 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 28 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 29 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 30 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 31 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 32 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 33 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 34 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 35 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 36 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	{no : 37 , id : "test_id1", rep_type : "댓글",  vio_type: "욕설", rep_content:"심한 인신공격, 나쁜 욕"},
	
]
	
// 더미데이터 END ---------------------------------

$(document).ready(function () {
	contextPath = "/" + window.location.pathname.split("/")[1];
	
	// 페이지네이션 실행
	paginationActive("comments", commentsData, paginationTemplate);
	paginationActive("board", contentsData, paginationTemplate);
	paginationActive("scrab", scrabData, paginationTemplate);
	paginationActive("user", userData, adminUserTemplate);
	paginationActive("report", reportData, adminReportTemplate);
	
	informationAgree();
	
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

// 일반 유저 페이지네이션 템플릿 함수
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

// 관리자용 페이지네이션 템플릿 함수
function adminUserTemplate(data) {
    let item = `
	<table class="manage-table">
		<thead>
			<tr> 
				<td>No</td> 
				<td>아이디</td> 
				<td>Email</td> 
				<td>Role</td> 
				<td>Number</td> 
				<td>상세</td> 
			</tr>
		</thead>
		<tbody>
		`;
		
    $.each(data, function(index, d){
	  	item += 
	  		`<tr> 
				<td>${d.no}</td> 
				<td>${d.id}</td> 
				<td>${d.email}</td> 
				<td>${d.role}</td> 
				<td>${d.number}</td> 
				<td data-num=${d.no}><img src="/SPORTS_PROJECT/public/icons/edit.png"></td> 
			</tr>`
	})
	item += `</tbody>
             </table>`

    return item;
}


// 관리자용 페이지네이션 템플릿 함수
function adminReportTemplate(data) {
    let item = `
	<table class="manage-table">
		<thead>
			<tr> 
				<td>No</td> 
				<td>아이디</td> 
				<td>신고 유형</td> 
				<td>위반 유형</td> 
				<td>신고 내용</td> 
				<td>상세</td> 
			</tr>
		</thead>
		<tbody>
		`;
	
    $.each(data, function(index, d){
	  	item += 
	  		`<tr> 
				<td>${d.no}</td> 
				<td>${d.id}</td> 
				<td>${d.rep_type}</td> 
				<td>${d.vio_type}</td> 
				<td>${d.rep_content}</td> 
				<td data-num=${d.no}><img src="/SPORTS_PROJECT/public/icons/edit.png"></td> 
			</tr>`
	})
	item += `</tbody>
             </table>`

    return item;
}


// 페이지네이션 실행 함수
function paginationActive(id, datas, template){
	let page_size = 10;
	
	if (id == "user" || id == "report"){
		page_size = 20;
	}
	if ( $(`#${id}-pagination`).length > 0 ){

		 $(`#${id}-pagination`).pagination({
		    dataSource: datas,
		 	
		    pageSize: page_size,
		    
		    callback: function(data, pagination) {
		        var html = template(data);
		        
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

function informationAgree(){
	// 정보 제공 동의 메소드
	let currentCheckbox="";
	
	// 체크박스 클릭 이벤트 리스너 (OFF -> ON 일때만 모달 띄움)
    $('.form-check').on('click', function() {
		currentCheckbox = $(this).data('type');
		if($(`input[name='${currentCheckbox}Agree']`).prop('checked') == true){
			$('#exampleModal').modal('show');
		}else{
	 		$(`label[for='${currentCheckbox}Agree']`).html("OFF");
		}
	});

    // 확인 버튼 클릭 이벤트 리스너
    $('#confirmButton').on('click', function() {
      if (currentCheckbox) {
        $(`input[name='${currentCheckbox}Agree']`).prop('checked', true);
        $(`label[for='${currentCheckbox}Agree']`).html("ON");
      }
    });

    // 취소 버튼 클릭 이벤트 리스너
    $('#cancelButton').on('click', function() {
      $(`input[name='${currentCheckbox}Agree']`).prop('checked', false);
      $(`label[for='${currentCheckbox}Agree']`).html("OFF");
    });
}

