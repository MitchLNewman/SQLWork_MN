## Using COUNT, get the number of cities in the USA.

mysql> SELECT COUNT(CountryCode) FROM city WHERE CountryCode = 'USA';

## Find out the population and life expectancy for people in Argentina.

SELECT Population, LifeExpectancy FROM country WHERE name = 'Argentina';


## Using IS NOT NULL, ORDER BY, and LIMIT, which country has the highest life expectancy?

SELECT * FROM country WHERE lifeexpectancy IS NOT NULL ORDER BY lifeexpectancy DESC LIMIT 1;

## Using JOIN ... ON, find the capital city of Spain.

SELECT city.name FROM country LEFT JOIN city ON country.capital = city.id WHERE country.code = 'ESP';

## Using JOIN ... ON, list all the languages spoken in the Southeast Asia region.

SELECT cl.language FROM country c LEFT JOIN countrylanguage cl ON c.code = cl.countrycode WHERE c.region = 'Southeast Asia';

## Using a single query, list 25 cities around the world that start with the letter F.

SELECT name FROM city WHERE SUBSTRING(name FROM 1 FOR 1) = 'F' LIMIT 25;

## Using COUNT and JOIN ... ON, get the number of cities in China.

SELECT COUNT(city.name) as number_of_cities_in_China from city left join country on city.countrycode=country.code where country.name= 'China';

## Using aggregate functions, return the number of countries the database contains

SELECT COUNT(Name) FROM country;

## What are the top ten largest countries by area?


SELECT Name, SurfaceArea from country ORDER BY SurfaceArea DESC LIMIT 10;

## List the five largest cities by population in Japan

SELECT city.Name, city.Population from city LEFT JOIN country ON city.CountryCode = country.Code WHERE country.Name="Japan" ORDER BY city.Population DESC LIMIT 5;

 ## List the names and country codes of every country with Elizabeth II as its Head of State. You will need to fix the mistake first

SELECT Name, HeadOfState from country WHERE HeadOfState="Elisabeth II";
