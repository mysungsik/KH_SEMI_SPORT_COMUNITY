-- 1. USER INFO 업데이트
UPDATE USER_INFO
SET USER_EMAIL = 'test@test.com'
WHERE USER_NO = 1;

-- 유저 권한 업데이트
UPDATE USER_INFO
SET USER_AUTHORITY = 'A', USER_ST = 'R'
WHERE USER_NO = 5;

-- 프로필 사진 업데이트
UPDATE USER_INFO
SET USER_IMG_ORIGIN = ? ,
    USER_IMG_RENAME = ?
WHERE USER_NO = ?;

COMMIT;

-- [신고처리] -------------------------
-- 1. 신고처리 수락
UPDATE REPORT
SET REPORT_ST = 'A'
WHERE REPORT_NO = 1;

-- 2. 게시글 번호를 통해 글의 작성자번호 확인
SELECT USER_NO
FROM NEWS
WHERE NEWS_NO = 5;

SELECT * FROM COMM;
SELECT * FROM REPLY;

-- 3. 글의 작성자에게 경고 부여후 경고 수 반환
UPDATE USER_INFO
SET WARN_CNT = WARN_CNT + 1
WHERE USER_NO = 1;

COMMIT;
-- 5. 경고 5회 적립시 LOCK 처리
UPDATE USER_INFO
SET USER_ST = 'L'
WHERE USER_NO = 1;

COMMIT;

-- 6. 뉴스 업데이트
UPDATE NEWS
SET NEWS_TITLE = '수정된 한화 이글스 기아에게 충격 패배 입니다!!',
    NEWS_PUBLISHER = '수정된 KBS',
    NEWS_CONTENT = '수정된 한화 이글스 기아에게 충격 패배 <br> 그럼에도 불구하고 정신 못차려 <br> 회식 장소에서 ...',
    UPDATE_DT = DEFAULT
WHERE NEWS_NO = 3;

COMMIT;
