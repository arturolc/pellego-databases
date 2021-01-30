Learning Modules Schema

Speed Reading Technique \
SID: Primary Key \
Name: NOT NULL 

Tutorial_Text  
Level \
LID: Primary Key \
SID: Foriegn Key \
Level_Num: NOT NULL 

Test \
TID: Primary Key \
LID: Foreign Key \
Questions \
Answers \
Conent 


(Note: Hash refers to the hashed email that the application will send to the database)      
User \
UID: Primary Key \
Hash: NOT NULL \
Name 

(Note: The Status column for Level_Status indicates the completion status of the user. 
There are three states: Not Started, In Progress, Completed. 
To save space and reduce user error (typos) the Status will be indicated by a single capital letter as follows \
N: Not Started \
P: In Progress \
C: Completed)

Level_Status  \
LID: Primary Key \
UID: Foreign Key \
TID: Foreign Key \
Status 

\
(Note: The Status column indicates the current status of the test. A value of -1 means the test has not been taken) 

Test_Status \
TSID: Primary Key \
UID: Foreign Key \
TID: Foreign Key \
Status 