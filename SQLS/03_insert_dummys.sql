-- [[ INDEX ]]
-- 1. TYPE
    -- 1) COMM_TYPE
    -- 2) LIKE_TYPE
    -- 3) PLAYER POSITION
    -- 4) REPLY_TYPE
    -- 5) REPORT_TYPE
    -- 6) REPORT_VIOLATION_TYPE
     
-- 2. ESSEENTIAL
    -- 1) STADIUM
    -- 2) TEAMS
    -- 3) PLAYER
    -- 4) MATCH
    -- 5) USER
    -- 6) COMM
    
-- ========================================================================================================

-- 1. TYPE =========================================================
-- 1-1) COMM_TYPE ----------------------------------------
INSERT INTO COMM_TYPE VALUES(1, '공지'); 
INSERT INTO COMM_TYPE VALUES(2, '자유'); 
INSERT INTO COMM_TYPE VALUES(3, '응원');

COMMIT;
-- 1-2) LIKE_TYPE
INSERT INTO LIKE_TYPE VALUES(1, '게시글');
INSERT INTO LIKE_TYPE VALUES(2, '댓글');
INSERT INTO LIKE_TYPE VALUES(3, '선수');
INSERT INTO LIKE_TYPE VALUES(4, '구단');
INSERT INTO LIKE_TYPE VALUES(5, '뉴스');


COMMIT;
-- 1-3) PLAYER POSTION ----------------------------------------
INSERT INTO PLAYER_POSITION VALUES(1, '코칭스태프');
INSERT INTO PLAYER_POSITION VALUES(2, '투수');
INSERT INTO PLAYER_POSITION VALUES(3, '포수');   
INSERT INTO PLAYER_POSITION VALUES(4, '내야수');
INSERT INTO PLAYER_POSITION VALUES(5, '외야수');

COMMIT;

-- 1-4) REPLY_TYPE
INSERT INTO REPLY_TYPE VALUES(1, '게시글');
INSERT INTO REPLY_TYPE VALUES(2, '선수응원글');
INSERT INTO REPLY_TYPE VALUES(3, '경기장정보');
INSERT INTO REPLY_TYPE VALUES(4, '뉴스');

COMMIT;
-- 1-5) REPORT_TYPE
INSERT INTO REPORT_TYPE VALUES(1, '게시글');
INSERT INTO REPORT_TYPE VALUES(2, '댓글');
INSERT INTO REPORT_TYPE VALUES(3, '뉴스');

COMMIT;
-- 1-6) REPORT_VIOLATION_TYPE
INSERT INTO REPORT_VIOLATION_TYPE VALUES(1, '욕설');
INSERT INTO REPORT_VIOLATION_TYPE VALUES(2, '성희롱');
INSERT INTO REPORT_VIOLATION_TYPE VALUES(3, '허위사실 유포');
INSERT INTO REPORT_VIOLATION_TYPE VALUES(4, '혐오발언');
INSERT INTO REPORT_VIOLATION_TYPE VALUES(5, '개인정보노출');
INSERT INTO REPORT_VIOLATION_TYPE VALUES(6, '불쾌한발언');
INSERT INTO REPORT_VIOLATION_TYPE VALUES(7, '스팸/홍보/도배');
INSERT INTO REPORT_VIOLATION_TYPE VALUES(8, '명예훼손');
INSERT INTO REPORT_VIOLATION_TYPE VALUES(9, '저작권침해');
INSERT INTO REPORT_VIOLATION_TYPE VALUES(10, '불법촬용물');

COMMIT;

-- 2. ESSEENTIAL =========================================================
-- 2-1) STADIUM ----------------------------------------

DROP SEQUENCE SEQ_STADIUM_NO;
CREATE SEQUENCE SEQ_STADIUM_NO;
INSERT INTO STADIUM 
VALUES(
    SEQ_STADIUM_NO.NEXTVAL,
    '기아 챔피언스 필드',
    '20500',
    '57646',
    '광주 북구 서림로10'
    );
    
INSERT INTO STADIUM
VALUES(
    SEQ_STADIUM_NO.NEXTVAL,
    '대전 한화생명 이글스파크',
    '12000',
    '8169',
    '대전 광역시 중구 대종로 373'
    );
    
INSERT INTO STADIUM 
VALUES(
    SEQ_STADIUM_NO.NEXTVAL,
    '롯데 자이언츠 사직야구장',
    '22754',
    '50301',
    '부산광역시 동래구 사직로 45'
    );
INSERT INTO STADIUM (STADIUM_NO, STADIUM_NAME, MAX_PEOPLE, WIDTH_FILED, STADIUM_PLACE)
VALUES (SEQ_STADIUM_NO.NEXTVAL, '서울 잠실 야구장', 25000, 66000, '서울특별시 송파구 올림픽로 25');

INSERT INTO STADIUM (STADIUM_NO, STADIUM_NAME, MAX_PEOPLE, WIDTH_FILED, STADIUM_PLACE)
VALUES (SEQ_STADIUM_NO.NEXTVAL, '수원 kt 위즈 파크', 20000, 54800, '경기도 수원시 장안구 경수대로 893');

INSERT INTO STADIUM (STADIUM_NO, STADIUM_NAME, MAX_PEOPLE, WIDTH_FILED, STADIUM_PLACE)
VALUES (SEQ_STADIUM_NO.NEXTVAL, '제 6 커피 경기장', 20000, 54800, '경기도 커피시 장안구 경수대로 883');

INSERT INTO STADIUM (STADIUM_NO, STADIUM_NAME, MAX_PEOPLE, WIDTH_FILED, STADIUM_PLACE)
VALUES (SEQ_STADIUM_NO.NEXTVAL, '제 7 봉봉 경기장', 20000, 54800, '경기도 봉봉시 장안구 경수대로 873');

INSERT INTO STADIUM (STADIUM_NO, STADIUM_NAME, MAX_PEOPLE, WIDTH_FILED, STADIUM_PLACE)
VALUES (SEQ_STADIUM_NO.NEXTVAL, '제 8 폰 경기장', 20000, 54800, '경기도 폰시 장안구 경수대로 863');

INSERT INTO STADIUM (STADIUM_NO, STADIUM_NAME, MAX_PEOPLE, WIDTH_FILED, STADIUM_PLACE)
VALUES (SEQ_STADIUM_NO.NEXTVAL, '제 9 디톡스 경기장', 20000, 54800, '경기도 디톡시 장안구 경수대로 853');

INSERT INTO STADIUM (STADIUM_NO, STADIUM_NAME, MAX_PEOPLE, WIDTH_FILED, STADIUM_PLACE)
VALUES (SEQ_STADIUM_NO.NEXTVAL, '제 10 전담 경기장', 20000, 54800, '경기도 전담시 장안구 경수대로 843');

COMMIT;

--STADIUM_IMG TABLE -------------------------------------------
INSERT INTO STADIUM_IMG (STADIUM_NO, IMG_ORIGINAL, IMG_RENAME, IMG_LEVEL)
VALUES (1, 'stadium1_original.jpg', 'stadium1_rename.jpg', 1);

INSERT INTO STADIUM_IMG (STADIUM_NO, IMG_ORIGINAL, IMG_RENAME, IMG_LEVEL)
VALUES (2, 'stadium2_original.jpg', 'stadium2_rename.jpg', 1);

INSERT INTO STADIUM_IMG (STADIUM_NO, IMG_ORIGINAL, IMG_RENAME, IMG_LEVEL)
VALUES (3, 'stadium3_original.jpg', 'stadium3_rename.jpg', 1);

INSERT INTO STADIUM_IMG (STADIUM_NO, IMG_ORIGINAL, IMG_RENAME, IMG_LEVEL)
VALUES (4, 'stadium4_original.jpg', 'stadium4_rename.jpg', 1);

INSERT INTO STADIUM_IMG (STADIUM_NO, IMG_ORIGINAL, IMG_RENAME, IMG_LEVEL)
VALUES (5, 'stadium5_original.jpg', 'stadium5_rename.jpg', 1);



-- 2-2) TEAMS TABLE ----------------------------------------
INSERT INTO TEAMS
VALUES(SEQ_TEAM_NO.NEXTVAL, 1, 'KIA',  '심재학', '이범호', '기아', '전라북도', 
'현대자동차그룹의 계열사인 기아가 운영하는 KBO 리그의 프로 야구단으로 연고지는 광주광역시, 홈구장은 광주광역시 북구 임동에 위치한 광주 기아 챔피언스 필드.
KBO 리그 원년 구단으로 창단 당시에는 구단명이 해태 타이거즈였으며 2001년에 현대·기아자동차그룹이 인수하며 KIA 타이거즈로 변경했다. 특히 전무후무한 한국시리즈 통산 11회 진출-11회 우승[21]으로 최다 우승과 무패 기록을 보유하고 있다.', 
'Y', DEFAULT, 'KIA_color');

INSERT INTO TEAMS
VALUES(SEQ_TEAM_NO.NEXTVAL, 2, 'HANWHA', '손혁', '김경문', '한화', '충청도', '한화그룹이 운영하는 KBO 리그의 프로 야구단. 1986년 3월 8일 빙그레 이글스라는 구단명으로 창단했으며 1993년 11월 1일 명칭이 현재 명칭인 한화 이글스로 변경되었다. 연고지는 대전광역시를 비롯한 충청도이며 홈구장은 중구 부사동에 위치한 대전 한화생명 이글스파크이다.', 
'Y', DEFAULT, 'HANWHA_COLOR');

INSERT INTO TEAMS
VALUES(SEQ_TEAM_NO.NEXTVAL, 3, 'LOTTE', '박준혁', '김태형', '롯데', '부산광역시', '
롯데그룹이 운영하는 KBO 리그 소속 프로 야구단. 연고지는 부산광역시이며 홈구장은 동래구 사직동에 위치한 사직 야구장이다.
KBO 리그의 대표적인 인기 구단 중 하나이자 삼성 라이온즈와 함께 한국프로야구 원년부터 연고지 · 모기업 · 구단명 모두 변하지 않고 명맥을 이어온 유이(唯二)한 구단이다. 한국실업야구 롯데 자이언트 시절을 포함한다면 KBO 리그 구단 중 가장 오랜 역사를 자랑한다.', 
'Y', DEFAULT, 'LOTTE_COLOR');

INSERT INTO TEAMS
VALUES(SEQ_TEAM_NO.NEXTVAL, 4, 'LG', '최명식', '김동준', '엘지', '서울특별시', '
엘지그룹이 운영하는 KBO 리그 소속 프로 야구단. 연고지는 서울특별시이며 홈구장은 잠실에 위치한 잠실 야구장이다.
KBO 리그의 대표적인 인기 구단 중 하나이자 삼성 라이온즈와 함께 한국프로야구 원년부터 연고지 · 모기업 · 구단명 모두 변하지 않고 명맥을 이어온 유이(唯二)한 구단이다. 한국실업야구 롯데 자이언트 시절을 포함한다면 KBO 리그 구단 중 가장 오랜 역사를 자랑한다.', 
'Y', DEFAULT, 'LG_COLOR');

INSERT INTO TEAMS
VALUES(SEQ_TEAM_NO.NEXTVAL, 5, 'KT', '최명식', '김동준', '케이티', '수원', '
KT그룹이 운영하는 KBO 리그 소속 프로 야구단. 연고지는 수원시이며 홈구장은 수원에 위치한 수원 야구장이다.
KBO 리그의 대표적인 인기 구단 중 하나이자 삼성 라이온즈와 함께 한국프로야구 원년부터 연고지 · 모기업 · 구단명 모두 변하지 않고 명맥을 이어온 유이(唯二)한 구단이다. 한국실업야구 롯데 자이언트 시절을 포함한다면 KBO 리그 구단 중 가장 오랜 역사를 자랑한다.', 
'Y', DEFAULT, 'KT_COLOR');

INSERT INTO TEAMS
VALUES(SEQ_TEAM_NO.NEXTVAL, 6, 'COFFEE', '김승연', '김승연', '커피', '커피시', '
커피그룹이 운영하는 KBO 리그 소속 프로 야구단. 연고지는 커피시이며 홈구장은 커피에 위치한 커피 야구장이다.
KBO 리그의 대표적인 인기 구단 중 하나이자 삼성 라이온즈와 함께 한국프로야구 원년부터 연고지 · 모기업 · 구단명 모두 변하지 않고 명맥을 이어온 유이(唯二)한 구단이다. 한국실업야구 롯데 자이언트 시절을 포함한다면 KBO 리그 구단 중 가장 오랜 역사를 자랑한다.', 
'Y', DEFAULT, 'COFFEE_COLOR');

INSERT INTO TEAMS
VALUES(SEQ_TEAM_NO.NEXTVAL, 7, 'PHONE', '이지혁', '이지혁', '폰', '폰시', '
폰그룹이 운영하는 KBO 리그 소속 프로 야구단. 연고지는 폰시이며 홈구장은 폰에 위치한 폰 야구장이다.
KBO 리그의 대표적인 인기 구단 중 하나이자 삼성 라이온즈와 함께 한국프로야구 원년부터 연고지 · 모기업 · 구단명 모두 변하지 않고 명맥을 이어온 유이(唯二)한 구단이다. 한국실업야구 롯데 자이언트 시절을 포함한다면 KBO 리그 구단 중 가장 오랜 역사를 자랑한다.', 
'Y', DEFAULT, 'PHONE_COLOR');

INSERT INTO TEAMS
VALUES(SEQ_TEAM_NO.NEXTVAL, 8, 'BONBON', '김동준', '김동준', '봉봉', '봉봉시', '
봉봉그룹이 운영하는 KBO 리그 소속 프로 야구단. 연고지는 봉봉시이며 홈구장은 봉봉에 위치한 봉봉 야구장이다.
KBO 리그의 대표적인 인기 구단 중 하나이자 삼성 라이온즈와 함께 한국프로야구 원년부터 연고지 · 모기업 · 구단명 모두 변하지 않고 명맥을 이어온 유이(唯二)한 구단이다. 한국실업야구 롯데 자이언트 시절을 포함한다면 KBO 리그 구단 중 가장 오랜 역사를 자랑한다.', 
'Y', DEFAULT, 'BONBON_COLOR');

INSERT INTO TEAMS
VALUES(SEQ_TEAM_NO.NEXTVAL, 9, 'DETOX', '최명식', '최명식', '디톡스', '디톡스시', '
디톡스그룹이 운영하는 KBO 리그 소속 프로 야구단. 연고지는 디톡스시이며 홈구장은 디톡스에 위치한 디톡스 야구장이다.
KBO 리그의 대표적인 인기 구단 중 하나이자 삼성 라이온즈와 함께 한국프로야구 원년부터 연고지 · 모기업 · 구단명 모두 변하지 않고 명맥을 이어온 유이(唯二)한 구단이다. 한국실업야구 롯데 자이언트 시절을 포함한다면 KBO 리그 구단 중 가장 오랜 역사를 자랑한다.', 
'Y', DEFAULT, 'DETOX_COLOR');

INSERT INTO TEAMS
VALUES(SEQ_TEAM_NO.NEXTVAL, 10, 'TOBACCO', '김동준', '김동준', '전담', '전담시', '
전담그룹이 운영하는 KBO 리그 소속 프로 야구단. 연고지는 전담시이며 홈구장은 전담에 위치한 전담 야구장이다.
KBO 리그의 대표적인 인기 구단 중 하나이자 삼성 라이온즈와 함께 한국프로야구 원년부터 연고지 · 모기업 · 구단명 모두 변하지 않고 명맥을 이어온 유이(唯二)한 구단이다. 한국실업야구 롯데 자이언트 시절을 포함한다면 KBO 리그 구단 중 가장 오랜 역사를 자랑한다.', 
'Y', DEFAULT, 'TOBACCO_COLOR');

COMMIT;

-- 2-3) PLAYER ----------------------------------------
INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 2,  1, '양현종', 54, '1988/03/01', 2007, 183, 91, '학강초,광주동성중,광주동성고,KIA,텍사스', 50000,
'2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표 ,2017 WBC 국가대표 , 2014/2017 최동원상 수상
, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상
, 2018 아시안게임 국가대표', 'Y');

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 2,  1, '이지혁', 54, '1988/03/01', 2007, 183, 91, '학강초,광주동성중,광주동성고,KIA,텍사스', 50000,
'2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표 ,2017 WBC 국가대표 , 2014/2017 최동원상 수상
, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상
, 2018 아시안게임 국가대표', 'Y');

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 2,  2, '최명식', 54, '1988/03/01', 2007, 183, 91, '학강초,광주동성중,광주동성고,KIA,텍사스', 50000,
'2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표 ,2017 WBC 국가대표 , 2014/2017 최동원상 수상
, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상
, 2018 아시안게임 국가대표', 'Y');

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 2,  2, '김동준', 54, '1988/03/01', 2007, 183, 91, '학강초,광주동성중,광주동성고,KIA,텍사스', 50000,
'2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표 ,2017 WBC 국가대표 , 2014/2017 최동원상 수상
, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상
, 2018 아시안게임 국가대표', 'Y');

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 2,  3, '롯동준', 54, '1988/03/01', 2007, 183, 91, '학강초,광주동성중,광주동성고,KIA,텍사스', 50000,
'2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표 ,2017 WBC 국가대표 , 2014/2017 최동원상 수상
, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상
, 2018 아시안게임 국가대표', 'Y');

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 2,  3, '롯승연', 54, '1988/03/01', 2007, 183, 91, '학강초,광주동성중,광주동성고,KIA,텍사스', 50000,
'2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표 ,2017 WBC 국가대표 , 2014/2017 최동원상 수상
, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상
, 2018 아시안게임 국가대표', 'Y');


INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 4, 1, '김승연', 34, '1983/12/16', 2002, 180, 106,
'진북초,전주동중,전주고,삼성,경찰,삼성' , 100000, 
'2002 삼성라이온스, 2017 KIA타이거즈, 2016 KBO 골든글러브 수상, 2017 WBC 국가대표, 2017 KBO리그 정규시즌 출루율 1위, 2017 KBO 골든글러브 수상','Y');

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 1,  2, '이범호', 71, '1981/11/25', 2000, 183, 93, '대구수창초,경운중,대구고,목원대,한화,KIA', DEFAULT,
'2000 한화이글스, 2010 소프트뱅크호크스, 2011 KIA타이거즈', 'Y' );

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 4, 2, '김승연', 34,  '1983/12/16', 2002, 180, 106,
'진북초,전주동중,전주고,삼성,경찰,삼성' , 100000, 
'2002 삼성라이온스, 2017 KIA타이거즈, 2016 KBO 골든글러브 수상, 2017 WBC 국가대표, 2017 KBO리그 정규시즌 출루율 1위, 2017 KBO 골든글러브 수상','Y');

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 5, 3, '최형우', 34,  '1983/12/16', 2002, 180, 106,
'진북초,전주동중,전주고,삼성,경찰,삼성' , 100000, 
'2002 삼성라이온스, 2017 KIA타이거즈, 2016 KBO 골든글러브 수상, 2017 WBC 국가대표, 2017 KBO리그 정규시즌 출루율 1위, 2017 KBO 골든글러브 수상','Y');

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 4, 3, '김승연', 34,  '1983/12/16', 2002, 180, 106,
'진북초,전주동중,전주고,삼성,경찰,삼성' , 100000, 
'2002 삼성라이온스, 2017 KIA타이거즈, 2016 KBO 골든글러브 수상, 2017 WBC 국가대표, 2017 KBO리그 정규시즌 출루율 1위, 2017 KBO 골든글러브 수상','Y');

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 2,  1, '팔현종', 54, '1988/03/01', 2007, 183, 91, '학강초,광주동성중,광주동성고,KIA,텍사스', 50000,
'2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표 ,2017 WBC 국가대표 , 2014/2017 최동원상 수상
, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상
, 2018 아시안게임 국가대표', 'Y');


INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 2,  1, '구현종', 54, '1988/03/01', 2007, 183, 91, '학강초,광주동성중,광주동성고,KIA,텍사스', 50000,
'2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표 ,2017 WBC 국가대표 , 2014/2017 최동원상 수상
, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상
, 2018 아시안게임 국가대표', 'Y');

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 2,  1, '십현종', 54, '1988/03/01', 2007, 183, 91, '학강초,광주동성중,광주동성고,KIA,텍사스', 50000,
'2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표 ,2017 WBC 국가대표 , 2014/2017 최동원상 수상
, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상
, 2018 아시안게임 국가대표', 'Y');


INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 2,  1, '십일현종', 54, '1988/03/01', 2007, 183, 91, '학강초,광주동성중,광주동성고,KIA,텍사스', 50000,
'2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표 ,2017 WBC 국가대표 , 2014/2017 최동원상 수상
, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상
, 2018 아시안게임 국가대표', 'Y');

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 2,  1, '십이현종', 54, '1988/03/01', 2007, 183, 91, '학강초,광주동성중,광주동성고,KIA,텍사스', 50000,
'2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표 ,2017 WBC 국가대표 , 2014/2017 최동원상 수상
, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 2,  1, '김현종', 54, '1988/03/01', 2007, 183, 91, '학강초,광주동성중,광주동성고,KIA,텍사스', 50000,
'2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표 ,2017 WBC 국가대표 , 2014/2017 최동원상 수상
, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상
, 2018 아시안게임 국가대표', 'Y');정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상
, 2018 아시안게임 국가대표', 'Y');

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 2,  1, '이현종', 54, '1988/03/01', 2007, 183, 91, '학강초,광주동성중,광주동성고,KIA,텍사스', 50000,
'2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표 ,2017 WBC 국가대표 , 2014/2017 최동원상 수상
, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상
, 2018 아시안게임 국가대표', 'Y');

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 2,  1, '삼현종', 54, '1988/03/01', 2007, 183, 91, '학강초,광주동성중,광주동성고,KIA,텍사스', 50000,
'2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표 ,2017 WBC 국가대표 , 2014/2017 최동원상 수상
, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상
, 2018 아시안게임 국가대표', 'Y');

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 2,  1, '고현종', 54, '1988/03/01', 2007, 183, 91, '학강초,광주동성중,광주동성고,KIA,텍사스', 50000,
'2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표 ,2017 WBC 국가대표 , 2014/2017 최동원상 수상
, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상
, 2018 아시안게임 국가대표', 'Y');

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 2,  1, '고현정', 54, '1988/03/01', 2007, 183, 91, '학강초,광주동성중,광주동성고,KIA,텍사스', 50000,
'2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표 ,2017 WBC 국가대표 , 2014/2017 최동원상 수상
, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상
, 2018 아시안게임 국가대표', 'Y');
COMMIT;
-- 2-4) MATCH ----------------------------------------
-- (MATCH_NO / TEAM_NO / STADIUM_NO / PLAYER_NO)
INSERT INTO MATCH
VALUES(
SEQ_MATCH_NO.NEXTVAL, 1, 1, 1, 9, DEFAULT, 'H'
);
INSERT INTO MATCH
VALUES(
SEQ_MATCH_NO.CURRVAL, 2, 1, 3, 8, DEFAULT, 'A'
);
INSERT INTO MATCH
VALUES(
SEQ_MATCH_NO.NEXTVAL, 1, 2, 1, 7, DEFAULT, 'H'
);
INSERT INTO MATCH
VALUES(
SEQ_MATCH_NO.CURRVAL, 2, 2, 4, 6, DEFAULT, 'A'
);
INSERT INTO MATCH
VALUES(
SEQ_MATCH_NO.NEXTVAL, 2, 3, 3, 7, DEFAULT, 'H'
);
INSERT INTO MATCH
VALUES(
SEQ_MATCH_NO.CURRVAL, 3, 3, 5, 6, DEFAULT, 'A'
);

INSERT INTO MATCH
VALUES(
SEQ_MATCH_NO.NEXTVAL, 3, 3, 6, 7, DEFAULT, 'H'
);
INSERT INTO MATCH
VALUES(
SEQ_MATCH_NO.CURRVAL, 2, 3, 4, 6, DEFAULT, 'A'
);

INSERT INTO MATCH
VALUES(
SEQ_MATCH_NO.NEXTVAL, 1, 3, 2, 7, DEFAULT, 'H'
);
INSERT INTO MATCH
VALUES(
SEQ_MATCH_NO.CURRVAL, 2, 3, 3, 6, DEFAULT, 'A'
);



COMMIT;

--2.4.2) MATCH_SCORE TABLE-------------------------------
-- 1이 양현종 / 2가 김승연 / 3이 이범호
-- 1이 기아 2 한화 3 롯데 
DROP SEQUENCE SEQ_MATCH_SCORE_NO;
CREATE SEQUENCE SEQ_MATCH_SCORE_NO;

DELETE FROM MATCH_SCORE WHERE MATCH_NO =1;
INSERT INTO MATCH_SCORE VALUES (
SEQ_MATCH_SCORE_NO.NEXTVAL, 1, 1, 8, 2, 12, 2, 2, 4);

DELETE FROM MATCH_SCORE WHERE MATCH_NO=2;
INSERT INTO MATCH_SCORE VALUES (
SEQ_MATCH_SCORE_NO.NEXTVAL, 2, 1, 5, 2, 8, 4, 2, 3);

DELETE FROM MATCH_SCORE WHERE MATCH_NO=3;
INSERT INTO MATCH_SCORE VALUES (
SEQ_MATCH_SCORE_NO.NEXTVAL, 3, 3, 14, 1, 9, 1, 3, 5);



--PITCHER_RECORD
INSERT INTO PITCHER_RECORD VALUES(
1, 1, '양현종', 5, 120, 10, 0, 5, 2, 0, 0, 0, 1.3
);

INSERT INTO PITCHER_RECORD VALUES (
2, 2, '김승연', 6, 70, 5, 0, 4, 1, 0, 0, 0, 0.8
);

INSERT INTO PITCHER_RECORD VALUES(
3, 3, '이범호', 4, 50, 7, 0 ,2, 3, 0, 0, 0, 1.1
);

-- HITTER_RECORD

INSERT INTO HITTER_RECORD VALUES (
1, 1, '양현종' , 5, 3, 0, 2, 1, 0, 0.372
);

INSERT INTO HITTER_RECORD VALUES (
2, 2, '김승연', 7, 3, 1, 3, 2, 1, 0.375
);

INSERT INTO HITTER_RECORD VALUES (
3, 3, '이범호', 6, 2, 0, 2, 1, 1, 0.373
);


-- 2-5) USER TABLE ----------------------------------------
INSERT INTO USER_INFO VALUES (SEQ_USER_NO.NEXTVAL, null,'sportsAdmin','KQZ3dpm+3daZEkqDpEvtnk6AMuxOJ22ZNR1WmZoxVVq+5YWwAZ+SflpCH26gc3X2nVzfL1zre30F+jsMxgowaw==',
    'audtlr93@naver.com','최명식','01033334444',null,'19910320','김장시, 배추동','M','KO',null,null,'A','G',to_date('2024/07/24','YYYY/MM/DD'),null,0,0);
INSERT INTO USER_POLICY 
VALUES(SEQ_USER_NO.CURRVAL, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO USER_SESSION 
VALUES( SEQ_USER_NO.CURRVAL, NULL);
INSERT INTO USER_MAIL_CHECK 
VALUES(SEQ_USER_NO.CURRVAL, NULL);

INSERT INTO USER_INFO VALUES (SEQ_USER_NO.NEXTVAL, null,'sportsAdmin2','KQZ3dpm+3daZEkqDpEvtnk6AMuxOJ22ZNR1WmZoxVVq+5YWwAZ+SflpCH26gc3X2nVzfL1zre30F+jsMxgowaw==',
    '1010tmddus@naver.com','김승연','01013334444',null,'19910320','김장시, 배추동','M','KO',null,null,'A','G',to_date('2024/07/24','YYYY/MM/DD'),null,0,0);
INSERT INTO USER_POLICY 
VALUES(SEQ_USER_NO.CURRVAL, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO USER_SESSION 
VALUES( SEQ_USER_NO.CURRVAL, NULL);
INSERT INTO USER_MAIL_CHECK 
VALUES(SEQ_USER_NO.CURRVAL, NULL);

INSERT INTO USER_INFO VALUES (SEQ_USER_NO.NEXTVAL, null,'sportsAdmin3','KQZ3dpm+3daZEkqDpEvtnk6AMuxOJ22ZNR1WmZoxVVq+5YWwAZ+SflpCH26gc3X2nVzfL1zre30F+jsMxgowaw==',
    'dongjun_k@naver.com','김동준','01023334444',null,'19910320','김장시, 배추동','M','KO',null,null,'A','G',to_date('2024/07/24','YYYY/MM/DD'),null,0,0);
INSERT INTO USER_POLICY 
VALUES(SEQ_USER_NO.CURRVAL, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO USER_SESSION 
VALUES( SEQ_USER_NO.CURRVAL, NULL);
INSERT INTO USER_MAIL_CHECK 
VALUES(SEQ_USER_NO.CURRVAL, NULL);

INSERT INTO USER_INFO VALUES (SEQ_USER_NO.NEXTVAL, null,'sportsAdmin4','KQZ3dpm+3daZEkqDpEvtnk6AMuxOJ22ZNR1WmZoxVVq+5YWwAZ+SflpCH26gc3X2nVzfL1zre30F+jsMxgowaw==',
    'mlmb7801@naver.com','이지혁','01043334444',null,'19910320','김장시, 배추동','M','KO',null,null,'A','G',to_date('2024/07/24','YYYY/MM/DD'),null,0,0);
INSERT INTO USER_POLICY 
VALUES(SEQ_USER_NO.CURRVAL, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO USER_SESSION 
VALUES( SEQ_USER_NO.CURRVAL, NULL);
INSERT INTO USER_MAIL_CHECK 
VALUES(SEQ_USER_NO.CURRVAL, NULL);

COMMIT;

-- 2-6) COMMINTY ----------------------------------------

-- TYPE1(공지사항)
BEGIN
    FOR I IN 1..100 LOOP 

    INSERT INTO COMM
    VALUES(SEQ_COMM_NO.NEXTVAL,
           1, 1, DEFAULT, 
           SEQ_COMM_NO.CURRVAL || '번째 게시글',
           SEQ_COMM_NO.CURRVAL || '번째 게시글 내용입니다.',
           DEFAULT, DEFAULT, DEFAULT, DEFAULT
    
    );
    END LOOP;

END;
/

COMMIT;
-- TYPE2(자유)
BEGIN
    FOR I IN 1..100 LOOP 

    INSERT INTO COMM
    VALUES(SEQ_COMM_NO.NEXTVAL,
           1, 2, DEFAULT, 
           SEQ_COMM_NO.CURRVAL || '번째 게시글',
           SEQ_COMM_NO.CURRVAL || '번째 게시글 내용입니다.',
           DEFAULT, DEFAULT, DEFAULT, DEFAULT
    
    );
    END LOOP;

END;
/


-- YTPE3(기아)
BEGIN
    FOR I IN 1..100 LOOP 

    INSERT INTO COMM
    VALUES(SEQ_COMM_NO.NEXTVAL,
           1, 3, 1, 
           SEQ_COMM_NO.CURRVAL || '번째 게시글',
           SEQ_COMM_NO.CURRVAL || '번째 게시글 내용입니다.',
           DEFAULT, DEFAULT, DEFAULT, DEFAULT
    
    );
    END LOOP;

END;
/

-- YTPE3(한화)
BEGIN
    FOR I IN 1..100 LOOP 

    INSERT INTO COMM
    VALUES(SEQ_COMM_NO.NEXTVAL,
           1, 3, 2, 
           SEQ_COMM_NO.CURRVAL || '번째 게시글',
           SEQ_COMM_NO.CURRVAL || '번째 게시글 내용입니다.',
           DEFAULT, DEFAULT, DEFAULT, DEFAULT
    
    );
    END LOOP;

END;
/

COMMIT;

-- 2-7) NEWS TABLE
INSERT INTO NEWS VALUES(
    SEQ_NEWS_NO.NEXTVAL, 1, 1, '한화 이글스 기아에게 충격 패배', '스포츠 낚시 티비', 
    '한화 이글스 기아에게 충격 패배 <br> 그럼에도 불구하고 정신 못차려 <br> 회식 장소에서 ...',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    NULL
);
INSERT INTO NEWS_IMG VALUES(
    SEQ_NEWS_NO.CURRVAL, '/public/images/profile/202407207110760_63885.jpg', 'origin', 1
);

INSERT INTO NEWS VALUES(
    SEQ_NEWS_NO.NEXTVAL, 1, 1, '빰 빠라밤밤밤밤 축33333하 !', '스포츠 낚시 티비', 
    '롯데 타이거즈 기아에게 충격 패배 <br> 그럼에도 불구하고 정신 못차려 <br> 회식 장소에서 ...',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    NULL
);
INSERT INTO NEWS_IMG VALUES(
    SEQ_NEWS_NO.CURRVAL, '/public/images/profile/202407207110760_63885.jpg', 'origin', 1
);

INSERT INTO NEWS VALUES(
    SEQ_NEWS_NO.NEXTVAL, 1, 1, '빰 빠라밤밤밤밤 축2222하 !', '스포츠 낚시 티비', 
    '롯데 타이거즈 기아에게 충격 패배 <br> 그럼에도 불구하고 정신 못차려 <br> 회식 장소에서 ...',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    NULL
);
INSERT INTO NEWS_IMG VALUES(
    SEQ_NEWS_NO.CURRVAL, '/public/images/profile/202407207110760_63885.jpg', 'origin', 1
);

INSERT INTO NEWS VALUES(
    SEQ_NEWS_NO.NEXTVAL, 1, 2, '롯데 타이거즈 기아에게 충격 패배', '스포츠 낚시 티비', 
    '롯데 타이거즈 기아에게 충격 패배 <br> 그럼에도 불구하고 정신 못차려 <br> 회식 장소에서 ...',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    NULL
);
INSERT INTO NEWS_IMG VALUES(
    SEQ_NEWS_NO.CURRVAL, '/public/images/profile/202407207110760_63885.jpg', 'origin', 1
);
INSERT INTO NEWS_IMG VALUES(
    SEQ_NEWS_NO.CURRVAL, '/public/images/profile/202407207110760_63885.jpg', 'origin', 2
);

INSERT INTO NEWS VALUES(
    SEQ_NEWS_NO.NEXTVAL, 1, 2, '빰 빠라밤밤밤밤 축하 !', '스포츠 낚시 티비', 
    '롯데 타이거즈 기아에게 충격 패배 <br> 그럼에도 불구하고 정신 못차려 <br> 회식 장소에서 ...',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    NULL
);
INSERT INTO NEWS_IMG VALUES(
    SEQ_NEWS_NO.CURRVAL, '/public/images/profile/202407207110760_63885.jpg', 'origin', 1
);

INSERT INTO NEWS VALUES(
    SEQ_NEWS_NO.NEXTVAL, 1, 3, '롯데 타이거즈 기아에게 충격 패배', '스포츠 낚시 티비', 
    '롯데 타이거즈 기아에게 충격 패배 <br> 그럼에도 불구하고 정신 못차려 <br> 회식 장소에서 ...',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    NULL
);
INSERT INTO NEWS_IMG VALUES(
    SEQ_NEWS_NO.CURRVAL, '/public/images/profile/202407207110760_63885.jpg', 'origin', 1
);
INSERT INTO NEWS_IMG VALUES(
    SEQ_NEWS_NO.CURRVAL, '/public/images/profile/202407207110760_63885.jpg', 'origin', 2
);
INSERT INTO NEWS_IMG VALUES(
    SEQ_NEWS_NO.CURRVAL, '/public/images/profile/202407207110760_63885.jpg', 'origin', 3
);

-- TEAM_IMG  넣기
INSERT INTO TEAM_IMG 
VALUES(1, '/public/images/teams/kia.png', 'kia-logo.png', 1, 'KIA타이거즈의 로고는 워드마크와 함께 구단명칭을 표현한 것으로 각종 매체에 적용되어 대외적인 커뮤니케이션을 보다 친밀감 있게 연결해 주는 역할을 한다.
야구장의 홈베이스와 Tiger nose 형태를 결합하여 프레임화한 형태의 로고는 승리를 나타내는 V모티프를 통해 전통 명문구단의 대표성과 위상을 표현하고 다이아몬드의 강인한 속성을 은유적으로 표현하였다.');

INSERT INTO TEAM_IMG 
VALUES(1, '/public/images/teams/kiaCi.jpg', 'kia-ci.png', 2, 'KIA타이거즈의 CI는 워드마크와 함께 구단명칭을 표현한 것으로 각종 매체에 적용되어 대외적인 커뮤니케이션을 보다 친밀감 있게 연결해 주는 역할을 한다.
야구장의 홈베이스와 Tiger nose 형태를 결합하여 프레임화한 형태의 로고는 승리를 나타내는 V모티프를 통해 전통 명문구단의 대표성과 위상을 표현하고 다이아몬드의 강인한 속성을 은유적으로 표현하였다.');

INSERT INTO TEAM_IMG 
VALUES(1, '/public/images/teams/kiaMainImg.png', 'kia-main-image.png', 3, '');

INSERT INTO TEAM_IMG 
VALUES(1, '/public/images/teams/kiaHeaderImg.png', 'kia-header-image.png', 4, '');


INSERT INTO TEAM_IMG 
VALUES(2, '/public/images/teams/hanwha.png', 'hanwha-logo.png', 1, '
1993년을 끝으로 빙그레 이글스에서 한화 이글스로 변경되면서 기존의 로고를 다듬은 로고를 사용했다. 그러다가 2006년, 한화그룹의 CI 변경과 함께 한화 이글스도 로고 변경 작업에 들어갔고 2007년 KBO 시범경기 직후 변경된 로고를 발표했다.
타 구단들의 로고 현대화로 인해 현재 사용중인 로고 중 가장 역사가 깊은 로고가 됐다..');
COMMIT;



-- 2-8) REPLY TABLE (뉴스에 댓글 추가) - REPLY_NO, REPLY_TYPE_NO(4), USER_NO, REPLY_TARGET_NO, REPLY_DT, REPLY_CONTENT, REPLY_ST
INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 4, 1, 1, DEFAULT, '안녕 내이름은 안녕안녕! 누구일까요<br>안녕하세요 봉주르 <br>하위', DEFAULT);
INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 4, 2, 1, DEFAULT, '안녕 내이름은 김승연!! 누구일까요<br>안녕하세요 봉주르 <br>하위', DEFAULT);
INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 4, 1, 1, DEFAULT, '안녕 내이름은 최명식!! 누구일까요<br>안녕하세요 봉주르 <br>하위', DEFAULT);
INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 4, 2, 1, DEFAULT, '안녕 내이름은 지혁지혁!! 누구일까요<br>안녕하세요 봉주르 <br>하위', DEFAULT);
INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 4, 3, 1, DEFAULT, '안녕 내이름은 이지혁!! 누구일까요<br>안녕하세요 봉주르 <br>하위', DEFAULT);
INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 4, 4, 1, DEFAULT, '안녕 내이름은 김동준! 누구일까요<br>안녕하세요 봉주르 <br>하위', DEFAULT);
INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 4, 4, 1, DEFAULT, '안녕 내이름은 김동준 안녕난녕!! 누구일까요<br>안녕하세요 봉주르 <br>하위', DEFAULT);

INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 4, 1, 2, DEFAULT, '안녕 내이름은 최명식!! 누구일까요<br>안녕하세요 봉주르 <br>하위', DEFAULT);
INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 4, 2, 2, DEFAULT, '안녕 내이름은 지혁지혁!! 누구일까요<br>안녕하세요 봉주르 <br>하위', DEFAULT);
INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 4, 3, 2, DEFAULT, '안녕 내이름은 이지혁!! 누구일까요<br>안녕하세요 봉주르 <br>하위', DEFAULT);
INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 4, 4, 2, DEFAULT, '안녕 내이름은 김동준! 누구일까요<br>안녕하세요 봉주르 <br>하위', DEFAULT);
INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 4, 4, 2, DEFAULT, '안녕 내이름은 김동준 안녕난녕!! 누구일까요<br>안녕하세요 봉주르 <br>하위', DEFAULT);

INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 4, 2, 3, DEFAULT, '안녕 내이름은 지혁지혁!! 누구일까요<br>안녕하세요 봉주르 <br>하위', DEFAULT);
INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 4, 3, 3, DEFAULT, '안녕 내이름은 이지혁!! 누구일까요<br>안녕하세요 봉주르 <br>하위', DEFAULT);
INSERT INTO REPLY VALUES(SEQ_REPLY_NO.NEXTVAL, 4, 4, 3, DEFAULT, '안녕 내이름은 김동준 안녕난녕!! 누구일까요<br>안녕하세요 봉주르 <br>하위', DEFAULT);
COMMIT;

-- 2-9) LIKE TABLE (뉴스에 좋아요 추가) - USER, LIKE_TYPE_NO (5), LIKE_TARGET_NO
INSERT INTO "LIKE" VALUES(1, 5, 1);
INSERT INTO "LIKE" VALUES(1, 5, 2);
INSERT INTO "LIKE" VALUES(1, 5, 3);
INSERT INTO "LIKE" VALUES(1, 5, 4);
INSERT INTO "LIKE" VALUES(1, 5, 5);
INSERT INTO "LIKE" VALUES(1, 5, 6);
INSERT INTO "LIKE" VALUES(2, 5, 1);
INSERT INTO "LIKE" VALUES(2, 5, 2);
INSERT INTO "LIKE" VALUES(2, 5, 3);
INSERT INTO "LIKE" VALUES(2, 5, 4);
INSERT INTO "LIKE" VALUES(2, 5, 5);
INSERT INTO "LIKE" VALUES(3, 5, 1);
INSERT INTO "LIKE" VALUES(3, 5, 2);
INSERT INTO "LIKE" VALUES(3, 5, 3);
INSERT INTO "LIKE" VALUES(4, 5, 1);
INSERT INTO "LIKE" VALUES(4, 5, 1);

COMMIT;

-- 2-10 ) REPORT TABLE

INSERT INTO REPORT
VALUES(
    SEQ_REPORT_NO.NEXTVAL,
    1,  -- USER NO
    3,  -- REPORT TYPE NO ( 1: 게시글, 2: 댓글, 3: 뉴스)
    1,  -- TARGET NO
    1,  --  VIO TYPE NO
    '신고한다 신고신고! 나는 김승연<br>신고신고 <br> 진짜 신고!',
    DEFAULT,
    DEFAULT
);
INSERT INTO REPORT VALUES(SEQ_REPORT_NO.NEXTVAL,1, 3, 1, 2,'신고한다 신고신고! 나는 김승연<br>신고신고 <br> 진짜 신고!',DEFAULT,DEFAULT);
INSERT INTO REPORT VALUES(SEQ_REPORT_NO.NEXTVAL,1, 3, 1, 3,'신고한다 신고신고! 나는 김승연<br>신고신고 <br> 진짜 신고!',DEFAULT,DEFAULT);
INSERT INTO REPORT VALUES(SEQ_REPORT_NO.NEXTVAL,1, 3, 2, 2,'신고한다 신고신고! 나는 김승연<br>신고신고 <br> 진짜 신고!',DEFAULT,DEFAULT);
INSERT INTO REPORT VALUES(SEQ_REPORT_NO.NEXTVAL,2, 3, 2, 3,'신고한다 신고신고! 나는 김승연<br>신고신고 <br> 진짜 신고!',DEFAULT,DEFAULT);
INSERT INTO REPORT VALUES(SEQ_REPORT_NO.NEXTVAL,3, 3, 2, 4,'신고한다 신고신고! 나는 김승연<br>신고신고 <br> 진짜 신고!',DEFAULT,DEFAULT);

INSERT INTO REPORT VALUES(SEQ_REPORT_NO.NEXTVAL,1, 2, 1, 2,'신고한다 신고신고! 나는 김승연<br>신고신고 <br> 진짜 신고!',DEFAULT,DEFAULT);
INSERT INTO REPORT VALUES(SEQ_REPORT_NO.NEXTVAL,1, 2, 1, 3,'신고한다 신고신고! 나는 김승연<br>신고신고 <br> 진짜 신고!',DEFAULT,DEFAULT);
INSERT INTO REPORT VALUES(SEQ_REPORT_NO.NEXTVAL,1, 2, 2, 2,'신고한다 신고신고! 나는 김승연<br>신고신고 <br> 진짜 신고!',DEFAULT,DEFAULT);
INSERT INTO REPORT VALUES(SEQ_REPORT_NO.NEXTVAL,2, 2, 2, 3,'신고한다 신고신고! 나는 김승연<br>신고신고 <br> 진짜 신고!',DEFAULT,DEFAULT);
INSERT INTO REPORT VALUES(SEQ_REPORT_NO.NEXTVAL,3, 2, 2, 4,'신고한다 신고신고! 나는 김승연<br>신고신고 <br> 진짜 신고!',DEFAULT,DEFAULT);

INSERT INTO REPORT VALUES(SEQ_REPORT_NO.NEXTVAL,1, 1, 1, 2,'신고한다 신고신고! 나는 김승연<br>신고신고 <br> 진짜 신고!',DEFAULT,DEFAULT);
INSERT INTO REPORT VALUES(SEQ_REPORT_NO.NEXTVAL,1, 1, 1, 3,'신고한다 신고신고! 나는 김승연<br>신고신고 <br> 진짜 신고!',DEFAULT,DEFAULT);
INSERT INTO REPORT VALUES(SEQ_REPORT_NO.NEXTVAL,1, 1, 2, 2,'신고한다 신고신고! 나는 김승연<br>신고신고 <br> 진짜 신고!',DEFAULT,DEFAULT);
INSERT INTO REPORT VALUES(SEQ_REPORT_NO.NEXTVAL,2, 1, 2, 3,'신고한다 신고신고! 나는 김승연<br>신고신고 <br> 진짜 신고!',DEFAULT,DEFAULT);
INSERT INTO REPORT VALUES(SEQ_REPORT_NO.NEXTVAL,3, 1, 2, 4,'신고한다 신고신고! 나는 김승연<br>신고신고 <br> 진짜 신고!',DEFAULT,DEFAULT);
COMMIT;