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

-- 1. TEAMS TABLE
INSERT INTO TEAMS
VALUES(SEQ_TEAM_NO.NEXTVAL, 1, 'KIA TIGERS',  '심재학', '이범호', '기아', '전라북도', '현대자동차그룹의 계열사인 기아가 운영하는 KBO 리그의 프로 야구단으로 연고지는 광주광역시, 홈구장은 광주광역시 북구 임동에 위치한 광주 기아 챔피언스 필드.', 'Y');

INSERT INTO TEAMS
VALUES(SEQ_TEAM_NO.NEXTVAL, 2, 'HANWHA EAGLES', '손혁', '김경문', '한화', '충청도', '한화그룹이 운영하는 KBO 리그의 프로 야구단. 1986년 3월 8일 빙그레 이글스라는 구단명으로 창단했으며 1993년 11월 1일 명칭이 현재 명칭인 한화 이글스로 변경되었다. 연고지는 대전광역시를 비롯한 충청도이며 홈구장은 중구 부사동에 위치한 대전 한화생명 이글스파크이다.', 'Y');

INSERT INTO TEAMS
VALUES(SEQ_TEAM_NO.NEXTVAL, 3, 'LOTTE GIANTS', '박준혁', '김태형', '롯데', '부산광역시', '
롯데그룹이 운영하는 KBO 리그 소속 프로 야구단. 연고지는 부산광역시이며 홈구장은 동래구 사직동에 위치한 사직 야구장이다.
KBO 리그의 대표적인 인기 구단 중 하나이자 삼성 라이온즈와 함께 한국프로야구 원년부터 연고지 · 모기업 · 구단명 모두 변하지 않고 명맥을 이어온 유이(唯二)한 구단이다. 한국실업야구 롯데 자이언트 시절을 포함한다면 KBO 리그 구단 중 가장 오랜 역사를 자랑한다.', 'Y');



-- 1. USER TABLE ( DUMMY USER INSERT)
INSERT INTO USER_INFO 
VALUES(
    SEQ_USER_NO.nextval,
    NULL,
    'sportsAdmin', 
    'KQZ3dpm+3daZEkqDpEvtnk6AMuxOJ22ZNR1WmZoxVVq+5YWwAZ+SflpCH26gc3X2nVzfL1zre30F+jsMxgowaw==',
    'sportAdmin@test.com', 
    '김아무', 
    '01011112222', 
    NULL, 
    NULL,
    '김장시 배추동',
    'F',
    'KO',
    NULL,
    NULL,
    'A',
    DEFAULT,
    DEFAULT,
    NULL,
    0
);

-- COMM(게시글)

-- YTPE1(공지사항)
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

-- YTPE2(자유)
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

-- YTPE3(응원)
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

-- 2. USER HISTORY TABLE
-- 3. USER_POLICY TABLE
-- 4. REPORT TYPE TABLE
-- 5. REPORT VIOLATION TYPE TABLE
-- 6. REPORT TABLE




    
