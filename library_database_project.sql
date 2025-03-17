
#using sqlworkbench and creating database as university_library


create database university_library;
use university_library;

----craete the student table.

CREATE TABLE EMPLOYEE 
(EmpID CHAR (5) NOT NULL,
EmpName VARCHAR (100) NOT NULL,
EmpAddr VARCHAR (150)  NULL,
EmpEmail VARCHAR (50) NOT NULL,			
CONSTRAINT EmployeePK	PRIMARY KEY (EmpID));

-----inserting values into EMPLOYEE.

INSERT INTO EMPLOYEE(EmpID , EmpName , EmpAddr,EmpEmail)	
VALUES ('101', 'James Bond', '920 Napoleon Road','jb@cat.edu'),
	('102', 'Alex Morgan', '922 Lake Dr','am@cat.edu'),
   ('103', 'John Snow', '933 Westwood Dr','js@cat.edu'),
   ('104', 'Gill Jon', '935 Everwood Dr','gj@cat.edu'),
   ('105', 'Beth Jane', '940 South Main Street','bj@cat.edu');
   
-------creating table STUDENT.

CREATE TABLE STUDENT (	
StudID CHAR (5) NOT NULL,
StuName VARCHAR (100) NOT NULL,
StuAddr VARCHAR (150)  NULL,
StuEmail VARCHAR (50) NOT NULL,
CONSTRAINT StudentPK	PRIMARY KEY (StudID));

-------inserting values into student.

INSERT INTO STUDENT(StudID , StuName, StuAddr,StuEmail)
	values('10001', 'Lily Evans', '165 Main Street','le@cat.edu'),	
    ('10002', 'Dan Ali', '30 Memorial Drive','da@cat.edu'),
	('10003', 'Brian Paul', '700 Oak Street','bp@cat.edu'),	
    ('10004', 'Mark Donald', '11 Jungle Road','md@cat.edu'),
    ('10005', 'Kevin Ronald', '506 State Road','kr@cat.edu');
    
---------creating table PUBLISHER.    
    
CREATE TABLE PUBLISHER 	
(PubID CHAR (5) NOT NULL,
PubName VARCHAR (100) NOT NULL,
PubAddr VARCHAR (150)  NULL,
PubEmail VARCHAR (50) NOT NULL,
CONSTRAINT PublisherPK	PRIMARY KEY (PubID));

--------inserting values into PUBLISHE.

INSERT INTO PUBLISHER(PubID , PubName , PubAddr,PubEmail)
	VALUES ('20001', 'Ryan Jason', '352 Palmer Road','rj@cat.edu'),
    ('20002', 'Gary Eric', '141 Washington Ave','ge@cat.edu'),
    ('20003', 'Larry Scott', '279 Troy Road','ls@cat.edu'),
    ('20004', 'Rachel Debra', '4975 Transit Road','rd@cat.edu'),
    ('20005', 'Ruth Janet', '161 Berlin Road','rj@cat.edu');
    
------creating table AUTHOR.    
    
CREATE TABLE AUTHOR (	
AuthID CHAR (5) NOT NULL,
AuthName VARCHAR (100) NOT NULL,
AuthAddr VARCHAR (150)  NULL,
AuthEmail VARCHAR (50) NOT NULL,
CONSTRAINT AuthPK PRIMARY KEY (AuthID));

-----Inserting values into AUTHOR.

INSERT INTO AUTHOR(AuthID , AuthName , AuthAddr ,AuthEmail )
VALUES('30001', 'Jose Henry', '235 Queen St','jh@cat.edu'),
      ('30002', 'Nathan Douglas', '164 Danbury Rd','nd@cat.edu'),
      ('30003', 'Victoria Olivia', '80 Town Line Rd','vo@cat.edu'),
      ('30004', 'Kyle Walter', '970 Torringford Street','kw@cat.edu'),
	('30005', 'Jeremy Ethan', '844 No Colony Road','je@cat.edu');


-----creating table BOOK.

CREATE TABLE BOOK (	
BookID CHAR (5) NOT NULL,
BookName VARCHAR (100) NOT NULL,
BookPages INT  NOT NULL,
ISBNNum VARCHAR (50) NOT NULL,
StudID CHAR (5)  NULL,
EmpID CHAR (5)  NULL,
PubID CHAR (5) NOT NULL,
CONSTRAINT BookPK   PRIMARY KEY (BookID),
CONSTRAINT BookFK1  FOREIGN KEY (StudID) REFERENCES STUDENT (StudID)
								ON UPDATE CASCADE
								ON DELETE NO ACTION,
CONSTRAINT BookFK2  FOREIGN KEY (EmpID) REFERENCES EMPLOYEE (EmpID)
								ON UPDATE CASCADE
								ON DELETE NO ACTION,								
CONSTRAINT BookFK3  FOREIGN KEY (PubID) REFERENCES PUBLISHER (PubID)
								ON UPDATE CASCADE
								ON DELETE NO ACTION);
                         
------insert values into BOOK.                         
                         
INSERT INTO BOOK(BookID , BookName ,BookPages,ISBNNum, StudID ,EmpID,PubID )
	VALUES('40001', 'The Bell Jar', '110','817525766-0','10001','101','20001'),
          ('40002', 'Calvin', '230','716578901-4','10002','102','20002'),
          ('40003', 'Displacement', '360','998456723-4','10003','103','20003'),
		  ('40004', 'Edinburgh', '500','654732187-5','10004','104','20004'),
		  ('40005', 'The Fifth Risk', '650','756489762-1','10005','105','20005');

-------creating table BOOK_AUTH.

CREATE TABLE BOOK_AUTH (	
BookAuthID CHAR (5) NOT NULL,
BookID CHAR (5) NOT NULL,
AuthID CHAR (5) NOT NULL,
			
CONSTRAINT BookAuthPK	PRIMARY KEY (BookAuthID),

CONSTRAINT BookAuthFK1	FOREIGN KEY (BookID) REFERENCES BOOK (BookID)
								ON UPDATE CASCADE
								ON DELETE NO ACTION	,

CONSTRAINT BooAuthkFK2	FOREIGN KEY (AuthID) REFERENCES AUTHOR (AuthID)
								ON UPDATE CASCADE
								ON DELETE NO ACTION);
                                
 ------inserting values into BOOK_AUTH.
 
INSERT INTO BOOK_AUTH (BookAuthID  ,BookID, AuthID)
VALUES('50001', '40001','30001'),
    ('50002', '40002','30002'),
    ('50003', '40003','30003'),
    ('50004', '40004','30004'),
    ('50005', '40005','30005');











			