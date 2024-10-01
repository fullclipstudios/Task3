-- Use
use crowdfunding_db;

-- Create Tables
CREATE TABLE FUNDRAISER (
FUNDRAISER_ID int (5),
ORGANIZER varchar (50),
CAPTION varchar (50),
TARGET_FUNDING int (10),
CURRENT_FUNDING int (10),
CITY varchar (50),
`ACTIVE` BOOLEAN,
CATEGORY_ID int (5),

PRIMARY KEY (FUNDRAISER_ID),
FOREIGN KEY (CATEGORY_ID)REFERENCES CATEGORY (CATEGORY_ID)
);

CREATE TABLE CATEGORY (
CATEGORY_ID int (5) auto_increment,
NAME varchar (50),
PRIMARY KEY (CATEGORY_ID)
);

CREATE TABLE DONATION (
DONATION_ID int (5),
THE_DATE DATE,
AMOUNT int (10), 
GIVER varchar (100),
FUNDRAISER_ID int (10),

PRIMARY KEY (DONATION_ID),
FOREIGN KEY (FUNDRAISER_ID)REFERENCES FUNDRAISER (FUNDRAISER_ID)
);


-- Table Entries
INSERT INTO FUNDRAISER (FUNDRAISER_ID, ORGANIZER, CAPTION, TARGET_FUNDING, CURRENT_FUNDING, CITY, ACTIVE, CATEGORY_ID) VALUES
(12034, "Community Talent Show October", "Showcase the Talent", 1000, 100, "Sydney", TRUE, 1 ),
(12033, "Community Talent Show November", "Showcase the Talent", 1000, 0, "Sydney", FALSE, 1 ),
(26280, "Fun Run November", "Run for a cause", 10000, 2000, "Melbourne", TRUE, 1 ),
(26281, "Fun Run December", "Run for a cause", 10000, 1000, "Melbourne", TRUE, 1 ),
(78336, "Gaming tournament", "Have fun, win big", 1500, 500, "Cloncurry", TRUE, 1 ),
(34272, "Community plant reserve", "Help us grow", 15000, 0, "Perth", FALSE, 3 ),
(11284, "Community Garden", "New equipment", 3000, 0, "Darwin", TRUE, 3 ),
(78921, "Hobart Hospital", "Cafeteria", 3000, 500, "Hobart", FALSE, 4 ),
(13514, "St Joseph's School fundraiser", "help our school grow!", 5000, 0, "Gold Coast", TRUE, 1 ),
(99869, "Local Wildlife sanctuary", "Take Action to help animals", 10000, 6000, "Brisbane", TRUE, 5 );

INSERT INTO CATEGORY (NAME) VALUES
("Community"),
("Arts"),
("Environment"),
("Health"),
("Animal welfare");

INSERT INTO DONATION (DONATION_ID, THE_DATE, AMOUNT, GIVER, FUNDRAISER_ID) VALUES
(93912,'2024-08-01', 50, "John", 99869),
(93912,'2024-08-01', 50, "John", 99869),
(93913, '2024-08-05', 100, "Alice", 12034),
(93914, '2024-08-10', 150, "Bob", 26280),
(93915, '2024-08-12', 75, "Claire", 78336),
(93916, '2024-08-15', 200, "David", 99869),
(93917, '2024-08-20', 300, "Eve", 13514),
(93918, '2024-08-25', 250, "Frank", 11284),
(93919, '2024-09-01', 500, "Grace", 26281),
(93920, '2024-09-05', 400, "Hank", 34272);

-- Select
SELECT * FROM fundraiser;

