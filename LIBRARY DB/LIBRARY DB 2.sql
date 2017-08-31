

CREATE TABLE tbl_book (
	book_bookID INT PRIMARY KEY NOT NULL,
	book_title VARCHAR(50) NOT NULL,
	book_PublisherName VARCHAR(50) NOT NULL
);

DROP TABLE tbl_book;
SELECT * FROM tbl_book;

INSERT INTO tbl_book 
	(book_bookID, book_title, book_PublisherName)
	VALUES
	('1001', 'The Lost Tribe', 'Penguin'),
	('1002', 'The Last Laugh', 'Madhouse'),
	('1003', 'IT', 'HorrorPlus'),
	('1004', 'Fifteen Minutes of Fame', 'Penguin'),
	('1005', 'Holding Out', 'NY Publishing'),
	('1006', 'Once More', 'Madhouse'),
	('1007', 'Tried and True', 'NY Publishing'),
	('1008', 'Liftoff', 'Penguin'),
	('1009', 'The Last Drop', 'HorrorPlus'),
	('1010', 'Military Minds', 'Penguin'),
	('1011', 'The Great Fall', 'Penguin'),
	('1012', 'Call of the Dead', 'HorrorPlus'),
	('1013', 'Tonight, We Dine', 'Madhouse'),
	('1014', 'The Final Trick', 'NY Publishing'),
	('1015', 'Missed Opportunity', 'Murphy House'),
	('1016', 'Mister Serendipity', 'Penguin'),
	('1017', 'Shattered', 'Madhouse'),
	('1018', 'Left Alone', 'HorrorPlus'),
	('1019', 'Time Well Spent', 'Penguin'),
	('1020', 'A Man and His Boat', 'NY Publishing')
;

CREATE TABLE tbl_publisher (
	publisher_name VARCHAR(50) NOT NULL,
	publisher_address VARCHAR(50) NOT NULL,
	publisher_phone VARCHAR(50) NOT NULL
);

DROP TABLE tbl_publisher;
SELECT * FROM tbl_publisher;

INSERT INTO tbl_publisher
	(publisher_name, publisher_address, publisher_phone)
	VALUES
	('Penguin', '3851 N 42nd Ave', '318-452-6895'),
	('HorrorPlus', '5800 Kentucky St', '450-213-8967'),
	('Madhouse', '2821 Bull Run Blvd', '525-851-2364'),
	('NY Publishing', '3822 N 42nd Ave', '318-787-1963')
;

SELECT * FROM tbl_publisher;

CREATE TABLE tbl_borrower (
	borrower_cardNo INT PRIMARY KEY NOT NULL,
	borrower_name VARCHAR(50) NOT NULL,
	borrower_address VARCHAR(50) NOT NULL,
	borrower_phone VARCHAR(50) NOT NULL
);

SELECT * FROM tbl_borrower;
DROP TABLE tbl_borrower;

INSERT INTO tbl_borrower
	(borrower_cardNo, borrower_name, borrower_address, borrower_phone)
	VALUES
	('2536', 'Lee Guentert', '583 Worshire Way', '823-517-6868'),
	('3247', 'Ben Scott', '2136 Johnson St', '971-582-1823'),
	('2517', 'Iszy Bonney', '3621 Mississippi St', '508-271-2347'),
	('4378', 'Ivan Hernandez', '1715 Trying Circle', '678-385-5851'),
	('5703', 'Maycee Abderschein', '487 Inconvenient Drive', '803-683-4567'),
	('6456', 'Jonny Klipp', '1212 Hard Times Ave', '907-851-4158'),
	('1819', 'David Crane', '5115 Easy St', '303-678-8136'),
	('2898', 'Rachael Kabaker', '1987 Hawthorne Blvd', '404-312-5987'),
	('3852', 'Andrew Scarlet', '3221 Mississippi St', '823-573-6369'),
	('4722', 'Davis Van Luven', '6384 Ventura Blvd', '867-921-8775'),
	('6969', 'Mark Roes', '808 N 23rd Ave', '873-844-9736')
;


INSERT INTO tbl_borrower
	(borrower_cardNo, borrower_name, borrower_address, borrower_phone)
	VALUES
	('6969', 'Mark Roes', '808 N 23rd Ave', '873-844-9736')
;

CREATE TABLE tbl_Library (
	Library_branchID INT PRIMARY KEY NOT NULL,
	Library_branchname VARCHAR(50) NOT NULL,
	Library_address VARCHAR(50) NOT NULL
);


INSERT INTO tbl_Library
	(Library_branchID, Library_branchname, Library_address)
	VALUES
	('212', 'Central', '1567 Central Blvd'),
	('257', 'Sharpstown', '233 Main St'),
	('384', 'Lawrenceville', '1201 Five Forks Rd'),
	('521', 'Portland', '3247 Johnson St')
;

SELECT * FROM tbl_Library;

CREATE TABLE tbl_bookcopies (	
	bookcopies_bookID VARCHAR(50) NOT NULL,
	bookcopies_branchID INT NOT NULL CONSTRAINT fk_Library_branchID FOREIGN KEY REFERENCES tbl_Library(Library_branchID) ON UPDATE CASCADE ON DELETE CASCADE,
	bookcopies_#ofcopies INT NOT NULL
);

SELECT * FROM tbl_bookcopies; 

DROP TABLE tbl_bookcopies;

INSERT INTO tbl_bookcopies
	(bookcopies_bookID, bookcopies_branchID, bookcopies_#ofcopies)
	VALUES
	('1007', '212', '5'),
	('1013', '212', '3'),
	('1006', '212', '5'),
	('1005', '212', '2'),
	('1003', '212', '4'),
	('1010', '212', '6'),
	('1017', '212', '7'),
	('1015', '212', '10'),
	('1001', '212', '5'),
	('1012', '212', '4'),
	('1001', '257', '8'),
	('1002', '257', '11'),
	('1020', '257', '2'),
	('1019', '257', '6'),
	('1003', '257', '7'),
	('1018', '257', '3'),
	('1016', '257', '4'),
	('1004', '257', '5'),
	('1005', '257', '7'),
	('1007', '257', '8'),
	('1011', '384', '2'),
	('1015', '384', '4'),
	('1007', '384', '9'),
	('1008', '384', '13'),
	('1009', '384', '11'),
	('1014', '384', '5'),
	('1013', '384', '6'),
	('1003', '384', '4'),
	('1001', '384', '2'),
	('1012', '384', '7'),
	('1002', '521', '6'),
	('1003', '521', '8'),
	('1018', '521', '16'),
	('1019', '521', '12'),
	('1020', '521', '10'),
	('1008', '521', '14'),
	('1011', '521', '3'),
	('1012', '521', '8'),
	('1017', '521', '9'),
	('1001', '521', '11')
;


CREATE TABLE tbl_bookauthor (
	bookauthor_bookID INT PRIMARY KEY IDENTITY (1001,1) NOT NULL, 
	bookauthor_authorname VARCHAR(50) NOT NULL
);

SELECT * FROM tbl_bookauthor;

INSERT INTO tbl_bookauthor
	(bookauthor_authorname)
	VALUES
	('Mark Lee'),
	('Vince Staples'),
	('Stephen King'),
	('Vivian Marsh'),
	('Arnold Swanson'),
	('Matthew Rite'),
	('Robert Patton'),
	('Holly Tipper'),
	('Antonio Juarez'),
	('Jasper Wilds'),
	('Mark Lee'),
	('Antonio Juarez'),
	('Vince Staples'),
	('Arnold Swanson'),
	('Tim Scott'),
	('Vivian Marsh'),
	('Matthew Rite'),
	('Mario Lopez'),
	('Holly Tipper'),
	('Robert Patton')
;


CREATE TABLE tbl_bookloans (
	bookloans_bookID VARCHAR(50),
	bookloans_branchID INT,
	bookloans_cardNo INT NOT NULL CONSTRAINT fk_borrower_cardNo FOREIGN KEY REFERENCES tbl_borrower(borrower_cardNo) ON UPDATE CASCADE ON DELETE CASCADE,
	bookloans_dateOUT VARCHAR(50),
	bookloans_dueDate VARCHAR(50)

);

DROP TABLE tbl_bookloans;
SELECT * FROM tbl_bookloans;

INSERT INTO tbl_bookloans
	(bookloans_bookID, bookloans_branchID, bookloans_cardNo, bookloans_dateOUT, bookloans_dueDate)
	VALUES
	('1001', '212', '1819', '8/17/17', '8/24/17'),
	('1001', '257', '4722', '8/16/17', '8/23/17'),
	('1001', '384', '2536', '7/20/17', '7/27/17'),
	('1001', '212', '2517', '8/07/17', '8/14/17'),
	('1002', '212', '4378', '6/13/17', '6/20/17'),
	('1002', '521', '3247', '6/06/17', '6/13/17'),
	('1002', '521', '3852', '4/20/17', '4/27/17'),
	('1003', '212', '6456', '9/12/17', '9/19/17'),
	('1003', '257', '5703', '6/22/17', '6/29/17'),
	('1003', '384', '4722', '5/10/17', '5/17/17'),
	('1003', '521', '2517', '10/08/17', '10/15/17'),
	('1004', '257', '4378', '10/23/17', '10/30/17'),
	('1004', '257', '3247', '5/05/17', '5/12/17'),
	('1004', '257', '5703', '7/02/17', '7/09/17'),
	('1004', '257', '3852', '2/18/17', '2/25/17'),
	('1004', '257', '3247', '3/09/17', '3/16/17'),
	('1005', '257', '6456', '4/06/17', '4/13/17'),
	('1005', '257', '4722', '6/22/17', '6/29/17'),
	('1005', '257', '1819', '1/18/17', '1/25/17'),
	('1005', '212', '2517', '1/04/17', '1/11/17'),
	('1005', '212', '4378', '5/12/17', '5/19/17'),
	('1006', '212', '2536', '11/14/17', '11/21/17'),
	('1006', '212', '5703', '8/11/17', '8/18/17'),
	('1007', '384', '1819', '9/11/17', '9/18/17'),
	('1007', '384', '3247', '10/01/17', '10/08/17'),
	('1007', '257', '2517', '7/21/17', '7/28/17'),
	('1008', '384', '4378', '4/09/17', '4/16/17'),
	('1008', '521', '3852', '5/03/17', '5/10/17'),
	('1009', '384', '2536', '6/22/17', '6/29/17'),
	('1009', '384', '3247', '3/03/17', '3/10/17'),
	('1009', '384', '2517', '3/05/17', '3/12/17'),
	('1009', '384', '4378', '9/02/17', '9/09/17'),
	('1009', '384', '5703', '12/18/15', '12/25/17'),
	('1009', '384', '2898', '11/17/17', '11/24/17'),
	('1009', '384', '3852', '10/10/17', '10/17/17'),
	('1011', '384', '2536', '2/11/17', '2/18/17'),
	('1011', '521', '6456', '2/14/17', '2/21/17'),
	('1011', '521', '2517', '3/24/17', '3/31/17'),
	('1012', '212', '1819', '4/25/17', '5/02/17'),
	('1012', '212', '3247', '6/09/17', '6/16/17'),
	('1012', '521', '2536', '8/04/17', '8/11/17'),
	('1012', '384', '2517', '8/02/17', '8/09/17'),
	('1012', '384', '4722', '5/11/17', '5/18/17'),
	('1013', '212', '4378', '4/15/17', '4/22/17'),
	('1013', '212', '3247', '3/17/17', '3/24/17'),
	('1013', '384', '2536', '4/16/16', '4/23/17'),
	('1014', '384', '2898', '7/17/17', '7/24/17'),
	('1014', '384', '3852', '3/01/17', '3/08/17'),
	('1014', '384', '1819', '8/19/17', '8/26/17'),
	('1015', '212', '6456', '6/14/17', '6/20/17'),
	('1016', '257', '4722', '4/20/17', '4/27/17'),
	('1017', '521', '3247', '5/07/17', '5/14/17'),
	('1017', '521', '2898', '4/01/17', '4/08/17'),
	('1017', '212', '4378', '2/03/17', '2/10/17'),
	('1018', '257', '5703', '2/21/17', '2/28/17'),
	('1018', '257', '2517', '1/15/17', '1/22/17'),
	('1019', '521', '2898', '1/02/17', '1/09/17'),
	('1019', '521', '2517', '1/05/17', '1/12/17'),
	('1019', '521', '4722', '11/08/17', '11/15/17'),
	('1019', '257', '1819', '11/14/17', '11/21/17'),
	('1019', '257', '4378', '1/18/17', '1/25/17'),
	('1020', '257', '2536', '3/03/17', '3/10/17'),
	('1020', '521', '2898', '7/04/17', '7/11/17'),
	('1020', '257', '3852', '8/13/17', '8/20/17'),
	(NULL, NULL, '6969', NULL, NULL)

;




/* QUERIES FROM DATABASE*/

SELECT bookcopies_#ofcopies FROM tbl_bookcopies
WHERE bookcopies_bookID = 'The Lost Tribe' AND bookcopies_branchID = '257' ;