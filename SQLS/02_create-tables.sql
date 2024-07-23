-- [[ INDEX ]]
-- 경기장정보, 경기장 이미지
-- 구단, 구단 이미지
-- 선수포지션, 선수, 선수 이미지

--1. 경기장 정보, 경기장 이미지
    DROP TABLE  STADIUM_IMG;
    DROP SEQUENCE SEQ_STADIUM_NO;
    DROP TABLE STADIUM;
    
-- 2. 구단, 구단 이미지
    DROP TABLE TEAMS;
    DROP SEQUENCE SEQ_TEAM_NO;
    DROP TABLE TEAM_IMG;
    
-- 3. 선수 포지션, 선수, 선수 이미지
    DROP TABLE PLAYER_POSITION;
    DROP TABLE PLAYER;
    DROP SEQUENCE SEQ_PLAYER_NO;
    DROP TABLE PLAYER_IMG;
    
-- 4. 경기, 경기스코어, 투수기록, 타자기록
    DROP TABLE MATCH;
    DROP SEQUENCE SEQ_MATCH_NO;
    DROP TABLE MATCH_SCORE;
    DROP SEQUENCE SEQ_MATCH_SCORE_NO;
    DROP TABLE PITCHER_RECORD;
    DROP TABLE HITTER_RECORD;

-- 5. 유저, 유저히스토리, 유저 정책, 유저 세션
    DROP TABLE USER_INFO;
    DROP SEQUENCE SEQ_USER_NO;
    DROP TABLE USER_HISTORY;
    DROP SEQUENCE SEQ_USER_HISTORY;
    DROP TABLE USER_POLICY;
	DROP TABLE USER_SESSION;

-- 6. 게시글 타입, 게시글, 게시글 이미지
    DROP TABLE COMM_TYPE;
    DROP TABLE COMM;
    DROP TABLE COMM_IMG;

-- 7. 댓글 유형, 댓글, 좋아요 유형, 좋아요
    DROP TABLE REPLY_TYPE;
    DROP TABLE REPLY;
    
    DROP TABLE LIKE_TYPE;
    DROP TABLE LIKE;

-- 5. 신고 타입, 신고 위반 유형, 신고
    DROP TABLE REPORT_TYPE; 
    DROP TABLE REPORT_VIOLATION_TYPE;
    DROP TABLE REPORT;
    DROP SEQUENCE SEQ_REPORT_NO;

-- ========================================================================================================

-- 1. STADIUM 테이블
CREATE TABLE "STADIUM" (
	"STADIUM_NO"	NUMBER CONSTRAINT PK_STADIUM_STADIUM_NO PRIMARY KEY,
	"STADIUM_NAME"	VARCHAR2(100)		NOT NULL,
	"MAX_PEOPLE"	NUMBER		NOT NULL,
	"WIDTH_FILED"	NUMBER		NOT NULL,
	"STADIUM_PLACE"	VARCHAR2(4000)		NOT NULL
);
COMMENT ON COLUMN "STADIUM"."STADIUM_NAME" IS '경기장 이름';
COMMENT ON COLUMN "STADIUM"."MAX_PEOPLE" IS '최대 수용 인원';
COMMENT ON COLUMN "STADIUM"."WIDTH_FILED" IS '경기장 면적';
COMMENT ON COLUMN "STADIUM"."STADIUM_PLACE" IS '경기장 주소';

CREATE SEQUENCE SEQ_STADIUM_NO NOCACHE;

-- 2. STADIUM_IMG 테이블
CREATE TABLE "STADIUM_IMG" (
	"STADIUM_NO"	NUMBER CONSTRAINT FK_STADIUM_IMG_STADIUM_NO REFERENCES STADIUM(STADIUM_NO) PRIMARY KEY,
	"IMG_ORIGINAL"	VARCHAR2(100)		NOT NULL,
	"IMG_RENAME"	VARCHAR2(100)		NOT NULL,
	"IMG_LEVEL"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "STADIUM_IMG"."STADIUM_NO" IS '경기장번호';
COMMENT ON COLUMN "STADIUM_IMG"."IMG_ORIGINAL" IS '이미지원본명';
COMMENT ON COLUMN "STADIUM_IMG"."IMG_RENAME" IS '이미지변경명';
COMMENT ON COLUMN "STADIUM_IMG"."IMG_LEVEL" IS '이미지 레벨(위치)';

-- 3. TEAMS TABLE
CREATE TABLE "TEAMS" (
	"TEAM_NO"	NUMBER		CONSTRAINT PK_TEAMS_TEAM_NO PRIMARY KEY,
	"STADIUM_NO"	NUMBER		CONSTRAINT FK_TEAMS_STADIUM_NO REFERENCES STADIUM(STADIUM_NO)ON DELETE SET NULL,
	"TEAM_NAME"	VARCHAR2(50)		NOT NULL,
	"TEAM_LEADER"	VARCHAR2(50)		NOT NULL,
	"DIRECTOR"	VARCHAR2(50)		NOT NULL,
	"SPONSOR"	VARCHAR2(50)		NOT NULL,
	"TEAM_REGION"	VARCHAR2(300)		NOT NULL,
	"TEAM_DES"	VARCHAR2(4000)		NULL,
	"TEAM_ST"	CHAR(1)	DEFAULT 'N'	CHECK(TEAM_ST IN ('Y', 'N')) NOT NULL
);

COMMENT ON COLUMN "TEAMS"."TEAM_NO" IS '구단 번호(SEQ_TEAM_NO)';
COMMENT ON COLUMN "TEAMS"."TEAM_NAME" IS '구단 이름';
COMMENT ON COLUMN "TEAMS"."TEAM_LEADER" IS '단장';
COMMENT ON COLUMN "TEAMS"."DIRECTOR" IS '감독 이름';
COMMENT ON COLUMN "TEAMS"."SPONSOR" IS '스폰서';
COMMENT ON COLUMN "TEAMS"."TEAM_REGION" IS '지역';
COMMENT ON COLUMN "TEAMS"."TEAM_DES" IS '구단 설명';
COMMENT ON COLUMN "TEAMS"."TEAM_ST" IS '구단 추가/제거';

CREATE SEQUENCE SEQ_TEAM_NO NOCACHE;

-- 4. TEAM_IMG TABLE
CREATE TABLE "TEAM_IMG" (
	"TEAM_NO"	NUMBER	CONSTRAINT FK_TEAM_IMG_TEAM_NO REFERENCES TEAMS(TEAM_NO) ON DELETE CASCADE NOT NULL,
	"IMG_ORIGINAL"	VARCHAR2(500)		NOT NULL,
	"IMG_RENAME"	VARCHAR2(500)		NOT NULL,
	"VIDEO_URL"	VARCHAR2(500)		NULL,
	"IMG_LEVEL"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "TEAM_IMG"."TEAM_NO" IS '구단 번호(SEQ_TEAM_NO)';
COMMENT ON COLUMN "TEAM_IMG"."IMG_ORIGINAL" IS '이미지 원본명';
COMMENT ON COLUMN "TEAM_IMG"."IMG_RENAME" IS '이미지 저장경로 + 변경명';
COMMENT ON COLUMN "TEAM_IMG"."VIDEO_URL" IS '팀 동영상 URL';
COMMENT ON COLUMN "TEAM_IMG"."IMG_LEVEL" IS '팀 이미지 레벨';


-- 5. PLAYER POSITION TABLE
CREATE TABLE "PLAYER_POSITION" (
	"POSITION_NO"	NUMBER	CONSTRAINT PK_PLAYER_POSITION_NO PRIMARY KEY,
	"POSITION_NAME"	VARCHAR2(30)		NOT NULL
);

COMMENT ON COLUMN "PLAYER_POSITION"."POSITION_NO" IS '포지션번호';
COMMENT ON COLUMN "PLAYER_POSITION"."POSITION_NAME" IS '포지션 이름';

-- 6. PLAYER TABLE
CREATE TABLE "PLAYER" (
	"PLAYER_NO"	NUMBER	CONSTRAINT PK_PLAYER_PLAYER_NO PRIMARY KEY,
	"POSITION_NO"	NUMBER	CONSTRAINT FK_PLAYER_POSITION_NO REFERENCES PLAYER_POSITION(POSITION_NO) ON DELETE SET NULL,
	"TEAM_NO"	NUMBER CONSTRAINT FK_TEAMS_TEAM_NO REFERENCES TEAMS(TEAM_NO) ON DELETE CASCADE NOT NULL,
	"PLAYER_NAME"	VARCHAR2(50)	NOT NULL,
	"PLAYER_UNIFORM_NO"	NUMBER		NOT NULL,
	"PLAYER_BD"	CHAR(8)		NOT NULL,
	"JOIN_YEAR"	CHAR(4)		NOT NULL,
	"HEIGHT"	NUMBER		NOT NULL,
	"WEIGHT"	NUMBER		NOT NULL,
	"SCHOOL"	VARCHAR2(300)		NULL,
	"SALARY"	NUMBER		NULL,
	"CAREER"	VARCHAR2(4000)		NULL,
	"PLAYER_ST"	CHAR(1)	DEFAULT 'N'	CHECK(PLAYER_ST IN ('Y', 'N')) NOT NULL
);

COMMENT ON COLUMN "PLAYER"."PLAYER_NO" IS '선수 번호';
COMMENT ON COLUMN "PLAYER"."POSITION_NO" IS '포지션 번호';
COMMENT ON COLUMN "PLAYER"."TEAM_NO" IS '구단 번호(SEQ_TEAM_NO)';
COMMENT ON COLUMN "PLAYER"."PLAYER_NAME" IS '선수 이름';
COMMENT ON COLUMN "PLAYER"."PLAYER_UNIFORM_NO" IS '선수 등번호';
COMMENT ON COLUMN "PLAYER"."PLAYER_BD" IS '생년월일(YYYYMMDD)';
COMMENT ON COLUMN "PLAYER"."JOIN_YEAR" IS '입단년도(YYYY)';
COMMENT ON COLUMN "PLAYER"."HEIGHT" IS '신장';
COMMENT ON COLUMN "PLAYER"."WEIGHT" IS '체중';
COMMENT ON COLUMN "PLAYER"."SCHOOL" IS '출신학교 (초등학교,  중학교, 고등학교, 대학교)';
COMMENT ON COLUMN "PLAYER"."SALARY" IS '연봉';
COMMENT ON COLUMN "PLAYER"."CAREER" IS '경력사항 ( ","로 구분하여 VARCHAR)';
COMMENT ON COLUMN "PLAYER"."PLAYER_ST" IS '선수 활동/ 비활동';

CREATE SEQUENCE SEQ_PLAYER_NO NOCACHE;

-- 7. PLAYER_IMG TABLE
CREATE TABLE "PLAYER_IMG" (
	"PLAYER_NO"	NUMBER	CONSTRAINT FK_PLAYER_IMG_PLAYER_NO REFERENCES PLAYER(PLAYER_NO) ON DELETE CASCADE NOT NULL,
	"IMG_ORIGINAL"	VARCHAR2(500)		NOT NULL,
	"IMG_RENAME"	VARCHAR2(500)		NOT NULL,
	"IMG_LEVEL"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "PLAYER_IMG"."PLAYER_NO" IS '선수 번호';
COMMENT ON COLUMN "PLAYER_IMG"."IMG_ORIGINAL" IS '이미지 원본명';
COMMENT ON COLUMN "PLAYER_IMG"."IMG_RENAME" IS '이미지 저장경로+ 변경명';
COMMENT ON COLUMN "PLAYER_IMG"."IMG_LEVEL" IS '0 : 헤드샷 /  1: 포즈샷';



-- 8. MATCH TABEL
CREATE TABLE "MATCH" (
	"MATCH_NO"	NUMBER NOT NULL,
	"TEAM_NO" NUMBER CONSTRAINT FK_MATCH_TEAM_NO REFERENCES TEAMS NOT NULL,
	"STADIUM_NO" 	NUMBER	CONSTRAINT FK_MATCH_STADIUM_NO REFERENCES STADIUM NOT NULL,
	"POSITION_NO"	NUMBER	CONSTRAINT FK_MATCH_POSITION_NO REFERENCES PLAYER_POSITION	NOT NULL,
	"SCORE"	NUMBER		NOT NULL,
	"MATCH_DT"	DATE	DEFAULT SYSDATE	NOT NULL,
	"GROUND"	CHAR(1) CHECK(GROUND IN ('H', 'A')) NOT NULL,
    CONSTRAINT PK_MATCH_MATCH_NO PRIMARY KEY (MATCH_NO, TEAM_NO)
);

COMMENT ON COLUMN "MATCH"."MATCH_NO" IS '경기번호 + 구단 번호(PK)';
COMMENT ON COLUMN "MATCH"."TEAM_NO" IS '경기번호 + 구단 번호(PK)';
COMMENT ON COLUMN "MATCH"."STADIUM_NO" IS '경기장번호';
COMMENT ON COLUMN "MATCH"."POSITION_NO" IS '선발 투수 번호';
COMMENT ON COLUMN "MATCH"."SCORE" IS '점수';
COMMENT ON COLUMN "MATCH"."MATCH_DT" IS '경기날짜';
COMMENT ON COLUMN "MATCH"."GROUND" IS 'H / A CHECK';

CREATE SEQUENCE SEQ_MATCH_NO NOCACHE;


-- 9. MATCH_SCORE 테이블
CREATE TABLE "MATCH_SCORE" (
	"SCORE_NO"	NUMBER CONSTRAINT PK_SCORE_NO PRIMARY KEY,
	"MATCH_NO"	NUMBER  NOT NULL,
	"TEAM_NO"	NUMBER NOT NULL,
	"HIT"	NUMBER		NOT NULL,
	"HOMERUN"	NUMBER		NOT NULL,
	"STKOUT"	NUMBER		NOT NULL,
	"STOLEBASE"	NUMBER		NOT NULL,
	"DOUBLEPLAY"	NUMBER		NOT NULL,
	"ERROR_SCORE"	NUMBER		NOT NULL,
    CONSTRAINT UQ_MATCH_SCORE_NO UNIQUE (MATCH_NO, TEAM_NO),
    CONSTRAINT FK_MATCH_SCORE_MATCH_NO FOREIGN KEY(MATCH_NO, TEAM_NO) REFERENCES MATCH(MATCH_NO, TEAM_NO)
);

COMMENT ON COLUMN "MATCH_SCORE"."SCORE_NO" IS '스코어번호';
COMMENT ON COLUMN "MATCH_SCORE"."MATCH_NO" IS '경기번호 + 구단 번호(PK)';
COMMENT ON COLUMN "MATCH_SCORE"."TEAM_NO" IS '경기번호 + 구단 번호(PK)';
COMMENT ON COLUMN "MATCH_SCORE"."HIT" IS '안타(개수)';
COMMENT ON COLUMN "MATCH_SCORE"."HOMERUN" IS '팀  홈런 (개수)';
COMMENT ON COLUMN "MATCH_SCORE"."STKOUT" IS '팀 삼진 (개수)';
COMMENT ON COLUMN "MATCH_SCORE"."STOLEBASE" IS '팀 도루 (개수)';
COMMENT ON COLUMN "MATCH_SCORE"."DOUBLEPLAY" IS '팀 병살 (개수)';
COMMENT ON COLUMN "MATCH_SCORE"."ERROR_SCORE" IS '팀 실책 (개수)';

CREATE SEQUENCE SEQ_MATCH_SCORE_NO NOCACHE;

-- 10. HITTER_RECORED TABLE
CREATE TABLE "HITTER_RECORD" (
    "SCORE_NO"	NUMBER CONSTRAINT PK_HITTER_RECORD_SCORE_NO PRIMARY KEY,
    "PLAYER_NO"	NUMBER CONSTRAINT FK_HITTER_RECORD_PLAYER_NO REFERENCES PLAYER(PLAYER_NO) ON DELETE CASCADE  NOT NULL,
    "PLAYER_NAME"	VARCHAR2(40)		NOT NULL,
	"HIT_COUNT"	NUMBER	DEFAULT 0	NOT NULL,
	"HIT"	NUMBER	DEFAULT 0	NOT NULL,
	"HOMERUN"	NUMBER	DEFAULT 0	NOT NULL,
	"RBI"	NUMBER	DEFAULT 0	NOT NULL,
	"STKOUT"	NUMBER	DEFAULT 0	NOT NULL,
	"DEADBALL"	NUMBER	DEFAULT 0	NOT NULL,
	"BAT_AVG"	NUMBER	DEFAULT 0	NOT NULL
       
);
 
COMMENT ON COLUMN "HITTER_RECORD"."SCORE_NO" IS '스코어번호';
COMMENT ON COLUMN "HITTER_RECORD"."PLAYER_NO" IS '선수 번호';
COMMENT ON COLUMN "HITTER_RECORD"."PLAYER_NAME" IS '선수이름';
COMMENT ON COLUMN "HITTER_RECORD"."HIT_COUNT" IS '타수';
COMMENT ON COLUMN "HITTER_RECORD"."HIT" IS '안타';
COMMENT ON COLUMN "HITTER_RECORD"."HOMERUN" IS '홈런';
COMMENT ON COLUMN "HITTER_RECORD"."RBI" IS '타점';
COMMENT ON COLUMN "HITTER_RECORD"."STKOUT" IS '삼진';
COMMENT ON COLUMN "HITTER_RECORD"."DEADBALL" IS '사사구';
COMMENT ON COLUMN "HITTER_RECORD"."BAT_AVG" IS '타율';


-- 11. PITCHER RECORD TABLE
CREATE TABLE "PITCHER_RECORD" (
	"SCORE_NO"	NUMBER CONSTRAINT PK_PITCTER_RECORD_SCORE_NO PRIMARY KEY,
	"PLAYER_NO"	NUMBER CONSTRAINT FK_PITCHER_RECORD_PLAYER_NO REFERENCES PLAYER(PLAYER_NO) ON DELETE CASCADE  NOT NULL,
	"PLAYER_NAME"	VARCHAR2(40)		NOT NULL,
	"INNING"	NUMBER	DEFAULT 0	NOT NULL,
	"PITCH_COUNT"	NUMBER	DEFAULT 0	NOT NULL,
	"HITTED"	NUMBER	DEFAULT 0	NOT NULL,
	"HOMERUNED"	NUMBER	DEFAULT 0	NOT NULL,
	"SKTOUTED"	NUMBER	DEFAULT 0	NOT NULL,
	"DEADBALL"	NUMBER	DEFAULT 0	NOT NULL,
	"LOSS_SCORE"	NUMBER	DEFAULT 0	NOT NULL,
	"SELF_LOSE"	NUMBER	DEFAULT 0	NOT NULL,
	"ERA"	NUMBER	DEFAULT 0	NOT NULL,
	"WHIP"	NUMBER	DEFAULT 0	NOT NULL
    
);

COMMENT ON COLUMN "PITCHER_RECORD"."SCORE_NO" IS '스코어번호';
COMMENT ON COLUMN "PITCHER_RECORD"."PLAYER_NO" IS '선수 번호';
COMMENT ON COLUMN "PITCHER_RECORD"."PLAYER_NAME" IS '선수이름';
COMMENT ON COLUMN "PITCHER_RECORD"."INNING" IS '뛴 이닝';
COMMENT ON COLUMN "PITCHER_RECORD"."PITCH_COUNT" IS '투구 수';
COMMENT ON COLUMN "PITCHER_RECORD"."HITTED" IS '피안타';
COMMENT ON COLUMN "PITCHER_RECORD"."HOMERUNED" IS '피홈런';
COMMENT ON COLUMN "PITCHER_RECORD"."SKTOUTED" IS '탈삼진';
COMMENT ON COLUMN "PITCHER_RECORD"."DEADBALL" IS '사사구';
COMMENT ON COLUMN "PITCHER_RECORD"."LOSS_SCORE" IS '실점';
COMMENT ON COLUMN "PITCHER_RECORD"."SELF_LOSE" IS '자책';
COMMENT ON COLUMN "PITCHER_RECORD"."ERA" IS 'ERA';
COMMENT ON COLUMN "PITCHER_RECORD"."WHIP" IS 'WHIP';


-- 12. USER TABLE
CREATE TABLE USER_INFO (
	"USER_NO" NUMBER PRIMARY KEY NOT NULL,
	"TEAM_NO" NUMBER CONSTRAINT FK_USER_TEAM_NO REFERENCES TEAMS(TEAM_NO) ON DELETE SET NULL,
	"USER_ID" VARCHAR2(20) CONSTRAINT UQ_USER_ID UNIQUE NOT NULL,
	"USER_PW" VARCHAR2(88) NOT NULL,
	"USER_EMAIL" VARCHAR2(100) CONSTRAINT UQ_USER_EMAIL UNIQUE NOT NULL,
	"USER_NAME"	VARCHAR2(48) NOT NULL,
	"USER_PHONE" CHAR(11),
	"USER_SNS" VARCHAR(100),
	"USER_BD" CHAR(8),
	"USER_ADDRESS" VARCHAR2(256),
	"USER_GENDER" CHAR(1),
	"USER_NATION" CHAR(2),
    "USER_IMG_ORIGIN" VARCHAR2(500),
    "USER_IMG_RENAME" VARCHAR2(500),
	"USER_AUTHORITY" CHAR(1) DEFAULT 'U' NOT NULL,
	"USER_ST" CHAR(1) DEFAULT 'G' NOT NULL,
	"CREATE_DT" DATE DEFAULT SYSDATE NOT NULL,
	"DELETE_DT" DATE,
	"FAIL_CNT" NUMBER DEFAULT 0
);

ALTER TABLE USER_INFO
ADD CONSTRAINT CK_USER_AUTHORITY CHECK(USER_AUTHORITY IN ('U', 'A'));

ALTER TABLE USER_INFO
ADD CONSTRAINT CK_USER_ST CHECK(USER_ST IN ('G', 'R', 'L'));

ALTER TABLE USER_INFO
ADD CONSTRAINT CK_USER_GENDER CHECK(USER_GENDER IN ('M', 'F'));

ALTER TABLE USER_INFO
ADD CONSTRAINT CK_USER_NATION CHECK(USER_NATION IN ('KO', 'FO'));

COMMENT ON COLUMN "USER_INFO"."USER_NO" IS '유저번호(SEQ_USER_NO)';
COMMENT ON COLUMN "USER_INFO"."TEAM_NO" IS '좋아요한 구단 번호(FK)';
COMMENT ON COLUMN "USER_INFO"."USER_ID" IS '유저 아이디(UNIQUE KEY)';
COMMENT ON COLUMN "USER_INFO"."USER_PW" IS '유저 비밀번호(SHA-512, BASE64)';
COMMENT ON COLUMN "USER_INFO"."USER_EMAIL" IS '유저 이메일';
COMMENT ON COLUMN "USER_INFO"."USER_NAME" IS '유저 이름 ( 한국어 3글자 제한)';
COMMENT ON COLUMN "USER_INFO"."USER_PHONE" IS '유저 전화번호(-없이)';
COMMENT ON COLUMN "USER_INFO"."USER_SNS" IS '유저 SNS 주소';
COMMENT ON COLUMN "USER_INFO"."USER_BD" IS 'YYYYMMDD  형식';
COMMENT ON COLUMN "USER_INFO"."USER_ADDRESS" IS 'XX시, XX동 (필수 시, 동)';
COMMENT ON COLUMN "USER_INFO"."USER_GENDER" IS '유저성별 (M or F)';
COMMENT ON COLUMN "USER_INFO"."USER_NATION" IS '유저 국적 KO(Korean), FO(Foreigner)';
COMMENT ON COLUMN "USER_INFO"."USER_AUTHORITY" IS '유저 권한 A(admin), U(user)';
COMMENT ON COLUMN "USER_INFO"."USER_ST" IS '유저 상태 G(granted), R(readOnly), L(Locked)';
COMMENT ON COLUMN "USER_INFO"."CREATE_DT" IS '유저 가입일';
COMMENT ON COLUMN "USER_INFO"."DELETE_DT" IS '유저 탈퇴일';
COMMENT ON COLUMN "USER_INFO"."USER_IMG_ORIGIN" IS '유저 프로필 이미지 원본';
COMMENT ON COLUMN "USER_INFO"."USER_IMG_RENAME" IS '유저 프로필 이미지 변경';
COMMENT ON COLUMN "USER_INFO"."FAIL_CNT" IS '로그인 실패 횟수';


CREATE SEQUENCE SEQ_USER_NO NOCACHE;

-- 13. USER HISTORY TABLE
CREATE TABLE USER_HISTORY (
	"HISTORY_NO" NUMBER	PRIMARY KEY NOT NULL,
	"USER_NO" NUMBER CONSTRAINT FK_USER_HISTORY_USER_NO REFERENCES USER_INFO(USER_NO) ON DELETE CASCADE NOT NULL,
	"LOGIN_DT" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	"LOGIN_AUTO" CHAR(1) DEFAULT 'N' NOT NULL
);

COMMENT ON COLUMN "USER_HISTORY"."HISTORY_NO" IS '히스토리번호(SEQ_HISOTRY_NO)';
COMMENT ON COLUMN "USER_HISTORY"."USER_NO" IS '유저번호(FK)';
COMMENT ON COLUMN "USER_HISTORY"."LOGIN_DT" IS '로그인시간';

ALTER TABLE USER_HISTORY
ADD CONSTRAINT CK_LOGIN_AUTO CHECK(LOGIN_AUTO IN ('N', 'Y'));

CREATE SEQUENCE SEQ_USER_HISTORY NOCACHE;


-- 14. USER_POLICY TABLE
CREATE TABLE USER_POLICY (
	"USER_NO" NUMBER CONSTRAINT FK_USER_POLICY_USER_NO REFERENCES USER_INFO(USER_NO) ON DELETE CASCADE NOT NULL,
	"AGREE_EMAIL" CHAR(1) DEFAULT 'N' NOT NULL,
	"AGREE_PHONE" CHAR(1) DEFAULT 'N' NOT NULL,
	"AGREE_ADDRESS" CHAR(1) DEFAULT 'N' NOT NULL
);

COMMENT ON COLUMN "USER_POLICY"."USER_NO" IS '유저번호(FK)';
COMMENT ON COLUMN "USER_POLICY"."AGREE_EMAIL" IS '이메일 정보동의 (N/Y)';
COMMENT ON COLUMN "USER_POLICY"."AGREE_PHONE" IS '전화번호 정보동의 (N/Y)';
COMMENT ON COLUMN "USER_POLICY"."AGREE_ADDRESS" IS '주소  정보동의 (N/Y)';

ALTER TABLE USER_POLICY
ADD CONSTRAINT CK_AGREE_EMAIL CHECK(AGREE_EMAIL IN ('N', 'Y'));

ALTER TABLE USER_POLICY
ADD CONSTRAINT CK_AGREE_PHONE CHECK(AGREE_PHONE IN ('N', 'Y'));

ALTER TABLE USER_POLICY
ADD CONSTRAINT CK_AGREE_ADDRESS CHECK(AGREE_ADDRESS IN ('N', 'Y'));

-- 15. USER SESSION TABLE
CREATE TABLE USER_SESSION (
    "USER_NO" NUMBER CONSTRAINT FK_USER_SESSION_NO REFERENCES USER_INFO ON DELETE CASCADE NOT NULL,
    "SESSION_UUID"	VARCHAR(64) NULL
);

COMMENT ON COLUMN "USER_SESSION"."USER_NO" IS '유저번호(SEQ_USER_NO)';
COMMENT ON COLUMN "USER_SESSION"."SESSION_UUID" IS '유저 UUID 토큰';


-- 16. 게시판 타입
CREATE TABLE "COMM_TYPE" (
	"TYPE_NO"	NUMBER,
	"TYPE_NAME"	VARCHAR2(10) NOT NULL,
     CONSTRAINT PK_COMM_TYPE_NO PRIMARY KEY (TYPE_NO)
);

COMMENT ON COLUMN "COMM_TYPE"."TYPE_NO" IS '게시판 타입 번호';
COMMENT ON COLUMN "COMM_TYPE"."TYPE_NAME" IS '게시판 타입';

-- 17. 게시글
CREATE TABLE "COMM" (
	"COMM_NO"	NUMBER,
	"USER_NO"	NUMBER NOT NULL,
	"COMM_TYPE"	NUMBER	NOT NULL,
	"TEAM_NO"	NUMBER NULL,
	"COMM_TITLE"	VARCHAR2(150)		NOT NULL,
	"COMM_CONTENT"	VARCHAR2(4000)		NOT NULL,
	"CREATE_DT"	DATE	DEFAULT SYSDATE	NOT NULL,
	"COMM_VIEWS"	NUMBER	DEFAULT 0	NOT NULL,
	"COMM_ST"	CHAR(1)	DEFAULT 'N'	NOT NULL,
	"UPDATE_DT"	DATE		NULL,
    CONSTRAINT PK_COMM PRIMARY KEY (COMM_NO),
    CONSTRAINT FK_COMM_USER_NO FOREIGN KEY (USER_NO) REFERENCES USER_INFO(USER_NO) ON DELETE CASCADE,
	CONSTRAINT FK_COMM_TEAM_NO FOREIGN KEY (TEAM_NO) REFERENCES TEAMS(TEAM_NO)  ON DELETE CASCADE,
	CONSTRAINT CK_COMM_TEAM_NO CHECK (COMM_TYPE != 3 OR (COMM_TYPE = 3 AND TEAM_NO IS NOT NULL)),
    CONSTRAINT CK_COMM_ST CHECK (COMM_ST IN('N', 'Y'))
);

COMMENT ON COLUMN "COMM"."COMM_NO" IS '게시글 번호(시퀀스)';
COMMENT ON COLUMN "COMM"."USER_NO" IS '유저번호(SEQ_USER_NO)';
COMMENT ON COLUMN "COMM"."COMM_TYPE" IS '게시판 타입 번호';
COMMENT ON COLUMN "COMM"."TEAM_NO" IS '구단 번호(SEQ_TEAM_NO)';
COMMENT ON COLUMN "COMM"."COMM_TITLE" IS '게시글 제목';
COMMENT ON COLUMN "COMM"."COMM_CONTENT" IS '게시글 내용';
COMMENT ON COLUMN "COMM"."CREATE_DT" IS '작성일';
COMMENT ON COLUMN "COMM"."COMM_VIEWS" IS '조회수';
COMMENT ON COLUMN "COMM"."COMM_ST" IS '게시글 상태(정상N 삭제Y)';
COMMENT ON COLUMN "COMM"."UPDATE_DT" IS '게시글 수정일';

CREATE SEQUENCE SEQ_COMM_NO NOCACHE;

-- 18. 게시글 이미지
CREATE TABLE "COMM_IMG" (
	"COMM_NO"	NUMBER NOT NULL,
	"IMG_RENAME"	VARCHAR2(30)		NOT NULL,
	"IMG_ORIGINAL"	VARCHAR2(30)		NOT NULL,
	"IMG_LEVEL"	NUMBER		NOT NULL,
    CONSTRAINT FK_COMM_IMG_COMM_NO FOREIGN KEY (COMM_NO) REFERENCES COMM (COMM_NO)
);

COMMENT ON COLUMN "COMM_IMG"."COMM_NO" IS '게시글 번호(시퀀스)';
COMMENT ON COLUMN "COMM_IMG"."IMG_RENAME" IS '이미지 변경명';
COMMENT ON COLUMN "COMM_IMG"."IMG_ORIGINAL" IS '이미지 원본명';
COMMENT ON COLUMN "COMM_IMG"."IMG_LEVEL" IS '이미지 위치 지정 번호';

-- 19. 댓글 유형
CREATE TABLE "REPLY_TYPE" (
	"REPLY_TYPE_NO"	NUMBER,
	"REPLY_TYPE"	VARCHAR2(30)		NOT NULL,
    CONSTRAINT PK_REPLY_TYPE_NO PRIMARY KEY(REPLY_TYPE_NO)
);

COMMENT ON COLUMN "REPLY_TYPE"."REPLY_TYPE_NO" IS '댓글 유형 번호';
COMMENT ON COLUMN "REPLY_TYPE"."REPLY_TYPE" IS '댓글 유형';

-- 20. 댓글
CREATE TABLE "REPLY" (
	"REPLY_NO"	NUMBER,
	"REPLY_TYPE_NO"	NUMBER		NOT NULL,
	"USER_NO"	NUMBER		NOT NULL,
	"REPLY_TARGET_NO"	NUMBER		NOT NULL,
	"REPLY_DT"	TIMESTAMP	DEFAULT CURRENT_TIMESTAMP	NOT NULL,
	"REPLY_CONTENT"	VARCHAR2(300)		NOT NULL,
	"REPLY_ST"	CHAR(1)	DEFAULT 'N'	NOT NULL,
    CONSTRAINT PK_REPLY_NO PRIMARY KEY(REPLY_NO),
    CONSTRAINT FK_REPLY_USER_NO FOREIGN KEY (USER_NO) REFERENCES USER_INFO (USER_NO) ON DELETE CASCADE,
    CONSTRAINT FK_REPLY_TYPE_NO FOREIGN KEY (REPLY_TYPE_NO) REFERENCES REPLY_TYPE (REPLY_TYPE_NO)
);

COMMENT ON COLUMN "REPLY"."REPLY_NO" IS '댓글 번호(시퀀스)';
COMMENT ON COLUMN "REPLY"."REPLY_TYPE_NO" IS '댓글유형 + 댓글에 대한 글번호';
COMMENT ON COLUMN "REPLY"."USER_NO" IS '유저번호(SEQ_USER_NO)';
COMMENT ON COLUMN "REPLY"."REPLY_TARGET_NO" IS '댓글이 작성된 게시글 번호';
COMMENT ON COLUMN "REPLY"."REPLY_DT" IS '댓글 작성일';
COMMENT ON COLUMN "REPLY"."REPLY_CONTENT" IS '댓글 내용';
COMMENT ON COLUMN "REPLY"."REPLY_ST" IS '댓글 상태';

CREATE SEQUENCE SEQ_REPLY_NO NOCACHE;


-- 21. LIKE_TYPE TABLE
CREATE TABLE "LIKE_TYPE" (
	"LIKE_TYPE_NO"	NUMBER	CONSTRAINT PK_LIKE_TYPE_NO PRIMARY KEY,
	"LIKE_TYPE"	VARCHAR2(24) NOT NULL
);

COMMENT ON COLUMN "LIKE_TYPE"."LIKE_TYPE_NO" IS '좋아요 유형 번호';
COMMENT ON COLUMN "LIKE_TYPE"."LIKE_TYPE" IS '좋아요 유형';


-- 22. LIKE TABLE
CREATE TABLE "LIKE" (
	"USER_NO"	NUMBER	CONSTRAINT FK_LIKE_USER_NO REFERENCES USER_INFO(USER_NO) ON DELETE CASCADE NOT NULL,
	"LIKE_TYPE_NO"	NUMBER	CONSTRAINT FK_LIKE_TYPE_NO REFERENCES LIKE_TYPE(LIKE_TYPE_NO) ON DELETE SET NULL NOT NULL,
	"LIKE_TARGET_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "LIKE"."USER_NO" IS '유저번호(SEQ_USER_NO)';
COMMENT ON COLUMN "LIKE"."LIKE_TYPE_NO" IS '좋아요 유형 번호';
COMMENT ON COLUMN "LIKE"."LIKE_TARGET_NO" IS '좋아요 대상의 번호';


-- 23. REPORT TYPE TABLE

CREATE TABLE "REPORT_TYPE" (
	"REPORT_TYPE_NO" NUMBER CONSTRAINT PK_REPORT_TYPE_NO PRIMARY KEY	NOT NULL,
	"REPORT_TYPE" VARCHAR2(48) NOT NULL
);

COMMENT ON COLUMN "REPORT_TYPE"."REPORT_TYPE_NO" IS '신고유형번호(SEQ_REPORT_TYPE_NO)';
COMMENT ON COLUMN "REPORT_TYPE"."REPORT_TYPE" IS '신고 유형 이름';

-- 24. REPORT VIOLATION TYPE TABLE
CREATE TABLE "REPORT_VIOLATION_TYPE" (
	"VIO_TYPE_NO" NUMBER  CONSTRAINT PK_REPORT_VIO_TYPE_NO PRIMARY KEY NOT NULL,
	"VIO_TYPE" VARCHAR2(48) NOT NULL
);

COMMENT ON COLUMN "REPORT_VIOLATION_TYPE"."VIO_TYPE_NO" IS '위반유형번호(SEQ_VIO_TYPE_NO)';
COMMENT ON COLUMN "REPORT_VIOLATION_TYPE"."VIO_TYPE" IS '위반 유형(성희롱/허위사실)';


-- 25. REPORT TABLE
CREATE TABLE REPORT (
	"REPORT_NO" NUMBER CONSTRAINT PK_REPORT_NO PRIMARY KEY,
	"USER_NO" NUMBER CONSTRAINT FK_REPORT_USER_NO REFERENCES USER_INFO(USER_NO) ON DELETE CASCADE NOT NULL,
	"REPORT_TYPE_NO" NUMBER CONSTRAINT FK_REPORT_REPORT_TYPE_NO REFERENCES REPORT_TYPE(REPORT_TYPE_NO) ON DELETE CASCADE NOT NULL,
	"TARTGET_NO" NUMBER NOT NULL,
	"VIO_TYPE_NO" NUMBER CONSTRAINT FK_REPORT_VIO_TYPE_NO REFERENCES REPORT_VIOLATION_TYPE(VIO_TYPE_NO) ON DELETE CASCADE NOT NULL,
	"REPORT_CONTENT" VARCHAR2(500) 	NOT NULL,
	"REPORT_DT"	DATE DEFAULT SYSDATE NOT NULL,
	"REPORT_ST"	CHAR(1)	DEFAULT 'P'	NOT NULL,

    CONSTRAINT UQ_REPORT_TYPE_NO_TARGET_NO UNIQUE(REPORT_TYPE_NO, TARTGET_NO)
);

ALTER TABLE REPORT
ADD CONSTRAINT CK_REPORT_ST CHECK(REPORT_ST IN ('A', 'C', 'P'));

COMMENT ON COLUMN "REPORT"."REPORT_NO" IS '신고번호(SEQ_REPORT_NO)';
COMMENT ON COLUMN "REPORT"."USER_NO" IS '유저번호(SEQ_USER_NO)';
COMMENT ON COLUMN "REPORT"."REPORT_TYPE_NO" IS '신고유형번호(SEQ_REPORT_TYPE_NO)';
COMMENT ON COLUMN "REPORT"."TARTGET_NO" IS '신고대상 번호';
COMMENT ON COLUMN "REPORT"."VIO_TYPE_NO" IS '위반유형번호(SEQ_VIO_TYPE_NO)';
COMMENT ON COLUMN "REPORT"."REPORT_CONTENT" IS '신고 내용';
COMMENT ON COLUMN "REPORT"."REPORT_DT" IS '신고일';
COMMENT ON COLUMN "REPORT"."REPORT_ST" IS '처리상태';

CREATE SEQUENCE SEQ_REPORT_NO NOCACHE;