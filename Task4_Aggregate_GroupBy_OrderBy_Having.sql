Use PlayStoredb;
SELECT * FROM Apps;
SELECT COUNT(*) AS Total_Apps FROM Apps;
SELECT AVG(Rating) FROM Apps;
SELECT MAX(Rating) FROM Apps;
SELECT MIN(Rating) FROM Apps;
SELECT SUM(Downloads) FROM Apps;	
SELECT * FROM Apps ORDER BY Rating DESC;

SELECT CategoryID,COUNT(*) FROM Apps GROUP BY CategoryID;
SELECT CategoryID,AVG(Rating) FROM Apps GROUP BY CategoryID;
SELECT MIN(Price),MAX(Price) FROM Apps;
SELECT * FROM Apps ORDER BY Downloads DESC;
SELECT DeveloperID,COUNT(*) FROM Apps GROUP BY DeveloperID;
SELECT c.CategoryName,COUNT(*) AS Application_Count FROM Apps a JOIN Categories c ON c.CategoryID=a.CategoryID GROUP BY c.CategoryName HAVING COUNT(*)>1;

SELECT DeveloperID,SUM(Downloads) FROM Apps GROUP BY DeveloperID;
SELECT PublisherID,AVG(Rating) FROM Apps GROUP BY PublisherID;
SELECT d.DeveloperName,COUNT(*) FROM Apps a JOIN Developers d ON a.DeveloperID=d.DeveloperID GROUP BY d.DeveloperName HAVING count(*)>1;
SELECT c.CategoryName,AVG(Rating) AS Average_Rating FROM Apps a JOIN Categories c ON a.CategoryID=c.CategoryID GROUP BY c.CategoryName HAVING AVG(Rating)>4.3;
SELECT CategoryID,COUNT(*) AS Application_Count FROM Apps GROUP BY CategoryID ORDER BY COUNT(*) DESC;
SELECT AppName FROM Apps WHERE Rating = (SELECT MAX(Rating) FROM Apps);
SELECT DeveloperID,SUM(Price) AS Total_Price FROM Apps GROUP BY DeveloperID;