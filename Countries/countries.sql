
SELECT language, percentage, name AS country_name
FROM languages
JOIN countries ON countries.id= languages.country_id
WHERE language = 'Slovene';


SELECT countries.name AS country, COUNT(cities.id) AS cities
FROM countries
JOIN cities ON countries.code = cities.country_code
GROUP BY countries.code
ORDER BY COUNT(cities.id) desc;


SELECT cities.population, cities.name AS city_name
FROM cities
JOIN countries ON cities.country_code = countries.code
WHERE countries.name = 'Mexico' and cities.population > 500000
ORDER BY cities.population DESC;


SELECT language, percentage, name AS country_name
FROM languages
JOIN countries ON countries.id= languages.country_id
WHERE percentage > 89
ORDER BY percentage DESC;



SELECT name, surface_area, population 
FROM countries 
WHERE surface_area < 501 and population > 100000;

 
SELECT name, government_form, capital, life_expectancy
FROM countries
WHERE government_form = 'Constitutional Monarchy' and capital > 200 and life_expectancy > 75


SELECT countries.name, cities.name, cities.district, cities.population
FROM cities
JOIN countries ON countries.code=cities.country_code
WHERE countries.name = 'Argentina' and cities.district = 'Buenos Aires' and cities.population > 500000;


SELECT region, COUNT(countries.id) AS countries
FROM countries
GROUP BY region 
ORDER BY COUNT(id) DESC;