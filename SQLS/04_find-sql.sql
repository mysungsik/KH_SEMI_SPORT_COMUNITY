-- 1. 모든 유저 정보 출력
SELECT 
	I.USER_NO,
	I.TEAM_NO,
	I.USER_ID,
	I.USER_EMAIL ,
	I.USER_NAME,
	I.USER_PHONE,
	I.USER_SNS,
	TO_CHAR(I.USER_BD, 'YYYYMMDD') AS USER_BD,
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
WHERE USER_ID = 'sportsAdmin'
AND USER_PW = 'KQZ3dpm+3daZEkqDpEvtnk6AMuxOJ22ZNR1WmZoxVVq+5YWwAZ+SflpCH26gc3X2nVzfL1zre30F+jsMxgowaw=='
AND DELETE_DT IS NULL;

SELECT * FROM USER_INFO;
SELECT * FROM USER_POLICY;
SELECT * FROM USER_SESSION;

-- 2. SESSION 정보 출력
SELECT * FROM USER_SESSION;

SELECT USER_ID, USER_PW, S.SESSION_UUID FROM USER_INFO U
JOIN USER_SESSION S ON (U.USER_NO = S.USER_NO)
WHERE S.SESSION_UUID = '4267a216-6e30-47e7-8856-74dd130acf37';