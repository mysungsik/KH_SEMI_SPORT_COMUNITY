-- [[ INDEX ]]
-- 0. TEAMS TABLE
-- 1. USER_INFO TABLE
-- 2. USER HISTORY TABLE
-- 3. USER_POLICY TABLE
-- 4. REPORT TYPE TABLE
-- 5. REPORT VIOLATION TYPE TABLE
-- 6. REPORT TABLE

-- ========================================================================================================

-- 0. TEAMS TABLE
INSERT INTO TEAMS 
VALUES(SEQ_TEAMS_NO.nextval, 'kia', 'kim', '...', 'kia', 'busan', 'kiakia', 'Y');

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
    
    
