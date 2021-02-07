use pellego_database;

/*Add users*/
INSERT INTO Users (Name, Email) VALUES("Joanna Lowry", "Joanna.Lowry@gmail.com");
INSERT INTO Users (Name, Email) VALUES("Arturo Lara", "Arturo.Lara@gmail.com");
INSERT INTO Users (Name, Email) VALUES("Chris Bordoy", "Chris.Bordoy@gmail.com");
INSERT INTO Users (Name, Email) VALUES("Eli Hebdon", "Eli.Hebdon@gmail.com");
INSERT INTO Users (Name, Email) VALUES("Taylor Swift", "Taylor.Swift@gmail.com");


/*Add Learning Modules */
INSERT INTO LM_Module (Name, Tutorial) VALUES('RSVP', 'This method of reading is known as “Rapid Serial Visual Presentation” or RSVP for short.
               Studies have shown the habit of internally “sounding out” (sub    -vocalising) words is a limiting
               factor which prevents faster reading speeds from being obtaine    d. RSVP eliminates the “sounding out”
               of words as individual words are not displayed long enough for     sub-vocalisation to occur.');
INSERT INTO LM_Module (Name, Tutorial) VALUES('Clump Reading', 'Lorem ipsu    m dolor sit amet, consectetur adipiscing elit. Nulla aliquam sit amet null    a sit amet efficitur. Pellentesque feugiat pharetra massa, quis malesuada     felis molestie id. Ut id pulvinar felis. Nulla nec condimentum mauris. Nul    la sed mi vulputate, dignissim lorem id, iaculis ex. Integer in nisl sed l    acus ultrices tincidunt.');
INSERT INTO LM_Module (Name, Tutorial) VALUES('Reducing Subvocalization',     'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam si    t amet nulla sit amet efficitur. Pellentesque feugiat pharetra massa, quis     malesuada felis molestie id. Ut id pulvinar felis. Nulla nec condimentum     mauris. Nulla sed mi vulputate, dignissim lorem id, iaculis ex. Integer in     nisl sed lacus ultrices tincidunt.');
INSERT INTO LM_Module (Name, Tutorial) VALUES('Meta Guiding', 'Lorem ipsum     dolor sit amet, consectetur adipiscing elit. Nulla aliquam sit amet nulla     sit amet efficitur. Pellentesque feugiat pharetra massa, quis malesuada f    elis molestie id. Ut id pulvinar felis. Nulla nec condimentum mauris. Null    a sed mi vulputate, dignissim lorem id, iaculis ex. Integer in nisl sed la    cus ultrices tincidunt.');
INSERT INTO LM_Module (Name, Tutorial) VALUES('Pre-Reading', 'Lorem ipsum     dolor sit amet, consectetur adipiscing elit. Nulla aliquam sit amet nulla     sit amet efficitur. Pellentesque feugiat pharetra massa, quis malesuada fe    lis molestie id. Ut id pulvinar felis. Nulla nec condimentum mauris. Nulla     sed mi vulputate, dignissim lorem id, iaculis ex. Integer in nisl sed lac    us ultrices tincidunt.');

/*Add Levels to Learning Modules */
INSERT INTO LM_Level (Level, MID) VALUES('Beginner', (select MID from LM_Module where Name='Clump Reading'));
INSERT INTO LM_Level (Level, MID) VALUES('Intermediate', (select MID from LM_Module where Name='Clump Reading'));
INSERT INTO LM_Level (Level, MID) VALUES('Advanced', (select MID from LM_Module where Name='Clump Reading'));

INSERT INTO LM_Level (Level, MID) VALUES('Beginner', (select MID from LM_Module where Name='Pre-Reading'));
INSERT INTO LM_Level (Level, MID) VALUES('Intermediate', (select MID from LM_Module where Name='Pre-Reading'));
INSERT INTO LM_Level (Level, MID) VALUES('Advanced', (select MID from LM_Module where Name='Pre-Reading'));

INSERT INTO LM_Level (Level, MID) VALUES('Beginner', (select MID from LM_Module where Name='Meta Guiding'));
INSERT INTO LM_Level (Level, MID) VALUES('Intermediate', (select MID from LM_Module where Name='Meta Guiding'));
INSERT INTO LM_Level (Level, MID) VALUES('Advanced', (select MID from LM_Module where Name='Meta Guiding'));


INSERT INTO LM_Level (Level, MID) VALUES('Beginner', (select MID from LM_Module where Name='RSVP'));
INSERT INTO LM_Level (Level, MID) VALUES('Intermediate', (select MID from LM_Module where Name='RSVP'));
INSERT INTO LM_Level (Level, MID) VALUES('Advanced', (select MID from LM_Module where Name='RSVP'));

INSERT INTO LM_Level (Level, MID) VALUES('Beginner', (select MID from LM_Module where Name='Reducing Subvocalization'));
INSERT INTO LM_Level (Level, MID) VALUES('Intermediate', (select MID from LM_Module where Name='Reducing Subvocalization'));
INSERT INTO LM_Level (Level, MID) VALUES('Advanced', (select MID from LM_Module where Name='Reducing Subvocalization'));



/*Add Tests*/
INSERT INTO LM_Test (LID, Questions, Answers, Content) VALUES((select LID from LM_Module natural join LM_Level where Name='RSVP' and Level='Beginner'),
"RSVP Beginner", "TBD",
"I just returned from the greatest summer vacation! It was so fantastic, I never wanted it to end. I spent eight days in Paris, France. My best friends, Henry and Steve, went with me. We had a beautiful hotel room in the Latin Quarter, and it wasnt even expensive. We had a balcony with a wonderful view.
    We visited many famous tourist places. My favorite was the Louvre, a well-known museum. I was always interested in art, so that was a special treat for me. The museum is so huge, you could spend weeks there. Henry got tired walking around the museum and said “Enough! I need to take a break and rest.
    We took lots of breaks and sat in cafes along the river Seine. The French food we ate was delicious. The wines were tasty, too. Steve’s favorite part of the vacation was the hotel breakfast. He said he would be happy if he could eat croissants like those forever. We had so much fun that we’re already talking about our next vacation!");


INSERT INTO LM_Test (LID, Questions, Answers, Content) VALUES((select LID from LM_Module natural join LM_Level where Name='RSVP' and Level='Intermediate'),
"RSVP Intermediate", "TBD",
"Keith recently came back from a trip to Chicago, Illinois. This midwestern metropolis is found along the shore of Lake Michigan. During his visit, Keith spent a lot of time exploring the city to visit important landmarks and monuments.
Keith loves baseball, and he made sure to take a visit to Wrigley Field. Not only did he take a tour of this spectacular stadium, but he also got to watch a Chicago Cubs game. In the stadium, Keith and the other fans cheered for the Cubs. Keith was happy that the Cubs won with a score of 5-4.
Chicago has many historic places to visit. Keith found the Chicago Water Tower impressive as it is one of the few remaining landmarks to have survived the Great Chicago Fire of 1871. Keith also took a walk through Jackson Park, a great outdoor space that hosted the World’s Fair of 1892. The park is great for a leisurely stroll, and it still features some of the original architecture and replicas of monuments that were.
During the last part of his visit, Keith managed to climb the stairs inside of the Willis Tower, a 110-story skyscraper. Despite the challenge of climbing the many flights of stairs, Keith felt that reaching the top was worth the effort. From the rooftop, Keith received a gorgeous view of the city’s skyline with Lake Michigan in the background.");

INSERT INTO LM_Test (LID, Questions, Answers, Content) VALUES((select LID from LM_Module natural join LM_Level where Name='RSVP' and Level='Advanced'),
"RSVP Advanced", "TBD",
"It goes without saying that humans (mammals identifiable as those that stand upright and are comparatively advanced and capable of detailed thought) have pretty remarkable bodies, given all that theyve accomplished. (Furthermore, an especially intelligent human brain produced this text!) To be sure, humans have overcome predators, disease, and all sorts of other obstacles over thousands of years.
To fully understand and appreciate these accomplishments, lets take at some of the most well-known parts of the human body!
The head, or the spherical body part that contains the brain and rests at the top of the human body, has quite a few individual organs and body parts on it. (It should quickly be mentioned that hair occupies the space on top of the head, and the ears, the organs responsible for hearing, are located on either side of the head.) From top to bottom, the eyebrows, or horizontal strips of hair that can be found above the eye, are the first components of the head. The eyes are below them, and are round, orb-like organs that allow humans to see.
The eyes make way for the nose, or an external (sticking-out) organ that plays an important part in the breathing and bacteria-elimination processes. Below that is the mouth, or a wide, cavernous organ that chews food, removes bacteria, helps with breathing, and more. The mouth contains teeth, or small, white-colored, pointed body parts used to chew food, and the tongue, or a red-colored, boneless organ used to chew food and speak.
The neck is the long body part that connects the head to the chest (the muscular body part that protects the heart and lungs), and the stomach, or the part of the body that contains food and liquid-processing organs, comes below that.
The legs are the long, muscular body parts that allow humans to move from one spot to another and perform a variety of actions. Each leg contains a thigh (a thick, especially muscular body part used to perform strenuous motions; the upper part of the leg) and a calf (thinner, more flexible body part that absorbs the shock associated with movement; the lower part of the leg). Feet can be found at the bottom of legs, and each foot is comprised of five toes, or small appendages that help balance.
Arms are long, powerful body parts that are located on either side of chest, below the shoulders;arms are comprised of biceps (the thicker, more powerful upper portion), and forearms (the thinner, more flexible lower portion). Hands, or small, gripping body parts used for a tremendous number of actions, are at the end of arms. Each hand contains five fingers, or small appendages used to grip objects.
The aforementioned shoulders are rounded body parts that aid arms' flexibility. One's back is found on the opposite side of the stomach, and is a flat section of the body that contains important muscles that're intended to protect the lungs and other internal organs, in addition to helping humans perform certain motions and actions.");


INSERT INTO LM_Test (LID, Questions, Answers, Content) VALUES((select LID from LM_Module natural join LM_Level where Name='Meta Guiding' and Level='Beginner'),
"Metaguiding beginner", "TBD",
"I just returned from the greatest summer vacation! It was so fantastic, I never wanted it to end. I spent eight days in Paris, France. My best friends, Henry and Steve, went with me. We had a beautiful hotel room in the Latin Quarter, and it wasnt even expensive. We had a balcony with a wonderful view.
    We visited many famous tourist places. My favorite was the Louvre, a well-known museum. I was always interested in art, so that was a special treat for me. The museum is so huge, you could spend weeks there. Henry got tired walking around the museum and said “Enough! I need to take a break and rest.
    We took lots of breaks and sat in cafes along the river Seine. The French food we ate was delicious. The wines were tasty, too. Steve’s favorite part of the vacation was the hotel breakfast. He said he would be happy if he could eat croissants like those forever. We had so much fun that we’re already talking about our next vacation!");
    

INSERT INTO LM_Test (LID, Questions, Answers, Content) VALUES((select LID from LM_Module natural join LM_Level where Name='Meta Guiding' and Level='Intermediate'),
"metaguiding intermediate", "TBD",
"Keith recently came back from a trip to Chicago, Illinois. This midwestern metropolis is found along the shore of Lake Michigan. During his visit, Keith spent a lot of time exploring the city to visit important landmarks and monuments.
Keith loves baseball, and he made sure to take a visit to Wrigley Field. Not only did he take a tour of this spectacular stadium, but he also got to watch a Chicago Cubs game. In the stadium, Keith and the other fans cheered for the Cubs. Keith was happy that the Cubs won with a score of 5-4.
Chicago has many historic places to visit. Keith found the Chicago Water Tower impressive as it is one of the few remaining landmarks to have survived the Great Chicago Fire of 1871. Keith also took a walk through Jackson Park, a great outdoor space that hosted the World’s Fair of 1892. The park is great for a leisurely stroll, and it still features some of the original architecture and replicas of monuments that were.
During the last part of his visit, Keith managed to climb the stairs inside of the Willis Tower, a 110-story skyscraper. Despite the challenge of climbing the many flights of stairs, Keith felt that reaching the top was worth the effort. From the rooftop, Keith received a gorgeous view of the city’s skyline with Lake Michigan in the background.");

INSERT INTO LM_Test (LID, Questions, Answers, Content) VALUES((select LID from LM_Module natural join LM_Level where Name='Meta Guiding' and Level='Advanced'),
"metaguiding advanced", "TBD",
"It goes without saying that humans (mammals identifiable as those that stand upright and are comparatively advanced and capable of detailed thought) have pretty remarkable bodies, given all that theyve accomplished. (Furthermore, an especially intelligent human brain produced this text!) To be sure, humans have overcome predators, disease, and all sorts of other obstacles over thousands of years.
To fully understand and appreciate these accomplishments, lets take at some of the most well-known parts of the human body!
The head, or the spherical body part that contains the brain and rests at the top of the human body, has quite a few individual organs and body parts on it. (It should quickly be mentioned that hair occupies the space on top of the head, and the ears, the organs responsible for hearing, are located on either side of the head.) From top to bottom, the eyebrows, or horizontal strips of hair that can be found above the eye, are the first components of the head. The eyes are below them, and are round, orb-like organs that allow humans to see.
The eyes make way for the nose, or an external (sticking-out) organ that plays an important part in the breathing and bacteria-elimination processes. Below that is the mouth, or a wide, cavernous organ that chews food, removes bacteria, helps with breathing, and more. The mouth contains teeth, or small, white-colored, pointed body parts used to chew food, and the tongue, or a red-colored, boneless organ used to chew food and speak.
The neck is the long body part that connects the head to the chest (the muscular body part that protects the heart and lungs), and the stomach, or the part of the body that contains food and liquid-processing organs, comes below that.
The legs are the long, muscular body parts that allow humans to move from one spot to another and perform a variety of actions. Each leg contains a thigh (a thick, especially muscular body part used to perform strenuous motions; the upper part of the leg) and a calf (thinner, more flexible body part that absorbs the shock associated with movement; the lower part of the leg). Feet can be found at the bottom of legs, and each foot is comprised of five toes, or small appendages that help balance.
Arms are long, powerful body parts that are located on either side of chest, below the shoulders;arms are comprised of biceps (the thicker, more powerful upper portion), and forearms (the thinner, more flexible lower portion). Hands, or small, gripping body parts used for a tremendous number of actions, are at the end of arms. Each hand contains five fingers, or small appendages used to grip objects.
The aforementioned shoulders are rounded body parts that aid arms' flexibility. One's back is found on the opposite side of the stomach, and is a flat section of the body that contains important muscles that're intended to protect the lungs and other internal organs, in addition to helping humans perform certain motions and actions.");

INSERT INTO LM_Test (LID, Questions, Answers, Content) VALUES((select LID from LM_Module natural join LM_Level where Name='Clump Reading' and Level='Beginner'),
"clump reading beginner", "TBD", "TBD");

INSERT INTO LM_Test (LID, Questions, Answers, Content) VALUES((select LID from LM_Module natural join LM_Level where Name='Clump Reading' and Level='Intermediate'),
"clump reading intermediate", "TBD", "TBD");

INSERT INTO LM_Test (LID, Questions, Answers, Content) VALUES((select LID from LM_Module natural join LM_Level where Name='Clump Reading' and Level='Advanced'),
"clump reading advanced", "TBD", "TBD");

INSERT INTO LM_Test (LID, Questions, Answers, Content) VALUES((select LID from LM_Module natural join LM_Level where Name='Pre-Reading' and Level='Beginner'),
"Pre-Reading beginner", "TBD", "TBD");

INSERT INTO LM_Test (LID, Questions, Answers, Content) VALUES((select LID from LM_Module natural join LM_Level where Name='Pre-Reading' and Level='Intermediate'),
"Pre-Reading intermediate", "TBD", "TBD");

INSERT INTO LM_Test (LID, Questions, Answers, Content) VALUES((select LID from LM_Module natural join LM_Level where Name='Pre-Reading' and Level='Advanced'),
"Pre-Reading advanced", "TBD", "TBD");


/*Individual Test and Level Status*/

/*Joanna Lowry*/
INSERT INTO Level_Status (UID, LID, Status) VALUES (
(Select UID from Users where Name='Joanna Lowry'),
(Select LID from LM_Level natural join LM_Module where Name='Clump Reading' AND Level='Beginner'),
'C');


INSERT INTO Test_Status (UID, TID, Status) VALUES (
(Select UID from Users where Name='Joanna Lowry'),
(select TID from LM_Test natural join (select LID from LM_Level natural join LM_Module where Name="Clump Reading" and Level='Beginner') as t),
-1 );

INSERT INTO Level_Status (UID, LID, Status) VALUES (
(Select UID from Users where Name='Joanna Lowry'),
(Select LID from LM_Level natural join LM_Module where Name='RSVP' AND Level='Beginner'),
'P');

INSERT INTO Test_Status (UID, TID, Status) VALUES (
(Select UID from Users where Name='Joanna Lowry'),
(select TID from LM_Test natural join (select LID from LM_Level natural join LM_Module where Name="RSVP" and Level='Beginner') as t),
-1 );

/*Arturo Lara*/
INSERT INTO Level_Status (UID, LID, Status) VALUES (
(Select UID from Users where Name='Arturo Lara'),
(Select LID from LM_Level natural join LM_Module where Name='RSVP' AND Level='Beginner'),
'C');

INSERT INTO Test_Status (UID, TID, Status) VALUES (
(Select UID from Users where Name='Arturo Lara'),
(select TID from LM_Test natural join (select LID from LM_Level natural join LM_Module where Name="RSVP" and Level='Beginner') as t),
100);


/*Eli Hebdon */
INSERT INTO Level_Status (UID, LID, Status) VALUES (
(Select UID from Users where Name='Eli Hebdon'),
(Select LID from LM_Level natural join LM_Module where Name='Clump Reading' AND Level='Beginner'),
'C');
INSERT INTO Test_Status (UID, TID, Status) VALUES (
(Select UID from Users where Name='Eli Hebdon'),
(select TID from LM_Test natural join (select LID from LM_Level natural join LM_Module where Name="Clump Reading" and Level='Beginner') as t),
99);

INSERT INTO Level_Status (UID, LID, Status) VALUES (
(Select UID from Users where Name='Eli Hebdon'),
(Select LID from LM_Level natural join LM_Module where Name='Clump Reading' AND Level='Intermediate'),
'C');
INSERT INTO Test_Status (UID, TID, Status) VALUES (
(Select UID from Users where Name='Eli Hebdon'),
(select TID from LM_Test natural join (select LID from LM_Level natural join LM_Module where Name="Clump Reading" and Level='Intermediate') as t),
95);

INSERT INTO Level_Status (UID, LID, Status) VALUES (
(Select UID from Users where Name='Eli Hebdon'),
(Select LID from LM_Level natural join LM_Module where Name='Clump Reading' AND Level='Advanced'),
'C');
INSERT INTO Test_Status (UID, TID, Status) VALUES (
(Select UID from Users where Name='Eli Hebdon'),
(select TID from LM_Test natural join (select LID from LM_Level natural join LM_Module where Name="Clump Reading" and Level='Advanced') as t),
50);
