DROP TABLE COMMENT;
DROP TABLE CLEAN_BOARD;
DROP TABLE SCHEDULE;

CREATE TABLE CLEAN_BOARD (
	BOARD_ID INT(100) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	TITLE VARCHAR(100) NULL,
	CONTENT VARCHAR(1000) NULL,
	NAME VARCHAR(20) NULL,
	WRITE_DATE DATE,
	VIEWS INT(100) NULL
)ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO CLEAN_BOARD (TITLE, CONTENT, NAME, WRITE_DATE, VIEWS) VALUE('TITLE', 'CONTENT', 'NAME', NOW(), 0);

CREATE TABLE COMMENT (
	COMMENT_ID INT(100) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	CONTENT VARCHAR(1000) NULL,
	NAME VARCHAR(20) NULL,
	WRITE_DATE DATE,
	PARENT INT(100) NULL,
	INDENT INT(100) DEFAULT 0,
	STEP INT(10) DEFAULT 0,
	BOARD_ID INT(100) UNSIGNED NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=UTF8;

ALTER TABLE COMMENT ADD FOREIGN KEY (BORAD_ID) REFERENCES CLEAN_BOARD(BOARD_ID) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE SCHEDULE(
	SCHEDULE_ID INT(100) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	TITLE VARCHAR(21000) NULL
)ENGINE=InnoDB DEFAULT CHARSET=UTF8;

COMMIT;