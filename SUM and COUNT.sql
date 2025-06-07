--Kamila de Souza Vieira

--1 questão
SELECT SUM(population)
FROM world;
--2 questão
SELECT DISTINCT continent FROM world;
--3 questão
SELECT sum(gdp) FROM world
WHERE continent = 'Africa' LIMIT 1;
--4 questão
SELECT COUNT(name) FROM world
WHERE area >= 1000000;
--5 questão
SELECT SUM(population) FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania');
--6 questão
SELECT continent, COUNT(name)
  FROM world
 GROUP BY continent;
--7 questão
SELECT continent, COUNT(name)
  FROM world
 WHERE population>10000000
 GROUP BY continent;
--8 questão
SELECT continent FROM world
GROUP BY continent
HAVING SUM(population) > 100000000


