-- [[ INDEX ]]
-- 0. TEAMS TABLE
-- 1. USER_INFO TABLE
-- 2. USER HISTORY TABLE
-- 3. USER_POLICY TABLE
-- 4. REPORT TYPE TABLE
-- 5. REPORT VIOLATION TYPE TABLE
-- 6. REPORT TABLE

-- ========================================================================================================
-- STADIUM
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
    

-- 0. PLAYER POSITION
INSERT INTO PLAYER_POSITION
VALUES(1, '코칭스태프');

INSERT INTO PLAYER_POSITION
VALUES(2, '투수');

INSERT INTO PLAYER_POSITION
VALUES(3, '포수');   

INSERT INTO PLAYER_POSITION
VALUES(4, '내야수');

INSERT INTO PLAYER_POSITION
VALUES(5, '외야수');

COMMIT;
-- 1. TEAMS TABLE
INSERT INTO TEAMS
VALUES(SEQ_TEAM_NO.NEXTVAL, 1, 'KIA TIGERS',  '심재학', '이범호', '기아', '전라북도', 
'현대자동차그룹의 계열사인 기아가 운영하는 KBO 리그의 프로 야구단으로 연고지는 광주광역시, 홈구장은 광주광역시 북구 임동에 위치한 광주 기아 챔피언스 필드.', 
'Y', DEFAULT, '#ea0029');

INSERT INTO TEAMS
VALUES(SEQ_TEAM_NO.NEXTVAL, 2, 'HANWHA EAGLES', '손혁', '김경문', '한화', '충청도', '한화그룹이 운영하는 KBO 리그의 프로 야구단. 1986년 3월 8일 빙그레 이글스라는 구단명으로 창단했으며 1993년 11월 1일 명칭이 현재 명칭인 한화 이글스로 변경되었다. 연고지는 대전광역시를 비롯한 충청도이며 홈구장은 중구 부사동에 위치한 대전 한화생명 이글스파크이다.', 
'Y', DEFAULT, '#FF6600');

INSERT INTO TEAMS
VALUES(SEQ_TEAM_NO.NEXTVAL, 3, 'LOTTE GIANTS', '박준혁', '김태형', '롯데', '부산광역시', '
롯데그룹이 운영하는 KBO 리그 소속 프로 야구단. 연고지는 부산광역시이며 홈구장은 동래구 사직동에 위치한 사직 야구장이다.
KBO 리그의 대표적인 인기 구단 중 하나이자 삼성 라이온즈와 함께 한국프로야구 원년부터 연고지 · 모기업 · 구단명 모두 변하지 않고 명맥을 이어온 유이(唯二)한 구단이다. 한국실업야구 롯데 자이언트 시절을 포함한다면 KBO 리그 구단 중 가장 오랜 역사를 자랑한다.', 
'Y', DEFAULT, '#0C2340');

-- 1-1. TEAM_IMG

COMMIT;

-- 2. PLAYER
INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 2,  9, '양현종', 54, 19880301, 2007, 183, 91, '학강초,광주동성중,광주동성고,KIA,텍사스', 50000,
'2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표 ,2017 WBC 국가대표 , 2014/2017 최동원상 수상
, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상
, 2018 아시안게임 국가대표', 'Y');

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 1,  9, '이범호', 71, 19811125, 2000, 183, 93, '대구수창초,경운중,대구고,목원대,한화,KIA', DEFAULT,
'2000 한화이글스, 2010 소프트뱅크호크스, 2011 KIA타이거즈', 'Y' );

INSERT INTO PLAYER
VALUES(SEQ_PLAYER_NO.NEXTVAL, 5, 9, '최형우', 34, 19831216, 2002, 180, 106,
'진북초,전주동중,전주고,삼성,경찰,삼성' , 100000, 
'2002 삼성라이온스, 2017 KIA타이거즈, 2016 KBO 골든글러브 수상, 2017 WBC 국가대표, 2017 KBO리그 정규시즌 출루율 1위, 2017 KBO 골든글러브 수상','Y');

-- 2-1. PLAYER_IMG

COMMIT;
-- 3. MATCH
INSERT INTO MATCH
VALUES(
SEQ_MATCH_NO.NEXTVAL, 9, 1, 1, 9, DEFAULT, 'H'
);
INSERT INTO MATCH
VALUES(
SEQ_MATCH_NO.CURRVAL, 10, 1, 1, 8, DEFAULT, 'A'
);
INSERT INTO MATCH
VALUES(
SEQ_MATCH_NO.NEXTVAL, 11, 1, 1, 7, DEFAULT, 'H'
);
INSERT INTO MATCH
VALUES(
SEQ_MATCH_NO.CURRVAL, 12, 3, 3, 6, DEFAULT, 'A'
);
INSERT INTO MATCH
VALUES(
SEQ_MATCH_NO.NEXTVAL, 13, 3, 3, 6, DEFAULT, 'H'
);


-- 1. USER TABLE ( DUMMY USER INSERT)

-- COMM(게시글)

-- YTPE1(공지사항)
BEGIN
    FOR I IN 1..100 LOOP 

    INSERT INTO COMM
    VALUES(SEQ_COMM_NO.NEXTVAL,
           7, 1, DEFAULT, 
           SEQ_COMM_NO.CURRVAL || '번째 게시글',
           SEQ_COMM_NO.CURRVAL || '번째 게시글 내용입니다.',
           DEFAULT, DEFAULT, DEFAULT, DEFAULT
    
    );
    END LOOP;

END;
/

COMMIT;
-- YTPE2(자유)
BEGIN
    FOR I IN 1..100 LOOP 

    INSERT INTO COMM
    VALUES(SEQ_COMM_NO.NEXTVAL,
           7, 2, DEFAULT, 
           SEQ_COMM_NO.CURRVAL || '번째 게시글',
           SEQ_COMM_NO.CURRVAL || '번째 게시글 내용입니다.',
           DEFAULT, DEFAULT, DEFAULT, DEFAULT
    
    );
    END LOOP;

END;
/

-- YTPE3(응원)
BEGIN
    FOR I IN 1..100 LOOP 

    INSERT INTO COMM
    VALUES(SEQ_COMM_NO.NEXTVAL,
           7, 3, 1, 
           SEQ_COMM_NO.CURRVAL || '번째 게시글',
           SEQ_COMM_NO.CURRVAL || '번째 게시글 내용입니다.',
           DEFAULT, DEFAULT, DEFAULT, DEFAULT
    
    );
    END LOOP;

END;
/

-- 커뮤니티 타입 삽입
INSERT INTO COMM_TYPE VALUES(1, '공지'); 
INSERT INTO COMM_TYPE VALUES(2, '자유'); 
INSERT INTO COMM_TYPE VALUES(3, '응원'); 

-- 2. USER HISTORY TABLE
-- 3. USER_POLICY TABLE
-- 4. REPORT TYPE TABLE
-- 5. REPORT VIOLATION TYPE TABLE
-- 6. REPORT TABLE


COMMIT;


    
