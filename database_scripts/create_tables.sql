use pellego_database;

CREATE TABLE Users (
        UID int AUTO_INCREMENT,
        Name varchar(255) NOT NULL,
        Email varchar(255) NOT NULL UNIQUE,
        Primary Key (UID)
);

CREATE TABLE LM_Module (
MID int AUTO_INCREMENT,
Name varchar(255) NOT NULL,
Subheader varchar(255) NOT NULL,
Description TEXT(65535),
Icon varchar(255) NOT NULL,
PRIMARY KEY (MID)
);

CREATE TABLE LM_Intro(
IID int AUTO_INCREMENT,
MID int,
Header TEXT(65535),
Content TEXT(65535),
Primary Key(IID),
Foreign Key (MID) References LM_Module(MID)
);

CREATE TABLE LM_Submodule (
SMID int AUTO_INCREMENT,
MID int,
Name varchar(255) NOT NULL,
Subheader varchar(255) NOT NULL,
Text TEXT(65535),
Primary Key (SMID),
Foreign Key (MID) References LM_Module(MID)
);

CREATE TABLE Questions
(
QUID int AUTO_INCREMENT,
SMID int,
Question TEXT(65535),
Primary Key(QUID),
Foreign Key (SMID) References LM_Submodule(SMID)
);

CREATE TABLE Answers
(
AID int AUTO_INCREMENT,
SMID int,
QUID int,
Answer Text(65535),
Correct Boolean,
Primary Key(AID),
Foreign Key (QUID) References Questions(QUID)
);

CREATE TABLE Scores
(
SID int AUTO_INCREMENT,
Quiz int,
User int,
Date_Taken DateTime,
Primary Key (SID),
Foreign Key (Quiz) References LM_Quiz(QID),
Foreign Key (User) References Users(UID)
);

CREATE TABLE Intro_Status (
ISID int AUTO_INCREMENT,
UID int,
Intro int NOT NULL,
Completed Boolean,
Primary Key (ISID),
Foreign Key(UID) References Users (UID),
Foreign Key (Intro) References LM_Intro (IID)
);

CREATE TABLE User_Word_Values (
  uwID int NOT NULL AUTO_INCREMENT,
  UID int NOT NULL,
  WordsRead int NOT NULL,
  WPM int NOT NULL,
  Recorded Date,
  Primary Key (uwID),
  Foreign Key (UID) References Users(UID)
);


CREATE TABLE Books (
    BID int AUTO_INCREMENT,
    Book_Name varchar(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    Synopsis mediumtext NOT NULL,
    Book_Url varchar(255) NOT NULL,
    Image_Url varchar(255) NOT NULL,
    Hash_String varchar(32) NOT NULL,
    PRIMARY KEY(BID));

Create TABLE Library (
    LID INT AUTO_INCREMENT,
    UID INT NOT NULL,
    BID INT NOT NULL,
    PRIMARY KEY(LID),
    FOREIGN KEY(UID) REFERENCES Users(UID),
    FOREIGN KEY(BID) REFERENCES Books(BID)
);

CREATE TABLE ProgressCompleted (
  UID INT NOT NULL,
  MID INT NOT NULL,
  SMID INT NOT NULL,
  PRIMARY KEY (UID, MID, SMID),
  FOREIGN KEY (UID) REFERENCES Users(UID),
  FOREIGN KEY (MID) REFERENCES LM_Module(MID),
  FOREIGN KEY (SMID) REFERENCES LM_Submodule(SMID)
);