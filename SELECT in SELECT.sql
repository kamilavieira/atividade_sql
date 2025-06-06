--Kamila de Souza Vieira
--NOTA P/ MIM: https://www.w3schools.com/sql/sql_groupby.asp
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
SELECT name, population
FROM world
WHERE population > (
    SELECT population FROM world WHERE name = 'United Kingdom'
)
AND population < (
    SELECT population FROM world WHERE name = 'Germany'
);
--5 questão
SELECT name,
       CONCAT(ROUND(100*population/(SELECT population
                                    FROM world
                                    WHERE name = 'Germany')),'%') AS percentage

FROM world
WHERE continent = 'Europe';
--6 questão
SELECT name
FROM world
WHERE gdp > ALL (
  SELECT gdp
  FROM world
  WHERE continent = 'Europe' AND gdp IS NOT NULL
);
--7 questão
SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area>0)
--8 questão
SELECT continent, name
FROM world x
WHERE name = (
  SELECT MIN(name)
  FROM world y
  WHERE x.continent = y.continent
);
--9 questão
SELECT name, continent, population
FROM world x
WHERE continent IN (
    SELECT continent
    FROM world y
    GROUP BY continent
    HAVING MAX(population) <= 25000000
);
--10 questão
