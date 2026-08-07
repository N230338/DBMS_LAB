CREATE DATABASE PlayStoreDB;
USE PlayStoreDB ;
CREATE TABLE Developers(
	DeveloperID int primary key,
    DeveloperName VARCHAR(60) NOT NULL,

    Country VARCHAR(30),
    FoundedYear int);
INSERT into Developers values
	(101,"Google LLC","USA",1998),
    (102,"Meta Platforms","USA",2004),
    (103,"Spotify AB","Sweden",2006),
    (104,"Canva Pty Ltd","Australia",2012),
    (105,"BYJU'S","India",2011);
SELECT * FROM Developers;

CREATE TABLE Publishers(
	PublisherID int primary key,
    PublisherName VARCHAR(60),
    HeadOffice VARCHAR(40),
    SupportEmail  VARCHAR(60));
INSERT INTO Publishers VALUES
	(201,"Google Play","California","support@google.com"),
    (202,"Samsung Galaxy Store","Seoul","support@samsung.com"),
    (203,"Huawei AppGalley","Shenzhen","support@huawei.com"),
    (204,"Amazon AppStore","Seattle","support@amazon.com");
SELECT * FROM Publishers;

CREATE TABLE Categories(
	CategoryID int primary key,
    CategoryName VARCHAR(40),
    MinimumAge int);
INSERT into Categories values
	(301,"Education",3),
    (302,"Productivity",3),
    (303,"Music",12),
    (304,"Social",13),
    (305,"Gaming",16);
SELECT * FROM Categories;

CREATE TABLE Apps(
	AppID int primary key,
    AppName VARCHAR(60),
    DeveloperID int,
    PublisherID int,
    CategoryID int,
    Rating DECIMAL(2,1),
    Downloads int,
    Price DECIMAL(6,2));
INSERT INTO Apps VALUES
	(1001,"Google Classroom",101,201,301,4.6,5000000,0),
    (1002,"Google Keep",101,201,302,4.5,10000000,0),
    (1003,"Instagram",102,201,304,4.4,50000000,0),
    (1004,"Spotify",103,201,303,4.5,10000000,0),
    (1005,"Canva",104,201,302,4.7,5000000,0),
    (1006,"BYJU'S Learning ",105,201,301,4.3,1000000,299),
    (1007,"Candy Crush ",102,204,305,4.6,10000000,0),
    (1008,"Temple Run ",104,203,305,4.2,5000000,0);
SELECT * FROM Apps;
DESC Apps;

INSERT INTO Developers values(106,"OpenAI","USA",2015);

INSERT into Categories values(306,"Artificial intelligence",12);

INSERT INTO Apps VALUES(1009,"ChatGPT",101,201,301,4.6,5000000,0);

UPDATE Apps set Rating=4.5 where AppID=1008;

DELETE from Developers where DeveloperID=105;

UPDATE Publishers set Supportemail="support@galaxy.com" where PublisherID=202;

INSERT INTO Apps VALUES
	(1010,"Duolingo",104,201,301,4.6,5000000,0),
    (1011,"Youtube",103,201,302,4.5,10000000,0);

UPDATE Apps set Price=199 where AppID = 1006;

Delete from Categories where CategoryID=303;

select * from Developers;
SELECT * FROM Publishers;
SELECT * FROM Categories;
select * from Apps;


