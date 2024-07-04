var contextPath = "";

// 더미데이터 START ---------------------------------
let commentsData = [
	{category : "[ 커뮤니티 - 구호 ]", title : "커뮤니티 글1", content : "커뮤니티 그렇게 쓰는거 맞슴둥!"},
	{category : "[ 커뮤니티 - 지호 ]", title : "커뮤니티 글 이렇게 쓰는게 맞나요", content : "댓글임둥!!"},
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
	paginationActive("user", userData, adminTemplate);
	paginationActive("report", reportData, adminTemplate);

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
function paginationTemplate(data, id) {
    let item = "";
    
    if (id == "comments"){
		$.each(data, function(index, d){
		  	item += 
		  		`<div class="item checkbox__blue small-square base__lblue">
		            <div class="element-text">
		                <input type="checkbox" id="post-check" name="post-check">
		                <div>
		                    <p class="fc__gray"> <span>${d.category}</span> ${d.title}</p>
		                    <input type="text" class="item-text base__lblue" value="${d.content}" disabled/> 
		                </div>
		            </div>
		            <div class="element-edit">
		                <img class="edit" src="/SPORTS_PROJECT/public/icons/edit.png">
		            </div>
		        </div>`
		})
	} else if (id == "board"){
		$.each(data, function(index, d){
		  	item += 
		  		`<div class="item checkbox__blue small-square base__lblue">
		            <div class="element-text">
		                <input type="checkbox" id="post-check" name="post-check">
		                <div>
		                    <p class="fc__gray"> <span>${d.category}</span> ${d.title}</p>
		                    <p class="item-text"> ${d.content} </p>
		                </div>
		            </div>
		            <div class="element-edit">
		                <img class="edit" src="/SPORTS_PROJECT/public/icons/edit.png">
		            </div>
		        </div>`
		})
	}else if (id == "scrab"){
		$.each(data, function(index, d){
		  	item += 
		  		`<div class="item checkbox__blue small-square base__lblue">
		            <div class="element-text">
		                <input type="checkbox" id="post-check" name="post-check">
		                <div>
		                    <p class="fc__gray"> <span>${d.category}</span> ${d.title}</p>
		                    <p class="item-text"> ${d.content} </p>
		                </div>
		            </div>
		            <div class="element-edit">
		                <img class="delete" src="/SPORTS_PROJECT/public/icons/edit.png">
		            </div>
		        </div>`
		})
	}

    return item;
}

// 관리자용 페이지네이션 템플릿 함수 (User)
function adminTemplate(data, id) {
	let item = ""
	if (id == "user"){
		item += `
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
				<tbody>`
		$.each(data, function(index, d){
	  	item += 
	  		`<tr> 
				<td>${d.no}</td> 
				<td>${d.id}</td> 
				<td>${d.email}</td> 
				<td>${d.role}</td> 
				<td>${d.number}</td> 
				<td data-num=${d.no}><img class="edit" src="/SPORTS_PROJECT/public/icons/edit.png"></td> 
			</tr>`
		})
		item += `</tbody>
	             </table>`
	} else {
		item += `
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
				<td data-num=${d.no}><img class="edit" src="/SPORTS_PROJECT/public/icons/edit.png"></td> 
			</tr>`
		})
		item += `</tbody>
	             </table>`
	}

    return item;
}


// 페이지네이션 실행 함수
function paginationActive(id, datas, template){
	
	// 한 페이지당 개수 정하기
	let page_size = 10;
	
	if (id == "user" || id == "report"){
		page_size = 20;
	}
	
	// 각 조건에 맞게 페이지네이션 실행
	if ( $(`#${id}-pagination`).length > 0 ){

		 $(`#${id}-pagination`).pagination({
		    dataSource: datas,
		 	
		    pageSize: page_size,
		    
		    callback: function(data, pagination) {
		        var html = template(data,id);
		        
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
	
	// 조건에 맞는 edit 수행
	if (id == "comments"){
		$(".edit").on("click", function(){
			let comment = $(this).parent().parent().find(".item-text")
			comment.addClass("active");
			comment.prop("disabled", false);
			console.log("엔터 누르면 수정하시겠습니까? 팝업창 나오도록")
			console.log("수정 완료 누르면 DB에 저장되고, 다시 disabled 되도록")
			console.log("수정 중간에 다른 수정 칸 못누르도록, 팝업창 띄우기")
		})
	} else if (id == "board"){
		$(".edit").on("click", function(){
			console.log("게시글 상세로 이동")
		})
	} else if (id == "scrab"){
		$(".delete").on("click", function(){
			console.log("페이지 스크랩 삭제")
		})
	} else if (id == "user"){
		$(".edit").on("click", function(){
			console.log("유저 상세 정보 모달 show()")
		})
	} else if (id == "board"){
		$(".edit").on("click", function(){
			console.log("신고 상세 정보 모달 show()")
		})
	}
}

// 모달의 팝업 함수
function showModal(el){
	// TODO : 각 MODAL 타입에 맞는 MODAL 내용 변경 후 SHOW 하기
	let modalEl = $('#commonModal');
	let modalType = $(el).data("type");
	$("[name='modalType']").val(modalType);
	
	
	let value = $(el).text();
	let data = value.substring(0, value.length - 2).trim()
	
	// 정보제공동의 일 경우 모달
	if (modalType == "emailAgree" ||
		modalType == "phoneAgree" ||
		modalType == "snsAgree"){
			
		let checkboxInput = $(`input[name='${modalType}']`)
		let checkboxLabel = $(`label[for='${modalType}']`)
		
        let name = checkboxInput.prop("name")	// [sns, phone, email] Agree 
      	let value = checkboxInput.prop("checked") 	// [ ON, OFF ]
      
		
		switch(modalType){
			// 정보 제공 종의 수정
			case "emailAgree" : {
				modalEl.find(".modal-title").html("정말로 이메일 정보 제공에 동의하시겠습니까?")
				modalEl.find(".modal-body").html("모달 내용임둥")
				
			} break;
	
			case "phoneAgree" : {
				modalEl.find(".modal-title").html("정말로 번호 정보 제공에 동의하시겠습니까?요")
				modalEl.find(".modal-body").html("모달 내용임둥")
				
			} break;
			
			case "snsAgree" : {
				modalEl.find(".modal-title").html("정말로 SNS 주소 정보 제공에 동의하시겠습니까?")
				modalEl.find(".modal-body").html("모달 내용임둥")
				
			} break;
			
			
			default  : {
				modalEl.find(".modal-title").html("잘못된 모달")
				modalEl.find(".modal-body").html("잘못된 모달")
			}
		}

		if (value){
			modalEl.modal('show');		
		}else{
			checkboxLabel.html("OFF")
		}
	} 
	
	// 
	
	// 정보수정 일 경우 모달
	else{
		switch(modalType){
			// 수정을 위한 비밀번호 재확인
			case "pwChk" : {
				modalEl.find(".modal-title").html("비밀번호 재확인")
				modalEl.find(".modal-body").html(`
					<p> 현재 비밀번호를 입력해주세요 </p>
					<input type="text" name="${modalType}" value="${data}">`
				);
			} break;
			
			// 정보 수정
			case "pw" : {
				modalEl.find(".modal-title").html("비밀번호 변경")
				modalEl.find(".modal-body").html(`
					<p> 변경할 비밀번호를 입력해주세요 </p>
					<input type="text" name="${modalType}" value="${data}">`
				);
			} break;
			
			case "email" : {
				modalEl.find(".modal-title").html("이메일 변경")
				modalEl.find(".modal-body").html(`
					<p> 변경할 이메일을 입력해주세요 </p>
					<input type="text" name="${modalType}" value="${data}">`
				);
			} break;
			
			case "number" : {
				modalEl.find(".modal-title").html("핸드폰 번호 변경")
				modalEl.find(".modal-body").html(`
					<p> 변경할 번호를 입력해주세요 </p>
					<input type="text" name="${modalType}" value="${data}">`
				);
			} break;
			
			case "sns" : {
				modalEl.find(".modal-title").html("SNS 주소 변경")
				modalEl.find(".modal-body").html(`
					<p> 변경할 SNS 주소를 입력해주세요 </p>
					<input type="text" name="${modalType}" value="${data}">`
				);
			} break;
			
			case "birthday" : {
				modalEl.find(".modal-title").html("생일 변경")
				modalEl.find(".modal-body").html(`
					<p> 변경할 생일을 입력해주세요 </p>
					<input type="text" name="${modalType}" value="${data}">`
				);
			} break;
			
			case "address" : {
				modalEl.find(".modal-title").html("주소 변경")
				modalEl.find(".modal-body").html(`
					<p> 변경할 주소를 입력해주세요 </p>
					<input type="text" name="${modalType}" value="${data}">`
				);
			} break;
		}
		modalEl.modal('show');
	}
	
}

// 모달의 확인 클릭
function modalConfirm(){
	let typeReg = /(Agree)$/
	let modalType = $("[name='modalType']").val()
	
	// 정보 동의일 경우
	if (typeReg.test(modalType)){
		let input = $(`input[name="${modalType}"]`)
		let label = $(`[for="${modalType}"]`)
		input.prop("checked", true)
		label.html("ON")
		
		// TODO : 값을 백엔드로 전달
	}
	// 정보 수정일 경우
	else{
		// TODO : 값을 백엔드로 전달
		
	}
}

// 모달의 취소 클릭
function modalCancel(){
	let typeReg = /(Agree)$/
	let modalType = $("[name='modalType']").val();
	let checkboxInput = $(`input[name='${modalType}']`)
	let checkboxLabel = $(`label[for='${modalType}']`)
		
	
	// 정보 동의일 경우
	if (typeReg.test(modalType)){
		if(checkboxInput.prop("checked")){
			checkboxInput.prop("checked", false)
			checkboxLabel.html("OFF")
		}
		
		// TODO : 값을 백엔드로 전달
	}
	// 정보 수정일 경우
	else{
		// TODO : 값을 백엔드로 전달
	}

}