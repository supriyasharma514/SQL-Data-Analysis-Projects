create database olympics;

use olympics;

create table data_new(
	City varchar(250),
	Year int,
	Sport varchar(250),
	Discipline varchar(250),
	Event varchar(250),
	Athlete varchar(250),	
	Gender varchar(250),
	Country_Code varchar(250),
	Country varchar(250),	
	Event_gender varchar(250),
	Medal varchar(250)
);

select * from data_new;

--(1) Medal Count by Country:
SELECT Country, COUNT(*) AS Medal_Count
FROM your_table
GROUP BY Country
ORDER BY Medal_Count DESC;


--(2) Top Performing Countries:
SELECT Country, COUNT(*) AS Medal_Count
FROM your_table
GROUP BY Country
ORDER BY Medal_Count DESC
LIMIT 10;


--(3) Medal Count by Gender:
SELECT Gender, COUNT(*) AS Medal_Count
FROM your_table
GROUP BY Gender;


--(4) Medal Count by Sport:
SELECT Sport, COUNT(*) AS Medal_Count
FROM your_table
GROUP BY Sport
ORDER BY Medal_Count DESC;


--(5) Medal Count by Year:
SELECT Year, COUNT(*) AS Medal_Count
FROM your_table
GROUP BY Year
ORDER BY Year;


--(6) Distribution of Medals by Event Gender:
SELECT Event_gender, COUNT(*) AS Medal_Count
FROM your_table
GROUP BY Event_gender;


--(7) Top Athletes with Most Medals:
SELECT Athlete, COUNT(*) AS Medal_Count
FROM your_table
GROUP BY Athlete
ORDER BY Medal_Count DESC
LIMIT 10;


--(8) Medal Count by Discipline:
SELECT Discipline, COUNT(*) AS Medal_Count
FROM your_table
GROUP BY Discipline
ORDER BY Medal_Count DESC;


--(9) Medal Count by City: 
SELECT City, COUNT(*) AS Medal_Count
FROM your_table
GROUP BY City
ORDER BY Medal_Count DESC;


--(10) Medal Count by Year and Country:
SELECT Year, Country, COUNT(*) AS Medal_Count
FROM your_table
GROUP BY Year, Country
ORDER BY Year, Medal_Count DESC;


--(11) Distribution of Medals by Sport and Gender:
SELECT Sport, Gender, COUNT(*) AS Medal_Count
FROM your_table
GROUP BY Sport, Gender
ORDER BY Sport, Medal_Count DESC;


--(12) Top Athletes with Most Gold Medals:
SELECT Athlete, COUNT(*) AS Gold_Medal_Count
FROM your_table
WHERE Medal = 'Gold'
GROUP BY Athlete
ORDER BY Gold_Medal_Count DESC
LIMIT 10;
