--Kamila de Souza Vieira
--1 questão
SELECT name, continent, population FROM world
--2 questao
SELECT name FROM world
WHERE population >= 200000000
--3 questao
SELECT name, gdp / population
FROM world
WHERE population >= 200000000;
--4 questao
SELECT name, population/1000000
FROM world
WHERE continent = 'South America'
--5 questao
SELECT name, population FROM world
WHERE name IN ('France', 'Germany', 'Italy')
--6 questao
SELECT name FROM world
WHERE name LIKE '%United%'
--7 questao
SELECT name, population, area FROM world
WHERE area >= 3000000 OR population >= 250000000
--8 questao
SELECT name, population, area FROM world
WHERE area >= 3000000 XOR population >= 250000000
