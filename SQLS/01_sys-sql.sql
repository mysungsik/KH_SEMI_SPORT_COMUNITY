ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

CREATE USER sports IDENTIFIED BY 1234;
GRANT CONNECT, RESOURCE TO sports;
ALTER USER sports DEFAULT TABLESPACE SYSTEM QUOTA UNLIMITED ON SYSTEM;