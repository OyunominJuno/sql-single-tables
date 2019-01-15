USE world;
/*Question 1. 4079 rows returned*/
SELECT Name, District, Population
FROM city;

/*Question 2. 239 rows returned*/
SELECT Name AS Country, Continent AS Continent, SurfaceArea AS Area
FROM country;

/*Question 3. 239 rows returned*/
SELECT Name, Population + Population * 13 DIV 100 AS 'Expected Population'
FROM country;

/*Question 4. 100 rows returned*/
SELECT Name, Population
FROM country
WHERE Population >= 6000000;

/*Question 5. 457 rows returned*/
SELECT DISTINCT Language
FROM countrylanguage;

/*Question 6. 37 rows returned*/
SELECT Name, GNP, GNPOld
FROM country
WHERE GNP > 100000 OR GNPOld > 100000;

/*Question 7. 94 rows returned*/
SELECT Language
FROM countrylanguage
WHERE IsOfficial = 'T' AND Percentage > 75;

/*Question 8. 151 rows returned*/
SELECT Name, GovernmentForm
FROM country
WHERE GovernmentForm IN ('Republic','Constitutional Monarchy');

/*Question 9. 39 rows returned*/
SELECT Name, IndepYear
FROM country 
WHERE IndepYear BETWEEN 1900 AND 1950;

/*Question 10. 10 rows returned*/
SELECT DISTINCT Language
FROM countrylanguage
WHERE Language LIKE 'So%';

/*Question 11. 17 rows returned*/
SELECT Name, Region, LifeExpectancy
FROM country
WHERE LifeExpectancy IS NULL;

/*Question 12. 59 rows returned*/
SELECT DISTINCT Language
FROM countrylanguage
WHERE Language LIKE 'M%'
ORDER BY Language;

/*Question 13. 50 rows returned*/
SELECT Name, LifeExpectancy 
FROM country
WHERE LifeExpectancy > 76
ORDER BY LifeExpectancy DESC;

/*Question 14. 26 rows returned*/
SELECT Name, District, Population
FROM city 
WHERE Name = District AND Population < 90000
ORDER BY Population DESC;

/*Question 15. 11 rows returned*/
SELECT Name, SurfaceArea, Population, Continent
FROM country
WHERE Region = 'Caribbean' AND Population < 100000 AND SurfaceArea < 500;

/*
		Table: postalcodes
Key					Name			DataType,Size		Null		
PK (part of PK)		PostalCode		char(6)				NN
FK (part of PK)		City			copy				NN
					Household		int(3)				N		
					Active			Boolean				N
*/