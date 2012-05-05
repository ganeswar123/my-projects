/*
--Auther @ Ganeswar Barik.
--Created Date @ 09/03/2011.
--Datebase @ MYSQL 5.1.
--Script Type @ Insert
--Revision @ 1.0

-- This is a script file used to Database for Sandilya Group of Organisation.
-- This sql script only applicable for mysql 5.1 Database
*/

USE `Sandilya`;
/*--Organisation Start*/
INSERT INTO ORGANISATION (ORGANISATION_ID,ORGANISATION_NAME,ORGANISATION_TYPE) VALUES (12,'COLLEGE','HIGHEREDUCATION');
INSERT INTO ORGANISATION (ORGANISATION_ID,ORGANISATION_NAME,ORGANISATION_TYPE) VALUES (13,'SCHOOL','ICSE');
/*--Organisation End
-- DepartMent Start*/
INSERT INTO DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME,DEPARTMENT_TYPE) VALUES (165,'SCIENCE','FIRST_YEAR');
INSERT INTO DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME,DEPARTMENT_TYPE) VALUES (166,'ORIYA','FIRST_YEAR');
INSERT INTO DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME,DEPARTMENT_TYPE) VALUES (167,'ENGLISH','FIRST_YEAR');
INSERT INTO DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME,DEPARTMENT_TYPE) VALUES (168,'MATH','FIRST_YEAR');
INSERT INTO DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME,DEPARTMENT_TYPE) VALUES (169,'CHEMITRY','FIRST_YEAR');
INSERT INTO DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME,DEPARTMENT_TYPE) VALUES (170,'BIOLOGY','FIRST_YEAR');
INSERT INTO DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME,DEPARTMENT_TYPE) VALUES (171,'ZOOLOGY','FIRST_YEAR');
INSERT INTO DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME,DEPARTMENT_TYPE) VALUES (172,'BOTANY','FIRST_YEAR');
INSERT INTO DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME,DEPARTMENT_TYPE) VALUES (173,'PHYSICS','FIRST_YEAR');
INSERT INTO DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME,DEPARTMENT_TYPE) VALUES (174,'IT','FIRST_YEAR');
INSERT INTO DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME,DEPARTMENT_TYPE) VALUES (175,'ELECTONICS','FIRST_YEAR');
/*-- Department End

-- Create Course table Start*/
INSERT INTO COURSE (COURSE_ID,COURSE_NAME,COURSE_TYPE,COURSE_FEE,COURSE_DURATION,ORGANISATION_ID) VALUES (256,'SCIENCE','HSE','40000',2,'12');
INSERT INTO COURSE (COURSE_ID,COURSE_NAME,COURSE_TYPE,COURSE_FEE,COURSE_DURATION,ORGANISATION_ID) VALUES (257,'COMMERCE','HSE','30000',2,'12');
INSERT INTO COURSE (COURSE_ID,COURSE_NAME,COURSE_TYPE,COURSE_FEE,COURSE_DURATION,ORGANISATION_ID) VALUES (258,'CRASH_COURSE','PRIVATE','2000',0.4,'12');
INSERT INTO COURSE (COURSE_ID,COURSE_NAME,COURSE_TYPE,COURSE_FEE,COURSE_DURATION,ORGANISATION_ID) VALUES (259,'SUMMER_COURSE','PRIVATE','10000',0.22,'12');
INSERT INTO COURSE (COURSE_ID,COURSE_NAME,COURSE_TYPE,COURSE_FEE,COURSE_DURATION,ORGANISATION_ID) VALUES (260,'IIT-JEE','PRIVATE','15000',0.2,'12');
INSERT INTO COURSE (COURSE_ID,COURSE_NAME,COURSE_TYPE,COURSE_FEE,COURSE_DURATION,ORGANISATION_ID) VALUES (261,'METRIC','BSE','40000',1,'13');
/*--Create Course table End
-- Syllabus start*/

INSERT INTO SYLLABUS (SYLLABUS_ID,COURSE_ID,ORGANSATION_ID,TOPIC_NAME,DESCRIPTION) VALUES (25,'256','12','English','Second Language');
INSERT INTO SYLLABUS (SYLLABUS_ID,COURSE_ID,ORGANSATION_ID,TOPIC_NAME,DESCRIPTION) VALUES (26,'256','12','Oryia','First Language');
INSERT INTO SYLLABUS (SYLLABUS_ID,COURSE_ID,ORGANSATION_ID,TOPIC_NAME,DESCRIPTION) VALUES (27,'256','12','Botany','Biology');
INSERT INTO SYLLABUS (SYLLABUS_ID,COURSE_ID,ORGANSATION_ID,TOPIC_NAME,DESCRIPTION) VALUES (28,'256','12','Zoology','Biology');
INSERT INTO SYLLABUS (SYLLABUS_ID,COURSE_ID,ORGANSATION_ID,TOPIC_NAME,DESCRIPTION) VALUES (29,'256','12','Chemistry','Chemistry');
INSERT INTO SYLLABUS (SYLLABUS_ID,COURSE_ID,ORGANSATION_ID,TOPIC_NAME,DESCRIPTION) VALUES (30,'256','12','Math','Math');
INSERT INTO SYLLABUS (SYLLABUS_ID,COURSE_ID,ORGANSATION_ID,TOPIC_NAME,DESCRIPTION) VALUES (31,'256','12','Physics','Physics');
INSERT INTO SYLLABUS (SYLLABUS_ID,COURSE_ID,ORGANSATION_ID,TOPIC_NAME,DESCRIPTION) VALUES (32,'256','12','IT','Second Language');
INSERT INTO SYLLABUS (SYLLABUS_ID,COURSE_ID,ORGANSATION_ID,TOPIC_NAME,DESCRIPTION) VALUES (33,'256','12','Electronics','Second Language');
INSERT INTO SYLLABUS (SYLLABUS_ID,COURSE_ID,ORGANSATION_ID,TOPIC_NAME,DESCRIPTION) VALUES (34,'257','12','English','Second Language');
INSERT INTO SYLLABUS (SYLLABUS_ID,COURSE_ID,ORGANSATION_ID,TOPIC_NAME,DESCRIPTION) VALUES (35,'257','12','Oryia','First Language');
INSERT INTO SYLLABUS (SYLLABUS_ID,COURSE_ID,ORGANSATION_ID,TOPIC_NAME,DESCRIPTION) VALUES (36,'257','12','Commerce','Commerce');
INSERT INTO SYLLABUS (SYLLABUS_ID,COURSE_ID,ORGANSATION_ID,TOPIC_NAME,DESCRIPTION) VALUES (37,'257','12','Zoology','Biology');
INSERT INTO SYLLABUS (SYLLABUS_ID,COURSE_ID,ORGANSATION_ID,TOPIC_NAME,DESCRIPTION) VALUES (38,'257','12','Chemistry','Chemistry');
INSERT INTO SYLLABUS (SYLLABUS_ID,COURSE_ID,ORGANSATION_ID,TOPIC_NAME,DESCRIPTION) VALUES (39,'257','12','Math','Math');
INSERT INTO SYLLABUS (SYLLABUS_ID,COURSE_ID,ORGANSATION_ID,TOPIC_NAME,DESCRIPTION) VALUES (40,'257','12','Physics','Physics');
INSERT INTO SYLLABUS (SYLLABUS_ID,COURSE_ID,ORGANSATION_ID,TOPIC_NAME,DESCRIPTION) VALUES (41,'257','12','IT','Second Language');
INSERT INTO SYLLABUS (SYLLABUS_ID,COURSE_ID,ORGANSATION_ID,TOPIC_NAME,DESCRIPTION) VALUES (42,'257','12','Electronics','Second Language');
/*
-- Syllabus End

-- User Start */

INSERT INTO USER (USER_ID,USER_NAME,PASSWORD,USERGROUP_ID) VALUES (1,'admin','admin','35');
INSERT INTO USER (USER_ID,USER_NAME,PASSWORD,USERGROUP_ID) VALUES (2,'ganesh','ganesh','35');
INSERT INTO USER (USER_ID,USER_NAME,PASSWORD,USERGROUP_ID) VALUES (3,'kcbarik','kcbarik','35');
INSERT INTO USER (USER_ID,USER_NAME,PASSWORD,USERGROUP_ID) VALUES (4,'jyoti','jyoti','35');
/*-- User End */

/*Library start*/
INSERT INTO Customer(ID, name, addr, DOB, phone, username, password) VALUES
(60201, 'Jason L. Gray', '2087 Timberbrook Lane, Gypsum, CO 81637',
'09/09/1958', '970-273-9237', 'jlgray', 'password1');
INSERT INTO Customer(ID, name, addr, DOB, phone, username, password) VALUES
(89682, 'Mary L. Prieto', '1465 Marion Drive, Tampa, FL 33602',
'11/20/1961', '813-487-4873', 'mlprieto', 'password2');
INSERT INTO Customer(ID, name, addr, DOB, phone, username, password) VALUES
(64937, 'Roger Hurst', '974 Bingamon Branch Rd, Bensenville, IL 60106',
'08/22/1973', '847-221-4986', 'rhurst', 'password3');
INSERT INTO Customer(ID, name, addr, DOB, phone, username, password) VALUES
(31430, 'Warren V. Woodson', '3022 Lords Way, Parsons, TN 38363',
'03/07/1945', '731-845-0077', 'wvwoodson', 'password4');
INSERT INTO Customer(ID, name, addr, DOB, phone, username, password) VALUES
(79916, 'Steven Jensen', '93 Sunny Glen Ln, Garfield Heights, OH 44125',
'12/14/1968', '216-789-6442', 'sjensen', 'password5');
INSERT INTO Customer(ID, name, addr, DOB, phone, username, password) VALUES
(93265, 'David Bain', '4356 Pooh Bear Lane, Travelers Rest, SC 29690',
'08/10/1947', '864-610-9558', 'dbain', 'password6');
INSERT INTO Customer(ID, name, addr, DOB, phone, username, password) VALUES
(58359, 'Ruth P. Alber', '3842 Willow Oaks Lane, Lafayette, LA 70507',
'02/18/1976', '337-316-3161', 'rpalber', 'password7');
INSERT INTO Customer(ID, name, addr, DOB, phone, username, password) VALUES
(88564, 'Sally J. Schilling', '1894 Wines Lane, Houston, TX 77002',
'07/02/1954', '832-366-9035', 'sjschilling', 'password8');
INSERT INTO Customer(ID, name, addr, DOB, phone, username, password) VALUES
(57054, 'John M. Byler', '279 Raver Croft Drive, La Follette, TN 37766',
'11/27/1954', '423-592-8630', 'jmbyler', 'password9');
INSERT INTO Customer(ID, name, addr, DOB, phone, username, password) VALUES
(49312, 'Kevin Spruell', '1124 Broadcast Drive, Beltsville, VA 20705',
'03/04/1984', '703-953-1216', 'kspruell', 'password10');
INSERT INTO Card(num, fines, ID) VALUES ( 5767052, 0.0, 60201);
INSERT INTO Card(num, fines, ID) VALUES ( 5532681, 0.0, 60201);
INSERT INTO Card(num, fines, ID) VALUES ( 2197620, 10.0, 89682);
INSERT INTO Card(num, fines, ID) VALUES ( 9780749, 0.0, 64937);
INSERT INTO Card(num, fines, ID) VALUES ( 1521412, 0.0, 31430);
INSERT INTO Card(num, fines, ID) VALUES ( 3920486, 0.0, 79916);
INSERT INTO Card(num, fines, ID) VALUES ( 2323953, 0.0, 93265);
INSERT INTO Card(num, fines, ID) VALUES ( 4387969, 0.0, 58359);
INSERT INTO Card(num, fines, ID) VALUES ( 4444172, 0.0, 88564);
INSERT INTO Card(num, fines, ID) VALUES ( 2645634, 0.0, 57054);
INSERT INTO Card(num, fines, ID) VALUES ( 3688632, 0.0, 49312);
INSERT INTO Location(name, addr, phone) VALUES ('Texas Branch',
'4832 Deercove Drive, Dallas, TX 75208', '214-948-7102');
INSERT INTO Location(name, addr, phone) VALUES ('Illinois Branch',
'2888 Oak Avenue, Des Plaines, IL 60016', '847-953-8130');
INSERT INTO Location(name, addr, phone) VALUES ('Louisiana Branch',
'2063 Washburn Street, Baton Rouge, LA 70802', '225-346-0068');
INSERT INTO Status(code, description) VALUES (1, 'Available');
INSERT INTO Status(code, description) VALUES (2, 'In Transit');
INSERT INTO Status(code, description) VALUES (3, 'Checked Out');
INSERT INTO Status(code, description) VALUES (4, 'On Hold');
INSERT INTO Media( media_id, code) VALUES (8733, 1);
INSERT INTO Media( media_id, code) VALUES (9982, 1);
INSERT INTO Media( media_id, code) VALUES (3725, 1);
INSERT INTO Media( media_id, code) VALUES (2150, 1);
INSERT INTO Media( media_id, code) VALUES (4188, 1);
INSERT INTO Media( media_id, code) VALUES (5271, 2);
INSERT INTO Media( media_id, code) VALUES (2220, 3);
INSERT INTO Media( media_id, code) VALUES (7757, 1);
INSERT INTO Media( media_id, code) VALUES (4589, 1);
INSERT INTO Media( media_id, code) VALUES (5748, 1);
INSERT INTO Media( media_id, code) VALUES (1734, 1);
INSERT INTO Media( media_id, code) VALUES (5725, 1);
INSERT INTO Media( media_id, code) VALUES (1716, 4);
INSERT INTO Media( media_id, code) VALUES (8388, 1);
INSERT INTO Media( media_id, code) VALUES (8714, 1);
INSERT INTO Book(ISBN, title, author, year, dewey, price) VALUES
('978-0743289412', 'Lisey''s Story', 'Stephen King',
2006, 813, 10.0);
INSERT INTO Book(ISBN, title, author, year, dewey, price) VALUES
('978-1596912366', 'Restless: A Novel', 'William Boyd',
2006, 813, 10.0);
INSERT INTO Book(ISBN, title, author, year, dewey, price) VALUES
('978-0312351588', 'Beachglass', 'Wendy Blackburn',
2006, 813, 10.0);
INSERT INTO Book(ISBN, title, author, year, dewey, price) VALUES
('978-0156031561', 'The Places In Between', 'Rory Stewart',
2006, 910, 10.0);
INSERT INTO Book(ISBN, title, author, year, dewey, price) VALUES
('978-0060583002', 'The Last Season', 'Eric Blehm',
2006, 902, 10.0);
INSERT INTO Book(ISBN, title, author, year, dewey, price) VALUES
('978-0316740401', 'Case Histories: A Novel', 'Kate Atkinson',
2006, 813, 10.0);
INSERT INTO Book(ISBN, title, author, year, dewey, price) VALUES
('978-0316013949', 'Step on a Crack', 'James Patterson, et al.',
2007, 813, 10.0);
INSERT INTO Book(ISBN, title, author, year, dewey, price) VALUES
('978-0374105235', 'Long Way Gone: Memoirs of a Boy Soldier',
'Ishmael Beah', 2007, 916, 10.0);
INSERT INTO Book(ISBN, title, author, year, dewey, price) VALUES
('978-0385340229', 'Sisters', 'Danielle Steel', 2006, 813, 10.0);
INSERT INTO BookMedia(media_id, ISBN) VALUES (8733, '978-0743289412');
INSERT INTO BookMedia(media_id, ISBN) VALUES (9982, '978-1596912366');
INSERT INTO BookMedia(media_id, ISBN) VALUES (3725, '978-1596912366');
INSERT INTO BookMedia(media_id, ISBN) VALUES (2150, '978-0312351588');
INSERT INTO BookMedia(media_id, ISBN) VALUES (4188, '978-0156031561');
INSERT INTO BookMedia(media_id, ISBN) VALUES (5271, '978-0060583002');
INSERT INTO BookMedia(media_id, ISBN) VALUES (2220, '978-0316740401');
INSERT INTO BookMedia(media_id, ISBN) VALUES (7757, '978-0316013949');
INSERT INTO BookMedia(media_id, ISBN) VALUES (4589, '978-0374105235');
INSERT INTO BookMedia(media_id, ISBN) VALUES (5748, '978-0385340229');
INSERT INTO Checkout(media_id, num, since, until) VALUES
(2220, 9780749, '02/15/2007', '03/15/2007');
INSERT INTO Video(title, year, director, rating, price) VALUES
('Terminator 2: Judgment Day', 1991, 'James Cameron', 8.3, 20.0);
INSERT INTO Video(title, year, director, rating, price) VALUES
('Raiders of the Lost Ark', 1981, 'Steven Spielberg', 8.7, 20.0);
INSERT INTO Video(title, year, director, rating, price) VALUES
('Aliens', 1986, 'James Cameron', 8.3, 20.0);
INSERT INTO Video(title, year, director, rating, price) VALUES
('Die Hard', 1988, 'John McTiernan', 8.0, 20.0);
INSERT INTO VideoMedia(media_id, title, year) VALUES
( 1734, 'Terminator 2: Judgment Day', 1991);
INSERT INTO VideoMedia(media_id, title, year) VALUES
( 5725, 'Raiders of the Lost Ark', 1981);
INSERT INTO VideoMedia(media_id, title, year) VALUES
( 1716, 'Aliens', 1986);
INSERT INTO VideoMedia(media_id, title, year) VALUES
( 8388, 'Aliens', 1986);
INSERT INTO VideoMedia(media_id, title, year) VALUES
( 8714, 'Die Hard', 1988);
INSERT INTO Hold(media_id, num, name, until, queue) VALUES
(1716, 4444172, 'Texas Branch', '02/20/2008', 1);
INSERT INTO Librarian(eid, ID, pay, Loc_name) Values
(2591051, 88564, 30000.00, 'Texas Branch');
INSERT INTO Librarian(eid, ID, pay, Loc_name) Values
(6190164, 64937, 30000.00, 'Illinois Branch');
INSERT INTO Librarian(eid, ID, pay, Loc_name) Values
(1810386, 58359, 30000.00, 'Louisiana Branch');
INSERT INTO Stored_In(media_id, name) VALUES(8733, 'Texas Branch');
INSERT INTO Stored_In(media_id, name) VALUES(9982, 'Texas Branch');
INSERT INTO Stored_In(media_id, name) VALUES(1716, 'Texas Branch');
INSERT INTO Stored_In(media_id, name) VALUES(1734, 'Texas Branch');
INSERT INTO Stored_In(media_id, name) VALUES(4589, 'Texas Branch');
INSERT INTO Stored_In(media_id, name) VALUES(4188, 'Illinois Branch');
INSERT INTO Stored_In(media_id, name) VALUES(5271, 'Illinois Branch');
INSERT INTO Stored_In(media_id, name) VALUES(3725, 'Illinois Branch');
INSERT INTO Stored_In(media_id, name) VALUES(8388, 'Illinois Branch');
INSERT INTO Stored_In(media_id, name) VALUES(5748, 'Illinois Branch');
INSERT INTO Stored_In(media_id, name) VALUES(2150, 'Louisiana Branch');
INSERT INTO Stored_In(media_id, name) VALUES(8714, 'Louisiana Branch');
INSERT INTO Stored_In(media_id, name) VALUES(7757, 'Louisiana Branch');
INSERT INTO Stored_In(media_id, name) VALUES(5725, 'Louisiana Branch');
COMMIT;
/*
--- End of Table Creation
--  Strat of Referencing the table
*/