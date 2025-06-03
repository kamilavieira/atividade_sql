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



--RESTANTE DA ATIVIDADE FEITO APÓS A AULA AO VIVO DE INTRODUÇÃO AO SQL
--NOTA P/ MIM: o AS no SQL serve pra nomear uma variável temporária que armazena um valor, mas não muda nada no banco de dados original.
--9 questao
SELECT name, 
  ROUND(population / 1000000, 2) AS population_millions,
  ROUND(gdp / 1000000000, 2) AS gdp_billions
FROM world
WHERE continent = 'South America';
--10 questao
SELECT name, ROUND(gdp / population, -3) AS per_capita FROM world
WHERE gdp >= 1000000000000 
--11 questao
SELECT name, capital
  FROM world
 WHERE LENGTH(name) = LENGTH(capital)
--12 questao
SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital, 1) AND name != capital
--13 questao
SELECT name
FROM world
WHERE name LIKE '%a%'
  AND name LIKE '%e%'
  AND name LIKE '%i%'
  AND name LIKE '%o%'
  AND name LIKE '%u%'
  AND name NOT LIKE '% %';
