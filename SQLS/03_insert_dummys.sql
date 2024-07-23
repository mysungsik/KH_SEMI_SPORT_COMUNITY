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
VALUES(SEQ_TEAMS_NO.NEXTVAL, 1, 'KIA TIGERS',  '심재학', '이범호', '기아', '전라북도', '현대자동차그룹의 계열사인 기아가 운영하는 KBO 리그의 프로 야구단으로 연고지는 광주광역시, 홈구장은 광주광역시 북구 임동에 위치한 광주 기아 챔피언스 필드.', 'Y');


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

-- 2. USER HISTORY TABLE
-- 3. USER_POLICY TABLE
-- 4. REPORT TYPE TABLE
-- 5. REPORT VIOLATION TYPE TABLE
-- 6. REPORT TABLE

-- 7. STADITUM TABLE


    
