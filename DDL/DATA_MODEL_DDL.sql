CREATE DATABASE DemoDB;

USE DemoDB;


create or replace TABLE VENDOR (
VEN_ID VARCHAR(100) NOT NULL,
VEN_NAME VARCHAR(200) 
);

--SELECT * FROM VENDOR LIMIT 100 ;

create or replace TABLE CATEGORY (
CAT_LVL1_ID VARCHAR(100) NOT NULL,
CAT_LVL1_DESC VARCHAR(100) ,
CAT_REF_TAX1 NUMBER(10,4) NOT NULL,
CAT_REF_TAX2 NUMBER(10,4) NOT NULL,
CAT_LVL2_ID VARCHAR(100) NOT NULL,
CAT_LVL2_DESC VARCHAR(100) ,
CAT_LVL3_ID VARCHAR(100) NOT NULL,
CAT_LVL3_DESC VARCHAR(100) 
);

--SELECT * FROM CATEGORY LIMIT 100 ;

create or replace TABLE CUSTOMER (
	CUS_ID VARCHAR(100) NOT NULL,
	CUS_NAME VARCHAR(100),
	CUS_LASTNAME VARCHAR(100),
	CUS_REGION VARCHAR(100),
	CUS_CITY VARCHAR(100),
	CUS_GEOLAT NUMERIC(12,4),
	CUS_GEOLON NUMERIC(12,4),
	CUS_ADDRESS VARCHAR(100),
	CUS_PHONE VARCHAR(12),
	CUS_EMAIL VARCHAR(100),
	CUS_AGE INT,
	CUS_GEN VARCHAR(1)
)
;

--SELECT * FROM CUSTOMER ORDER BY CAST(CUS_ID AS int) LIMIT 100 ;

create or replace TABLE PRODUCT (
	PRO_ID VARCHAR(100) NOT NULL,
	PRO_NAME VARCHAR(100),
	PRO_EAN VARCHAR(13),
	VEN_ID VARCHAR(100),
	PRO_IMPORTED CHAR(1),
	PRO_LENGTH NUMERIC(10,2),
	PRO_WIDTH NUMERIC(10,2),
	PRO_HEIGTH NUMERIC(10,2),
	PRO_UNITOFMESURE VARCHAR(3),
	PRO_PRIVATEBRAND CHAR(1),
	PRO_PRICE NUMERIC(12,2),
	PRO_COST NUMERIC(12,2),
	POR_TAX1RATE NUMERIC(5,2),
	POR_TAX2RATE NUMERIC(5,2),
	CAT_ID VARCHAR(100)
);

--SELECT * FROM PRODUCT LIMIT 100;

create or replace TABLE STORE (
	STO_ID VARCHAR(100) NOT NULL,
	ORG_ID  VARCHAR(100) ,
	STO_NAME VARCHAR(100),
	CIT_ID VARCHAR(100),
	STO_FLOOR NUMERIC(10,2),
	STO_OPENDATE DATE,
	STO_CLOSEDATE DATE,
	STO_SSS CHAR(1),
	STO_POSQTY INT
	);

--SELECT * FROM STORE LIMIT 100;

create or replace TABLE SALE_HEADER (
	SAH_ID VARCHAR(100) NOT NULL,
	CUS_ID VARCHAR(100) NOT NULL,
	SAH_TIMESTAMP TIMESTAMP  NOT NULL,
	STO_ID VARCHAR(100) NOT NULL,
	SAH_POSNUM NUMBER(38,0) NOT NULL,
	SAH_TRXNUM NUMBER(38,0) NOT NULL,
	SAH_TOTPRODQTY NUMBER(10,2),
	SAH_DOCTYPE NUMBER(3,0),
	SAH_PAYMENTTYPE NUMBER(3,0),
	SAH_TOTPRODAMT NUMBER(15,2),
	SAH_TOTTAX1AMT NUMBER(15,2),
	SAH_TOTTAX2AMT NUMBER(15,2)
);

--SELECT * FROM SALE_HEADER LIMIT 100;

create or replace TABLE SALE_DETAIL (
	SAH_ID VARCHAR(100) NOT NULL,
	SAH_TIMESTAMP TIMESTAMP  NOT NULL,
	STO_ID VARCHAR(100) NOT NULL,
	SAH_POSNUM NUMBER(38,0) NOT NULL,
	SAH_TRXNUM NUMBER(38,0) NOT NULL,
	PRO_ID VARCHAR(100) NOT NULL,
	SAD_PRODQTY NUMBER(10,2),
	SAD_PRODAMT NUMBER(12,2),
	SAD_TAX1AMT NUMBER(12,2),
	SAD_TAX2AMT NUMBER(12,2)
);
--SELECT * FROM SALE_DETAIL LIMIT 100;