CREATE DATABASE ABC;

USE ABC;

CREATE TABLE BOARD(
NUM  		INT PRIMARY KEY,
WRITER 		VARCHAR(30),
EMAIL		VARCHAR(30),
SUBJECT		VARCHAR(30),
PASSWORD	VARCHAR(30),
REGDATE 	DATE,
RECOUNT		INT,
CONTENT		VARCHAR(20)
);

SELECT
		*
FROM
		BOARD;