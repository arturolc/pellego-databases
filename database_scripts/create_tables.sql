USE pellego_database;
/* Speed reading technique table */

/* Speed Reading Technique
MID
PK
Name
Not NULL
Tutorial_Text */
CREATE TABLE LM_Module (
MID int AUTO_INCREMENT,
Name varchar(255) NOT NULL,
Tutorial TEXT(65535) NOT NULL,
PRIMARY KEY (MID)
);

/* Level
LID
FK
SID
PK
Level_Num
Not NULL */
CREATE TABLE LM_Level (
LID int AUTO_INCREMENT,
MID int,
Level varchar(255) NOT NULL,
Primary key (LID),
Foreign Key (MID) References LM_Module(MID)
);

/*Test
TID
PK
LID
FK
Questions
Answers
Content
*/
CREATE TABLE LM_Test (
    TID int AUTO_INCREMENT,
    LID int NOT NULL,
    Questions TEXT(65535),
    Answers TEXT(65535),
    Content TEXT(65535),
    Primary Key(TID, LID),
    Foreign Key (LID) References LM_Level(LID)
);

CREATE TABLE Users (
        UID int AUTO_INCREMENT,
	Name varchar(255) NOT NULL,
	Email varchar(255) NOT NULL,
	Primary Key (UID)
);



Create TABLE Level_Status (
LSID int AUTO_INCREMENT,
UID int NOT NULL,
LID int NOT NULL,
Status char(1),
Primary Key(LSID),
Foreign Key (UID) References Users(UID),
Foreign Key(LID) References LM_Level(LID)
);

Create TABLE Test_Status (
TSID int AUTO_INCREMENT,
UID int NOT NULL,
TID int NOT NULL,
Status int,
Primary Key(TSID),
Foreign Key (UID) References Users(UID),
Foreign Key(TID) References LM_Test(TID)
);

Create TABLE User_Analytics (
  AID int AUTO_INCREMENT,
  UID int NOT NULL,
  WordsReadToDate int,
  Joined Datetime,
  AvgWPM int,
  Primary Key(AID),
  Foreign Key (UID) References Users(UID)
  );


CREATE TABLE Books (
    BID int AUTO_INCREMENT,
    Book_Name varchar(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    Synopsis mediumtext NOT NULL,
    Book_Url varchar(255) NOT NULL,
    Image_Url varchar(255) NOT NULL,
    PRIMARY KEY(BID));

Create TABLE Library (
    UID INT NOT NULL,
    BID INT NOT NULL,
    FOREIGN KEY(UID) REFERENCES Users(UID),
    FOREIGN KEY(BID) REFERENCES Books(BID)
);

