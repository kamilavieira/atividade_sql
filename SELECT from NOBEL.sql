--Kamila de Souza Vieira
--NOTA P/ MIM: o UNION serve pra juntar duas listagens diferentes a fim de exibir tudo em uma única lista.
--NOTA P/ MIM 2: ORDER BY variavel DESC -> organiza/lista em ordem decrescente.
--1 questão
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;
--2 questão
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'literature';
--3 questão
SELECT yr, subject FROM nobel
WHERE winner = 'Albert Einstein';
--4 questão
SELECT winner FROM nobel
WHERE yr >= 2000 AND subject = 'peace';
--5 questão
SELECT yr, subject, winner FROM nobel
WHERE yr BETWEEN '1980' AND '1989' AND subject = 'literature';
--6 questão
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
'Thomas Woodrow Wilson','Jimmy Carter','Barack Obama')
  AND subject = 'peace';
--7 questão
SELECT winner FROM nobel
WHERE winner LIKE 'John %';
--8 questão
SELECT *
FROM nobel
WHERE (yr = 1980 AND subject = 'physics')
   OR (yr = 1984 AND subject = 'chemistry');
--9 questão
SELECT *
FROM nobel
WHERE yr = 1980
  AND subject NOT IN ('Chemistry', 'Medicine');
--10 questão
SELECT * FROM nobel
WHERE yr < 1910 AND subject = 'medicine';

UNION

SELECT * FROM nobel
WHERE yr >= 2004 AND subject = 'literature';
--11 questão
SELECT * FROM nobel
WHERE winner = 'PETER GRÜNBERG';
--12 questão
SELECT * FROM nobel
WHERE winner = 'EUGENE O%NEILL';
--13 questão
SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir %'
ORDER BY yr DESC, winner;
--14 questão
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('physics','chemistry'), subject,winner

