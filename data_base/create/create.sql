USE LAB3

IF (OBJECT_ID('PERSON_TEAM_FK') IS NOT NULL)
BEGIN 
	ALTER TABLE PERSON
	DROP CONSTRAINT "PERSON_TEAM_FK"
END

IF (OBJECT_ID('PERSON_GENDER_FK') IS NOT NULL)
BEGIN 
	ALTER TABLE PERSON
	DROP CONSTRAINT "PERSON_GENDER_FK"
END

IF (OBJECT_ID('TEAM_OBJECT_FK') IS NOT NULL)
BEGIN 
	ALTER TABLE TEAM
	DROP CONSTRAINT "TEAM_OBJECT_FK"
END

IF (OBJECT_ID('GAME_FK_1') IS NOT NULL)
BEGIN 
	ALTER TABLE ABOUT_GAME
	DROP CONSTRAINT "GAME_FK_1"
END

IF (OBJECT_ID('TEAM_FK_1') IS NOT NULL)
BEGIN 
	ALTER TABLE ABOUT_GAME
	DROP CONSTRAINT "TEAM_FK_1"
END

IF (OBJECT_ID('CITY_FK') IS NOT NULL)
BEGIN 
	ALTER TABLE [LOCATION]
	DROP CONSTRAINT "CITY_FK"
END

IF (OBJECT_ID('GAME_FK_2') IS NOT NULL)
BEGIN 
	ALTER TABLE TIME_CODE
	DROP CONSTRAINT "GAME_FK_2"
END

IF (OBJECT_ID('TEAM_FK_2') IS NOT NULL)
BEGIN 
	ALTER TABLE TIME_CODE
	DROP CONSTRAINT "TEAM_FK_2"
END

IF (OBJECT_ID('TEAM_FK_3') IS NOT NULL)
BEGIN 
	ALTER TABLE VIDEO_SELECTION
	DROP CONSTRAINT "TEAM_FK_3"
END

IF (OBJECT_ID('VIDEO_FK') IS NOT NULL)
BEGIN 
	ALTER TABLE VIDEO_SELECTION
	DROP CONSTRAINT "VIDEO_FK"
END

IF (OBJECT_ID('LOCATION_FK') IS NOT NULL)
BEGIN 
	ALTER TABLE GAME
	DROP CONSTRAINT "LOCATION_FK"
END

IF (OBJECT_ID('STAGE_FK') IS NOT NULL)
BEGIN 
	ALTER TABLE GAME
	DROP CONSTRAINT "STAGE_FK"
END

IF (OBJECT_ID('VIDEO_FK_2') IS NOT NULL)
BEGIN 
	ALTER TABLE GAME
	DROP CONSTRAINT "VIDEO_FK_2"
END

IF (OBJECT_ID('GAMETYPE_FK') IS NOT NULL)
BEGIN 
	ALTER TABLE GAME
	DROP CONSTRAINT "GAMETYPE_FK"
END

IF OBJECT_ID('DBO.ABOUT_GAME') IS NOT NULL DROP TABLE ABOUT_GAME   
IF OBJECT_ID('DBO.CITY') IS NOT NULL DROP TABLE CITY
IF OBJECT_ID('DBO.GAME') IS NOT NULL DROP TABLE GAME
IF OBJECT_ID('DBO.GAMETYPE') IS NOT NULL DROP TABLE GAMETYPE
IF OBJECT_ID('DBO.GENDER') IS NOT NULL DROP TABLE GENDER
IF OBJECT_ID('DBO.LOCATION') IS NOT NULL DROP TABLE [LOCATION]
IF OBJECT_ID('DBO.OBJECT') IS NOT NULL DROP TABLE [OBJECT]
IF OBJECT_ID('DBO.PERSON') IS NOT NULL DROP TABLE PERSON
IF OBJECT_ID('DBO.STAGE') IS NOT NULL DROP TABLE STAGE
IF OBJECT_ID('DBO.TEAM') IS NOT NULL DROP TABLE TEAM
IF OBJECT_ID('DBO.TIME_CODE') IS NOT NULL DROP TABLE TIME_CODE
IF OBJECT_ID('DBO.VIDEO_SELECTION') IS NOT NULL DROP TABLE VIDEO_SELECTION
IF OBJECT_ID('DBO.VIDEOS') IS NOT NULL DROP TABLE VIDEOS

CREATE TABLE [OBJECT](
	[OBJECT_ID] INT IDENTITY(1, 1) NOT NULL
		PRIMARY KEY,
	[NAME] NVARCHAR(60) NOT NULL,
)

CREATE TABLE GENDER(
	GENDER_ID INT IDENTITY(1, 1) NOT NULL
		PRIMARY KEY,
	[NAME] NVARCHAR(3) NOT NULL,
)

CREATE TABLE GAMETYPE(
	GAMETYPE_ID INT IDENTITY(1, 1) NOT NULL
		PRIMARY KEY,
	[NAME] NVARCHAR(30) NOT NULL,
)

CREATE TABLE STAGE(
	STAGE_ID INT IDENTITY(1, 1) NOT NULL
		PRIMARY KEY,
	[NAME] NVARCHAR(50) NOT NULL,
)

CREATE TABLE CITY(
	CITY_ID INT IDENTITY(1, 1) NOT NULL
		PRIMARY KEY,
	[NAME] NVARCHAR(30) NOT NULL,
)

CREATE TABLE TEAM(
	TEAM_ID INT IDENTITY(1, 1) NOT NULL
		PRIMARY KEY,
	[NAME] NVARCHAR(50) NOT NULL,
	[OBJECT_ID] INT NOT NULL,
	REPRESENTATIVE NVARCHAR(60) NOT NULL,
)

CREATE TABLE ABOUT_GAME(
	GAME_ID INT NOT NULL,
	TEAM_ID INT NOT NULL,
	PLACE INT,
	PRIMARY KEY(GAME_ID, TEAM_ID),
)

CREATE TABLE [LOCATION](
	LOCATION_ID INT IDENTITY(1, 1)  NOT NULL
		PRIMARY KEY,
	[NAME] NVARCHAR(100) NOT NULL,
	CITY_ID INT NOT NULL,
	ADDRES NVARCHAR(100) NOT NULL,
)

CREATE TABLE GAME(
	GAME_ID INT IDENTITY(1, 1) NOT NULL
		PRIMARY KEY,
	LOCATION_ID INT NOT NULL,
	STAGE_ID INT NOT NULL,
	GAMETYPE_ID INT NULL,
	[DATE] DATE NOT NULL,
	LINK_FOR_BUY NVARCHAR(120),
	VIDEO_ID INT,
)

CREATE TABLE VIDEOS(
	VIDEO_ID INT IDENTITY(1, 1) NOT NULL
		PRIMARY KEY,
	LIINK_FOR_VIDEO NVARCHAR(100) NOT NULL,
	[NAME] NVARCHAR(60) NOT NULL,
)

CREATE TABLE VIDEO_SELECTION(
	TEAM_ID INT NOT NULL,
	VIDEO_ID INT NOT NULL,
	PRIMARY KEY(TEAM_ID, VIDEO_ID),
)

CREATE TABLE TIME_CODE(
	TIME_CODE_ID INT IDENTITY(1, 1) NOT NULL
		PRIMARY KEY,
	TIME_START TIME(0) NOT NULL,
	TEAM_ID INT NOT NULL,
	GAME_ID INT NOT NULL,
)

CREATE TABLE PERSON(
	PERSON_ID INT IDENTITY(1, 1) NOT NULL
		PRIMARY KEY,
	TEAM_ID INT NOT NULL,
	[NAME] NVARCHAR(40) NOT NULL,
	SURNAME NVARCHAR(40) NOT NULL,
	GENDER_ID INT NOT NULL,
	DATE_BIRTH DATE NOT NULL,
)

ALTER TABLE PERSON ADD
CONSTRAINT "PERSON_TEAM_FK"
FOREIGN KEY (TEAM_ID)
REFERENCES TEAM(TEAM_ID),
CONSTRAINT "PERSON_GENDER_FK" 
FOREIGN KEY(GENDER_ID)
REFERENCES GENDER(GENDER_ID)

ALTER TABLE TEAM ADD
CONSTRAINT "TEAM_OBJECT_FK"
FOREIGN KEY ([OBJECT_ID])
REFERENCES [OBJECT]([OBJECT_ID])

ALTER TABLE ABOUT_GAME ADD
CONSTRAINT "GAME_FK_1"
FOREIGN KEY(GAME_ID)
REFERENCES GAME(GAME_ID),
CONSTRAINT "TEAM_FK_1"
FOREIGN KEY(TEAM_ID)
REFERENCES TEAM(TEAM_ID)

ALTER TABLE [LOCATION] ADD
CONSTRAINT "CITY_FK"
FOREIGN KEY (CITY_ID)
REFERENCES CITY(CITY_ID)

ALTER TABLE TIME_CODE ADD
CONSTRAINT "GAME_FK_2"
FOREIGN KEY(GAME_ID)
REFERENCES GAME(GAME_ID),
CONSTRAINT "TEAM_FK_2"
FOREIGN KEY(TEAM_ID)
REFERENCES TEAM(TEAM_ID)

ALTER TABLE VIDEO_SELECTION ADD
CONSTRAINT "TEAM_FK_3"
FOREIGN KEY(TEAM_ID)
REFERENCES TEAM(TEAM_ID),
CONSTRAINT "VIDEO_FK"
FOREIGN KEY(VIDEO_ID)
REFERENCES VIDEOS(VIDEO_ID)

ALTER TABLE GAME ADD
CONSTRAINT "LOCATION_FK"
FOREIGN KEY(LOCATION_ID)
REFERENCES [LOCATION](LOCATION_ID),
CONSTRAINT "STAGE_FK"
FOREIGN KEY(STAGE_ID)
REFERENCES STAGE(STAGE_ID),
CONSTRAINT "VIDEO_FK_2"
FOREIGN KEY(VIDEO_ID)
REFERENCES VIDEOS(VIDEO_ID),
CONSTRAINT "GAMETYPE_FK"
FOREIGN KEY (GAMETYPE_ID)
REFERENCES GAMETYPE(GAMETYPE_ID)

ALTER TABLE PERSON ADD
CONSTRAINT "CHECK_AGE"
CHECK(YEAR(DATE_BIRTH) BETWEEN 1940 AND 2001)


--184












