--Kamila de Souza Vieira
--1 questão
SELECT matchid, player FROM goal 
  WHERE teamid = 'GER';
--2 questão
SELECT id,stadium,team1,team2
  FROM game
WHERE id = '1012';
--3 questão
SELECT player, goal.teamid, stadium, mdate
FROM game
JOIN goal ON game.id = goal.matchid
WHERE goal.teamid = 'GER';
--4 questão
SELECT team1, team2, goal.player FROM game JOIN goal ON goal.matchid=game.id
WHERE goal.player LIKE 'Mario%';
--5 questão
SELECT player, teamid, eteam.coach, gtime FROM goal JOIN eteam ON goal.teamid=eteam.id
WHERE gtime<=10;
--6 questão
SELECT mdate, teamname FROM game JOIN eteam ON team1=eteam.id
WHERE coach = 'Fernando Santos';
--7 questão
SELECT goal.player FROM game JOIN goal ON game.id=goal.matchid
WHERE game.stadium = 'National Stadium, Warsaw';
--8 questão
SELECT DISTINCT goal.player
FROM game 
JOIN goal ON game.id = goal.matchid
WHERE (game.team1 = 'GER' OR game.team2 = 'GER')
AND goal.teamid != 'GER';
--9 questão
SELECT eteam.teamname, COUNT(*) AS total_goals
FROM eteam 
JOIN goal ON eteam.id = goal.teamid
GROUP BY eteam.teamname
ORDER BY eteam.teamname;
--10 questão
SELECT game.stadium, COUNT(*) AS total_goals
FROM game
JOIN goal ON game.id = goal.matchid
GROUP BY game.stadium
ORDER BY game.stadium;
--Da 11 em diante professor eu não soube fazer. Peço perdão por isso.
--11 questão
--12 questão
--13 questão

