--Kamila de Souza Vieira
--1 questao
SELECT population FROM world
  WHERE name = 'Germany'
--2 questao
SELECT name, population FROM world
  WHERE name IN ('Sweden','Norway','Denmark');
--3 questao
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000
