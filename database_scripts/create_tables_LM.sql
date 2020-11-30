USE pellego_database;
/* Speed reading technique table */

/* Speed Reading Technique
MID
PK
Name
Not NULL
Tutorial_Text */
CREATE TABLE LM_Module (
MID int,
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
LID int NOT NULL,
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
    TID int NOT NULL,
    LID int NOT NULL,
    Questions TEXT(65535),
    Answers TEXT(65535),
    Content TEXT(65535),
    Primary Key(TID, LID),
    Foreign Key (LID) References LM_Level(LID)
);










