USE PlayStoreDb; 

SELECT DeveloperId FROM Apps WHERE DeveloperId NOT IN(SELECT DeveloperId FROM Developers);
SELECT * FROM Developers;
INSERT INTO Developers(DeveloperId,DeveloperName,Country,FoundedYear) VALUES (105,'AI','India',2008);
ALTER TABLE Apps ADD CONSTRAINT fk_developer
FOREIGN KEY(DeveloperId) REFERENCES Developers(DeveloperId);
SELECT * FROM Apps;

SELECT PublisherId FROM Apps WHERE PublisherId NOT IN(SELECT PublisherId from Publishers);
ALTER TABLE Apps ADD CONSTRAINT fk_publisher
FOREIGN KEY(PublisherId) REFERENCES Publishers(PublisherId);

SELECT CategoryId FROM Apps WHERE CategoryId NOT IN(SELECT CategoryId from Categories);
SELECT * FROM Categories;
INSERT INTO Categories(CategoryId,CategoryName,MinimumAge) VALUES(303,'Farming',10);
ALTER TABLE Apps ADD CONSTRAINT fk_category
FOREIGN KEY(CategoryId) REFERENCES Categories(CategoryId);

SELECT * FROM Apps WHERE Rating>4.5;
SELECT * FROM Apps WHERE Price=0;
SELECT * FROM Apps WHERE CategoryId=305;

SELECT * FROM Apps WHERE Downloads=50000000;
SELECT * FROM Apps WHERE Rating BETWEEN 4.3 AND 4.7;
SELECT * FROM Apps WHERE Price IN (0,299);
SELECT * FROM Apps WHERE AppName LIKE 'G%';
SELECT * FROM Apps WHERE AppName LIKE '%Google%';
SELECT * FROM Apps WHERE Rating>4.0 AND Downloads>5000000;
SELECT * FROM Apps WHERE CategoryId=301 OR CategoryId=305;

SELECT * FROM Apps WHERE AppName NOT LIKE 'G%';
SELECT * FROM Apps WHERE Rating<4.5 AND Downloads>10000000;
SELECT * FROM Developers WHERE DeveloperName LIKE '%a%';
SELECT * FROM Apps WHERE Price BETWEEN 0 AND 300;
SELECT * FROM Apps WHERE PublisherID=201 OR PublisherID=204;
INSERT INTO Apps(AppId,AppName,DeveloperId,PublisherId,CategoryId,Rating,Downloads,Price) VALUES (1012,'Photos',106,201,302,4.5,100000,1);
SELECT * FROM Developers;
SELECT * FROM Apps;
SELECT * FROM Apps WHERE CategoryId<>305;




