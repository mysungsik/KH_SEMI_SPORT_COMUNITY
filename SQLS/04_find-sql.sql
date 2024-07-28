-- 1. 모든 유저 정보 출력
SELECT 
	I.USER_NO,
	I.TEAM_NO,
	I.USER_ID,
	I.USER_EMAIL ,
	I.USER_NAME,
	I.USER_PHONE,
	I.USER_SNS,
	I.USER_BD,
	I.USER_ADDRESS,
	I.USER_GENDER ,
	I.USER_NATION ,
	I.USER_IMG_ORIGIN ,
	I.USER_IMG_RENAME,
	I.USER_AUTHORITY ,
	I.USER_ST ,
	TO_CHAR(I.CREATE_DT, 'YYYY-MM-DD HH24:MM:SS') AS CREATE_DT,
	TO_CHAR(I.DELETE_DT, 'YYYY-MM-DD HH24:MM:SS') AS DELETE_DT,
	P.AGREE_ADDRESS,
	P.AGREE_EMAIL,
	P.AGREE_PHONE
FROM USER_INFO I
JOIN USER_POLICY P ON (I.USER_NO = P.USER_NO)
WHERE USER_ID = 'sportsAdmin';

-- 2. 스칼라 서브쿼리를 이용하여, 각 유저별 최근 로그인 정보 하나만을 들고오는 모든 유저 정보 출력
SELECT 
	I.USER_NO,
	I.TEAM_NO,
	I.USER_ID,
	I.USER_EMAIL,
	I.USER_NAME,
	I.USER_PHONE,
	I.USER_SNS,
	I.USER_BD,
	I.USER_ADDRESS,
	I.USER_GENDER ,
	I.USER_NATION ,
	I.USER_IMG_ORIGIN ,
	I.USER_IMG_RENAME,
	I.USER_AUTHORITY ,
	I.USER_ST,
	TO_CHAR(I.CREATE_DT, 'YYYY-MM-DD HH24:MM:SS') AS CREATE_DT,
	TO_CHAR(I.DELETE_DT, 'YYYY-MM-DD HH24:MM:SS') AS DELETE_DT,
	P.AGREE_ADDRESS,
	P.AGREE_EMAIL,
	P.AGREE_PHONE,
	(SELECT MAX(H.LOGIN_DT)
     FROM USER_HISTORY H
     WHERE H.USER_NO = I.USER_NO) AS LAST_LOGIN_DT
FROM USER_INFO I
JOIN USER_POLICY P ON (I.USER_NO = P.USER_NO);

SELECT USER_ID, USER_PW, USER_EMAIL, USER_NAME FROM USER_INFO
ORDER BY USER_NO DESC;

DELETE FROM USER_INFO WHERE DELETE_DT < SYSDATE  - INTERVAL '7' DAY;
COMMIT;

COMMIT;
ROLLBACK;

SELECT * FROM USER_POLICY;
SELECT * FROM USER_SESSION;
SELECT * FROM USER_HISTORY;

-- 2. SESSION 정보 출력
SELECT * FROM USER_SESSION;
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') FROM DUAL;


-- 3. HISTORY 정보 출력
SELECT * FROM USER_HISTORY
WHERE USER_NO = 1
ORDER BY LOGIN_DT DESC;

SELECT USER_ID, USER_PW, S.SESSION_UUID FROM USER_INFO U
JOIN USER_SESSION S ON (U.USER_NO = S.USER_NO)
WHERE S.SESSION_UUID = '4267a216-6e30-47e7-8856-74dd130acf37';


-- 4. 뉴스 출력 (WITH THUMBNAIL IMG)
SELECT N.*, U.USER_NAME, T.TEAM_NAME, (SELECT 
                                        NI.IMG_RENAME FROM NEWS_IMG NI
                                        WHERE N.NEWS_NO = NI.NEWS_NO
                                        AND NI.IMG_LEVEL = 1) AS NEWS_IMG
FROM NEWS N
JOIN USER_INFO U ON N.USER_NO = U.USER_NO
JOIN TEAMS T ON N.TEAM_NO = T.TEAM_NO;

SELECT * FROM NEWS_IMG;

-- 모든 팀 정보 출력하기
SELECT 
    T.TEAM_NO, 
    T.STADIUM_NO, 
    T.TEAM_NAME, 
    T.TEAM_LEADER, 
    T.DIRECTOR, 
    T.SPONSOR, 
    T.TEAM_REGION,
    T.TEAM_DES, 
    T.TEAM_ST, 
    T.VIDEO_URL, 
    T.TEAM_COLOR, 
    TI1.IMG_ORIGINAL AS IMG_ORIGINAL1,
    TI2.IMG_ORIGINAL AS IMG_ORIGINAL2,
    TI3.IMG_ORIGINAL AS IMG_ORIGINAL3,
    TI4.IMG_ORIGINAL AS IMG_ORIGINAL4
FROM 
    TEAMS T
LEFT JOIN TEAM_IMG TI1 ON T.TEAM_NO = TI1.TEAM_NO AND TI1.IMG_LEVEL = 1
LEFT JOIN TEAM_IMG TI2 ON T.TEAM_NO = TI2.TEAM_NO AND TI2.IMG_LEVEL = 2
LEFT JOIN TEAM_IMG TI3 ON T.TEAM_NO = TI3.TEAM_NO AND TI3.IMG_LEVEL = 3
LEFT JOIN TEAM_IMG TI4 ON T.TEAM_NO = TI4.TEAM_NO AND TI4.IMG_LEVEL = 4
WHERE 
    T.TEAM_ST = 'Y'
    AND TI1.IMG_ORIGINAL IS NOT NULL
    AND TI2.IMG_ORIGINAL IS NOT NULL
    AND TI3.IMG_ORIGINAL IS NOT NULL
    AND TI4.IMG_ORIGINAL IS NOT NULL;

commit;

-- 5. 모든 팀 정보(이름, 색깔, 로고) 출력
SELECT 
    T.TEAM_NO, 
    T.STADIUM_NO, 
    T.TEAM_NAME, 
    T.TEAM_LEADER, 
    T.DIRECTOR, 
    T.SPONSOR, 
    T.TEAM_REGION,
    T.TEAM_DES, 
    T.TEAM_ST, 
    T.VIDEO_URL, 
    T.TEAM_COLOR, 
    TI1.IMG_ORIGINAL AS IMG_ORIGINAL1,
    TI2.IMG_ORIGINAL AS IMG_ORIGINAL2,
    TI3.IMG_ORIGINAL AS IMG_ORIGINAL3,
    TI4.IMG_ORIGINAL AS IMG_ORIGINAL4
FROM 
    TEAMS T
LEFT JOIN TEAM_IMG TI1 ON T.TEAM_NO = TI1.TEAM_NO AND TI1.IMG_LEVEL = 1
LEFT JOIN TEAM_IMG TI2 ON T.TEAM_NO = TI2.TEAM_NO AND TI2.IMG_LEVEL = 2
LEFT JOIN TEAM_IMG TI3 ON T.TEAM_NO = TI3.TEAM_NO AND TI3.IMG_LEVEL = 3
LEFT JOIN TEAM_IMG TI4 ON T.TEAM_NO = TI4.TEAM_NO AND TI4.IMG_LEVEL = 4
WHERE 
    T.TEAM_ST = 'Y'
AND TEAM_NAME  ='KIA';
-------------------------------------------------------------------------------
SELECT
    T.*,
    TI1.IMG_ORIGINAL AS IMG_ORIGINAL1,
    TI1.IMG_DES AS IMG_DES1,
    TI2.IMG_ORIGINAL AS IMG_ORIGINAL2,
    TI2.IMG_DES AS IMG_DES2,
    TI3.IMG_ORIGINAL AS IMG_ORIGINAL3,
    TI4.IMG_ORIGINAL AS IMG_ORIGINAL4
FROM 
    TEAMS T
LEFT JOIN TEAM_IMG TI1 ON T.TEAM_NO = TI1.TEAM_NO AND TI1.IMG_LEVEL = 1
LEFT JOIN TEAM_IMG TI2 ON T.TEAM_NO = TI2.TEAM_NO AND TI2.IMG_LEVEL = 2
LEFT JOIN TEAM_IMG TI3 ON T.TEAM_NO = TI3.TEAM_NO AND TI3.IMG_LEVEL = 3
LEFT JOIN TEAM_IMG TI4 ON T.TEAM_NO = TI4.TEAM_NO AND TI4.IMG_LEVEL = 4
WHERE 
    T.TEAM_ST = 'Y'
AND TEAM_NAME  = 'KIA';

--------------------------------------------------------
SELECT TEAM_NO, TEAM_NAME, 
   (SELECT IMG_ORIGINAL FROM TEAM_IMG 
    WHERE TEAM_IMG.TEAM_NO = TEAMS.TEAM_NO 
    AND IMG_LEVEL = 3) AS IMG_ORIGINAL
FROM TEAMS 
WHERE TEAM_ST = 'Y'
AND TEAM_NAME='KIA';
---------------------------------------------------------
SELECT 
    T.TEAM_NO, 
    T.TEAM_NAME, 
    T.TEAM_ST, 
    T.TEAM_COLOR, 
    TI1.IMG_ORIGINAL AS IMG_ORIGINAL1
FROM 
    TEAMS T
LEFT JOIN TEAM_IMG TI1 ON T.TEAM_NO = TI1.TEAM_NO AND TI1.IMG_LEVEL = 1
WHERE 
    T.TEAM_ST = 'Y'
AND TEAM_NAME  = 'KIA';
   

-- 5-1. 특정 팀 정보
SELECT * FROM TEAMS WHERE TEAM_NAME ='KIA';

-- 경기 정보 출력
SELECT *
FROM MATCH
WHERE MATCH_NO = 1;

-- 오늘 스케쥴 구하기
SELECT MATCH_NO,TEAM_NAME, T.STADIUM_NO, PLAYER_NO, SCORE, 
TO_CHAR(MATCH_DT, 'YY.MM.DD') MATCH_DT, 
TO_CHAR(MATCH_DT, 'HH:MM') MATCH_TIME,
TO_CHAR(MATCH_DT, 'dy') MATCH_DAY,
GROUND, SUBSTR(STADIUM_PLACE, 0,2) PLACE
FROM MATCH
JOIN STADIUM S USING (STADIUM_NO)
JOIN TEAMS T USING(TEAM_NO)
WHERE TO_CHAR(MATCH_DT, 'YY.MM.DD') = TO_CHAR(SYSDATE, 'YY.MM.DD')
; 

-- [좋아요] ----------------------------------------------------------------------
SELECT SEQ_REPLY_NO.CURRVAL, SYSTIMESTAMP FROM DUAL;
SELECT * FROM REPLY;


-- 좋아요 출력
SELECT COUNT(*) FROM "LIKE"
WHERE USER_NO = 1
AND LIKE_TYPE_NO = 5
AND LIKE_TARGET_NO = 1;


INSERT INTO "LIKE" VALUES(1, 5, 1);

DELETE FROM "LIKE"
WHERE USER_NO = 1
AND LIKE_TYPE_NO = 5
AND LIKE_TARGET_NO = 1;

COMMIT;

-- [신고] ----------------------------------------------------------------------
-- 신고 모든 내용 출력 (타겟에 대한 제목, 내용을 포함하는)
SELECT 
    R.*, 
    U.USER_NAME, 
    U.USER_ID, 
    T.REPORT_TYPE, 
    V.VIO_TYPE,
    CASE 
        WHEN R.REPORT_TYPE_NO = 1 THEN C.COMM_TITLE
        WHEN R.REPORT_TYPE_NO = 3 THEN N.NEWS_TITLE
        ELSE NULL
    END AS TARGET_TITLE,
    CASE 
        WHEN R.REPORT_TYPE_NO = 1 THEN C.COMM_CONTENT
        WHEN R.REPORT_TYPE_NO = 2 THEN RP.REPLY_CONTENT
        WHEN R.REPORT_TYPE_NO = 3 THEN N.NEWS_CONTENT
        ELSE NULL
    END AS TARGET_CONTENT
FROM 
    REPORT R
JOIN 
    USER_INFO U ON R.USER_NO = U.USER_NO
JOIN 
    REPORT_TYPE T ON R.REPORT_TYPE_NO = T.REPORT_TYPE_NO
JOIN 
    REPORT_VIOLATION_TYPE V ON R.VIO_TYPE_NO = V.VIO_TYPE_NO
LEFT JOIN 
    COMM C ON R.REPORT_TYPE_NO = 1 AND R.TARGET_NO = C.COMM_NO
LEFT JOIN 
    REPLY RP ON R.REPORT_TYPE_NO = 2 AND R.TARGET_NO = RP.REPLY_NO
LEFT JOIN 
    NEWS N ON R.REPORT_TYPE_NO = 3 AND R.TARGET_NO = N.NEWS_NO
WHERE 
    R.REPORT_ST = 'P'
ORDER BY 
    R.REPORT_NO DESC;

-- 신고 [검색 : 신고유형 / 위반유형 / 위반내용 등 검색] 내용 출력 ==========
SELECT 
    R.*, 
    U.USER_NAME, 
    U.USER_ID, 
    T.REPORT_TYPE, 
    V.VIO_TYPE,
    CASE 
        WHEN R.REPORT_TYPE_NO = 1 THEN C.COMM_TITLE
        WHEN R.REPORT_TYPE_NO = 3 THEN N.NEWS_TITLE
        ELSE NULL
    END AS TARGET_TITLE,
    CASE 
        WHEN R.REPORT_TYPE_NO = 1 THEN C.COMM_CONTENT
        WHEN R.REPORT_TYPE_NO = 2 THEN RP.REPLY_CONTENT
        WHEN R.REPORT_TYPE_NO = 3 THEN N.NEWS_CONTENT
        ELSE NULL
    END AS TARGET_CONTENT
FROM 
    REPORT R
JOIN 
    USER_INFO U ON R.USER_NO = U.USER_NO
JOIN 
    REPORT_TYPE T ON R.REPORT_TYPE_NO = T.REPORT_TYPE_NO
JOIN 
    REPORT_VIOLATION_TYPE V ON R.VIO_TYPE_NO = V.VIO_TYPE_NO
LEFT JOIN 
    COMM C ON R.REPORT_TYPE_NO = 1 AND R.TARGET_NO = C.COMM_NO
LEFT JOIN 
    REPLY RP ON R.REPORT_TYPE_NO = 2 AND R.TARGET_NO = RP.REPLY_NO
LEFT JOIN 
    NEWS N ON R.REPORT_TYPE_NO = 3 AND R.TARGET_NO = N.NEWS_NO
WHERE 
    R.REPORT_ST = 'P'
AND REPORT_CONTENT  LIKE '%신고%'
ORDER BY 
    R.REPORT_NO DESC;

-- 신고 [검색 : 신고 게시글 제목 검색] 내용 출력 ==========
SELECT 
    R.*, 
    U.USER_NAME, 
    U.USER_ID, 
    T.REPORT_TYPE, 
    V.VIO_TYPE,
    CASE 
        WHEN R.REPORT_TYPE_NO = 1 THEN C.COMM_TITLE
        WHEN R.REPORT_TYPE_NO = 3 THEN N.NEWS_TITLE
        ELSE NULL
    END AS TARGET_TITLE,
    CASE 
        WHEN R.REPORT_TYPE_NO = 1 THEN C.COMM_CONTENT
        WHEN R.REPORT_TYPE_NO = 2 THEN RP.REPLY_CONTENT
        WHEN R.REPORT_TYPE_NO = 3 THEN N.NEWS_CONTENT
        ELSE NULL
    END AS TARGET_CONTENT
FROM 
    REPORT R
JOIN 
    USER_INFO U ON R.USER_NO = U.USER_NO
JOIN 
    REPORT_TYPE T ON R.REPORT_TYPE_NO = T.REPORT_TYPE_NO
JOIN 
    REPORT_VIOLATION_TYPE V ON R.VIO_TYPE_NO = V.VIO_TYPE_NO
LEFT JOIN 
    COMM C ON R.REPORT_TYPE_NO = 1 AND R.TARGET_NO = C.COMM_NO
LEFT JOIN 
    REPLY RP ON R.REPORT_TYPE_NO = 2 AND R.TARGET_NO = RP.REPLY_NO
LEFT JOIN 
    NEWS N ON R.REPORT_TYPE_NO = 3 AND R.TARGET_NO = N.NEWS_NO
WHERE 
    R.REPORT_ST = 'P'  
AND (   -- 검색 시작
    (R.REPORT_TYPE_NO = 1 AND C.COMM_CONTENT LIKE '%검색내용%') OR
    (R.REPORT_TYPE_NO = 2 AND RP.REPLY_CONTENT LIKE '%검색내용%') OR
    (R.REPORT_TYPE_NO = 3 AND N.NEWS_CONTENT LIKE '%검색내용%')
)   -- 검색 종료
ORDER BY 
    R.REPORT_NO DESC;




SELECT * FROM REPORT 
ORDER BY REPORT_NO DESC;


-- [???] ----------------------------------------------------------------------




SELECT MATCH_NO,TEAM_NAME, T.STADIUM_NO, PLAYER_NO, SCORE, 
TO_CHAR(MATCH_DT, 'YY.MM.DD') MATCH_DT, 
TO_CHAR(MATCH_DT, 'HH:MM') MATCH_TIME,
TO_CHAR(MATCH_DT, 'dy') MATCH_DAY,
GROUND, SUBSTR(STADIUM_PLACE, 0,2) PLACE
FROM MATCH
JOIN STADIUM S USING (STADIUM_NO)
JOIN TEAMS T USING(TEAM_NO)
WHERE TO_CHAR(MATCH_DT, 'YY.MM.DD') = TO_CHAR(SYSDATE, 'YY.MM.DD');



SELECT T.TEAM_NAME, PLAYER_NAME
		COUNT(CASE WHEN M.SCORE > O.SCORE THEN 1 END) AS WIN_COUNT
		FROM MATCH M
		JOIN TEAMS T ON M.TEAM_NO = T.TEAM_NO
		JOIN MATCH O ON M.MATCH_NO = O.MATCH_NO AND M.TEAM_NO != O.TEAM_NO
		GROUP BY T.TEAM_NAME
		ORDER BY WIN_COUNT DESC;
        
SELECT P.PLAYER_NAME, T.TEAM_NAME, COUNT(CASE WHEN M.SCORE > O.SCORE THEN 1 END) AS WIN_COUNT
        FROM MATCH M
        JOIN TEAMS T ON M.TEAM_NO = T.TEAM_NO
        JOIN MATCH O ON M.MATCH_NO = O.MATCH_NO AND M.TEAM_NO != O.TEAM_NO
        JOIN PLAYER P ON M.TEAM_NO = P.TEAM_NO
        GROUP BY P.PLAYER_NAME, T.TEAM_NAME
        ORDER BY WIN_COUNT DESC
        FETCH FIRST 5 ROWS ONLY;        
        
         SELECT P.PLAYER_NAME, T.TEAM_NAME, PIT.ERA
        FROM PITCHER_RECORD PIT
        JOIN PLAYER P ON PIT.PLAYER_NO = P.PLAYER_NO
        JOIN TEAMS T ON P.TEAM_NO = T.TEAM_NO
        ORDER BY PIT.ERA ASC
        FETCH FIRST 5 ROWS ONLY;
        
        
        SELECT T.TEAM_NAME,
		COUNT(CASE WHEN M.SCORE > O.SCORE
		THEN 1 END) AS WIN_COUNT
		FROM MATCH M
		JOIN TEAMS T ON M.TEAM_NO =
		T.TEAM_NO
		JOIN MATCH O ON M.MATCH_NO = O.MATCH_NO AND M.TEAM_NO !=
		O.TEAM_NO
		GROUP BY T.TEAM_NAME
		ORDER BY WIN_COUNT DESC;
        
        
        SELECT T.TEAM_NAME, P.PLAYER_NAME,
       COUNT(CASE WHEN M.SCORE > O.SCORE THEN 1 END) AS WIN_COUNT
FROM MATCH M
JOIN TEAMS T ON M.TEAM_NO = T.TEAM_NO
JOIN PLAYER P ON M.PLAYER_NO = P.PLAYER_NO
JOIN MATCH O ON M.MATCH_NO = O.MATCH_NO AND M.TEAM_NO != O.TEAM_NO
WHERE P.POSITION_NO= '2' -- 선수의 포지션이 투수일 경우
GROUP BY T.TEAM_NAME, P.PLAYER_NAME
ORDER BY WIN_COUNT DESC;


SELECT TEAM_NAME, PLAYER_NAME, WIN_COUNT
FROM (
    SELECT T.TEAM_NAME, P.PLAYER_NAME,
           COUNT(CASE WHEN M.SCORE > O.SCORE THEN 1 END) AS WIN_COUNT
    FROM MATCH M
    JOIN TEAMS T ON M.TEAM_NO = T.TEAM_NO
    JOIN PLAYER P ON M.PLAYER_NO = P.PLAYER_NO
    JOIN MATCH O ON M.MATCH_NO = O.MATCH_NO AND M.TEAM_NO != O.TEAM_NO
    WHERE P.POSITION_NO = '2' -- 선수의 포지션이 투수일 경우
    GROUP BY T.TEAM_NAME, P.PLAYER_NAME
    ORDER BY WIN_COUNT DESC
) 
WHERE ROWNUM <= 5;
	SELECT TEAM_NO, TEAM_NAME, 
		   (SELECT IMG_ORIGINAL FROM TEAM_IMG 
		    WHERE TEAM_IMG.TEAM_NO = TEAMS.TEAM_NO 
		    AND IMG_LEVEL = 3) AS IMG_ORIGINAL
		FROM TEAMS 
		WHERE TEAM_ST = 'Y'
		AND TEAM_NAME='KIA';
