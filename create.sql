--1st part - Creation Of Tables

CREATE TABLE COUNTRY (
    NOC CHAR(3),
    Name VARCHAR2(60) NOT NULL,
    CONSTRAINT pk_country PRIMARY KEY (NOC)
); --creates the countries' table

CREATE TABLE EVENT (
    EName VARCHAR2(50),
    Sport VARCHAR2(30) NOT NULL,
    Type VARCHAR2(20) NOT NULL,
    CONSTRAINT pk_event PRIMARY KEY (EName)
); --creates the events' table

CREATE TABLE ATHLETE (
    AthleteID VARCHAR2(6), --link: (https://www.kaggle.com/datasets/heesoo37/120-years-of-olympic-history-athletes-and-results) showcases an approximate 136k IDs
    Name VARCHAR2(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Sex CHAR(1) NOT NULL, --'F'=Female, 'M'=Male
    HasTeam CHAR(3) NOT NULL,
    CONSTRAINT pk_athlete PRIMARY KEY (AthleteID),
    CONSTRAINT fk_athlete_country FOREIGN KEY (HasTeam) REFERENCES COUNTRY (NOC)
); --creates the athletes' table

CREATE TABLE GAMES (
    Year NUMBER(4),
    Period VARCHAR2(6),
    City VARCHAR(40) NOT NULL,
    HostedInCountry CHAR(3) NOT NULL,
    CONSTRAINT pk_games PRIMARY KEY (Year, Period),
    CONSTRAINT fk_games_country FOREIGN KEY (HostedInCountry) REFERENCES COUNTRY (NOC)
); --creates the games' table

CREATE TABLE PARTICIPATION (
    Athlete VARCHAR2(6),
    Year NUMBER(4),
    Period VARCHAR2(6),
    Event VARCHAR2(50),
    Medal VARCHAR2(6) NULL, --is of type-NULL since not every athlete is entitled to a medal
    CONSTRAINT pk_participation PRIMARY KEY (Athlete, Year, Period, Event),
    CONSTRAINT fk_participation_athlete FOREIGN KEY (Athlete) REFERENCES ATHLETE (AthleteID),
    CONSTRAINT fk_participation_games_year FOREIGN KEY (Year, Period) REFERENCES GAMES (Year, Period),
    CONSTRAINT fk_participation_event FOREIGN KEY (Event) REFERENCES EVENT (EName)
); --creates the participations' table
