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