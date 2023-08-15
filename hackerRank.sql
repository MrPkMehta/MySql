SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2) FROM STATION;
/**-> ROUND(SUM(LAT_N), 2): This part calculates the sum of values in the LAT_N column and then rounds the result to two decimal places. The ROUND function takes two arguments: the value you want to round (SUM(LAT_N) in this case) and the number of decimal places (2 in this case). This part of the query calculates the sum of latitude values in the STATION table and rounds it to two decimal places.*/



SELECT ROUND(LAT_N, 4) FROM STATION WHERE LAT_N < 137.2345 ORDER BY LAT_N DESC LIMIT 1;
/**->ORDER BY LAT_N DESC: This orders the filtered rows in descending order based on the LAT_N column. This means that the rows with higher LAT_N values will appear first.
LIMIT 1: This restricts the result to only one row, which will be the first row after sorting in descending order.*/



SELECT SUM(CITY.POPULATION) FROM city JOIN country 
    ON city.countrycode = country.code 
        WHERE country.continent = "asia";
/**JOIN country ON city.countrycode = country.code: This part of the query performs an inner join between the city and country tables. It matches rows where the countrycode column in the city table matches the code column in the country table. This join is used to associate cities with their respective countries.

WHERE country.continent = "Asia": This condition filters the joined rows. It selects only the rows where the continent column in the country table has the value "Asia".*/



/**DIFFERENCE BETWEEN ROUND AND FLOOR*/
SELECT ROUND(3.75, 1); -- Returns 3.8
SELECT ROUND(3.25, 0); -- Returns 3
/**ROUND:
The ROUND function is used to round a numeric value to a specified number of decimal places.
It rounds the value to the nearest integer or to the specified number of decimal places.
If the decimal portion is exactly halfway between two integers, ROUND rounds to the nearest even integer.
Syntax: ROUND(column_name, decimals) or ROUND(value, decimals)*/

SELECT FLOOR(3.75); -- Returns 3
SELECT FLOOR(3.25); -- Returns 3
/**The FLOOR function is used to round down a numeric value to the nearest integer that is less than or equal to the original value.
It truncates the decimal portion of the value, essentially giving you the largest integer less than or equal to the original value.
Syntax: FLOOR(column_name) or FLOOR(value)*/
