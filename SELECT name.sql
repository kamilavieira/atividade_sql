--Kamila de Souza Vieira
--1 questao
SELECT name FROM world
  WHERE name LIKE 'Y%'
--2 questao
SELECT name FROM world
  WHERE name LIKE '%Y'
--3 questao
SELECT name FROM world
  WHERE name LIKE '%X%'
--4 questao
SELECT name FROM world
  WHERE name LIKE '%land'
--5 questao
SELECT name FROM world
  WHERE name LIKE 'C%ia'
--6 questao
SELECT name FROM world
  WHERE name LIKE '%oo%'
--7 questao
SELECT name FROM world
  WHERE name LIKE '%a%a%a%'
--8 questao
SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name
--9 questao
SELECT name FROM world
 WHERE name LIKE '%o__o%'
--10 questao
SELECT name FROM world
 WHERE name LIKE '____'
--11 questao
SELECT name
  FROM world
 WHERE name = capital
--12 questao
SELECT name
FROM world
WHERE capital = CONCAT(name, ' City');
--13 questao
SELECT capital,name
FROM world
WHERE capital LIKE CONCAT('%',name,'%');
--14 questao
SELECT capital, name FROM world
WHERE capital LIKE CONCAT(name, '%') AND capital != name
--15 questao
SELECT name, 
  REPLACE(capital, name, '')
  FROM world
 WHERE capital LIKE CONCAT('%', name, '%') AND name != capital
