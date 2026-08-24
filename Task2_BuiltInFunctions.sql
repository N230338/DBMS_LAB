USE PlayStoreDB;

SELECT UPPER(DeveloperName) from Developers;
SELECT LOWER(DeveloperName) from Developers;
SELECT LENGTH(AppName) from Apps;
SELECT CategoryName, LENGTH(CategoryName) from Categories;
SELECT current_date(),CURRENT_TIME();
SELECT ROUND(Rating,0) from Apps;

SELECT AppName, SUBSTRING(AppName,1,5) from Apps;
SELECT CONCAT(DeveloperName,' ',Country) from Developers;
SELECT ROUND(Rating,1) from Apps;
SELECT CEIL(Price) from Apps;
SELECT FoundedYear from Developers;
SELECT CONVERT(Downloads,char) from Apps;

SELECT UPPER(Appname),Rating from Apps;
SELECT SUBSTRING(CategoryName,1,3) from Categories;
SELECT ABS(Price-200) from Apps;
SELECT DeveloperName, LENGTH(DeveloperName) FROM Developers;
SELECT CURRENT_DATE(),CURRENT_TIMESTAMP();
SELECT CONVERT(100,char);
