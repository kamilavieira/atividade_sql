--Kamila de Souza Vieira

--1 questão
SELECT name FROM world
  WHERE population > (
    SELECT population FROM world
    WHERE name = 'Russia');
--2 questão
SELECT name
FROM world
WHERE continent = 'Europe'
  AND gdp / population > (
    SELECT gdp / population
    FROM world
    WHERE name = 'United Kingdom'
  );
--3 questão
SELECT name, continent FROM world
WHERE continent IN (
  SELECT continent FROM world
  WHERE name IN ('Australia', 'Argentina'))
ORDER BY name;
--4 questão
SELECT name, population FROM world
WHERE population IN (SELECT population FROM world 
WHERE population > 67026292 AND population < 84432670);
--5 questão

--6 questão
--7 questão
--8 questão
--9 questão
--10 questão
