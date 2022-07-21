CREATE DATABASE ABC;

USE ABC;

CREATE TABLE 	MEMBER(
    MEMBER_ID 			VARCHAR(20) PRIMARY KEY,
    MEMBER_PW 			VARCHAR(1000),
	MEMBER_NAME 		VARCHAR(50),
	MEMBER_GENDER 		VARCHAR(10),
	TEL1 				VARCHAR(20),
    TEL2 				VARCHAR(20),
	TEL3 				VARCHAR(20),
	HP1 				VARCHAR(20),
	HP2 				VARCHAR(20),
	HP3 				VARCHAR(20),
	EMAIL				VARCHAR(20),
	REGIDENCE			VARCHAR(30),
	JOIN_DATE 			DATE
);
	
	
	


CREATE TABLE 	T_GOODS(
    GOODS_ID 				INT PRIMARY KEY AUTO_INCREMENT,
    GOODS_TITLE 			VARCHAR(50),
    GOODS_WRITER 			VARCHAR(50),
	GOODS_PRICE 			INT,
	GOODS_PUBLISHER 		VARCHAR(50),
	GOODS_SORT 				VARCHAR(50),
	GOODS_SALES_PRICE 		INT,
	GOODS_POINT 			INT,
	GOODS_PUBLISHED_DATE 	DATE,
	GOODS_TOTAL_PAGE 		INT,
	GOODS_ISBN 				VARCHAR(20),
	GOODS_DELIVERY_PRICE 	INT,
	GOODS_DELIVERY_DATE 	DATE,
	GOODS_STATUS 			VARCHAR(50),
	GOODS_WRITER_INTRO 		VARCHAR(2000),
	GOODS_CONTENTS_ORDER 	VARCHAR(2000),
	GOODS_INTRO 			VARCHAR(2000),
	GOODS_PUBLISHER_COMMENT VARCHAR(2000),
	GOODS_RECOMMENDATION 	VARCHAR(2000),
	GOODS_FILE_NAME			VARCHAR(2000),
	GOODS_CREDATE 			DATE
);


CREATE TABLE T_ORDER(
	ORDER_ID 			INT PRIMARY KEY AUTO_INCREMENT,
    MEMBER_ID 			VARCHAR(50),
    GOODS_ID 			INT,
	
	RECEIVER_NAME 		VARCHAR(50),
	RECEIVER_HP1 		VARCHAR(20),
	RECEIVER_HP2 		VARCHAR(20),
	RECEIVER_HP3 		VARCHAR(20),
	RECEIVER_TEL1 		VARCHAR(20),
	RECEIVER_TEL2 		VARCHAR(20),
	RECEIVER_TEL3 		VARCHAR(20),
	DELIVERY_ADDRESS 	VARCHAR(500),
    DELIVERY_METHOD 	VARCHAR(40),
    DELIVERY_MESSAGE 	VARCHAR(300),
	GIFT_WRAPPING 		VARCHAR(20),
	PAY_METHOD 			VARCHAR(200),
	PAY_ORDERER_HP_NUM 	VARCHAR(50), 
    PAY_ORDER_TIME 		DATE,
	CARD_COM_NAME 		VARCHAR(50),
	CARD_PAY_MONTH 		VARCHAR(20),
    DELIVERY_STATE 		VARCHAR(100)
);