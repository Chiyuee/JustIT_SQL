# Task 3
# Using count, get the number of cities in the USA

SELECT COUNT(*)
FROM world.city
INNER JOIN world.country ON world.country.Code = world.city.CountryCode
WHERE world.country.LocalName = 'United States';

# Task 4
# Find out what the population and life expectancy for people in Argentina (ARG) is

SELECT world.country.Name, world.country.population, world.country.LifeExpectancy
FROM world.country
WHERE world.country.Name = 'Argentina';

# Task 5
# Using ORDER BY, LIMIT, what country has the highest life expectancy?

SELECT world.country.Name, world.country.LifeExpectancy
FROM world.country
ORDER BY world.country.LifeExpectancy DESC
LIMIT 10;

# Task 6
# Select 25 cities around the world that start with the letter 'F' in a single SQL query.

SELECT *
FROM world.city
WHERE world.city.Name LIKE 'F%'
LIMIT 25;

# Task 7 
# Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.

SELECT world.city.ID, world.city.name, world.city.population
FROM world.city
LIMIT 10;

# Task 8
# Create a SQL statement to find only those cities from city table whose population is larger than 2000000.

SELECT world.city.name, world.city.Population
FROM world.city
WHERE world.city.Population > 2000000;

# Task 9
# Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.

SELECT world.city.Name
FROM world.city
WHERE world.city.name LIKE 'Be%';

# Task 10
# Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.

SELECT world.city.name, world.city.population
FROM world.city
WHERE world.city.Population BETWEEN 500000 AND 1000000;

# Task 11
# Create a SQL statement to find a city with the lowest population in the city table.

SELECT MIN(world.city.population)
FROM world.city;

# Task 12
# Create a SQL statement to show the population of Switzerland and all the languages spoken there.

SELECT world.country.name, world.country.Population, world.countryLanguage.Language
FROM world.country
INNER JOIN world.countryLanguage ON world.countryLanguage.CountryCode = world.country.Code
WHERE world.country.name = 'Switzerland';

# Task 13
# Create a SQL statement to find the capital of Spain (ESP).

SELECT world.country.name, world.city.name
FROM world.country
INNER JOIN world.city ON world.city.ID = world.country.capital
WHERE world.country.name = 'Spain';

# Task 14
# Create a SQL statement to find the country with the highest life expectancy.

SELECT world.country.name, world.country.LifeExpectancy
FROM world.country
WHERE world.country.LifeExpectancy = (SELECT MAX(world.country.LifeExpectancy) FROM world.country);

# Task 15
# Create a SQL statement to find all cities from the Europe continent.

SELECT world.country.Continent, world.city.name as 'Cities'
FROM world.country
INNER JOIN world.city ON world.city.countrycode = world.country.code
WHERE world.country.Continent = 'Europe';

# Task 16
# Create a SQL statement to find the most populated city in the city table.

SELECT world.city.name, world.city.Population
FROM world.city
WHERE world.city.Population = (SELECT MAX(world.city.Population) FROM world.city);