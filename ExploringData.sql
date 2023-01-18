/* 
Created a Pokemon database from https://gist.github.com/pamelafox/26b9357c6120d3d0d27c2b90c950e8c6
*/

-- Return all columns from table
SELECT *
FROM pokemon;

-- Return Max HP, Attack, Speed, and Defense from all Pokemon
SELECT MAX(HP), MAX(Attack), MAX(Speed), MAX(Defense)
FROM pokemon;

-- Return Minimum HP, Attack, Speed, Defense
SELECT MIN(HP), MIN(Attack), MIN(Speed), MIN(Defense)
FROM pokemon;

-- Return the Average HP, Attack, Speed, Defense
SELECT ROUND(AVG(HP)), ROUND(AVG(Attack)), ROUND(AVG(Speed)), ROUND(AVG(Defense))
FROM pokemon;

-- Return total # of Pokemon for each type
SELECT Type_1 AS Type, COUNT(Type_1)+COUNT(Type_2) AS Total
FROM pokemon
GROUP BY Type_1
ORDER BY Total DESC;

-- Return total # greater than 100 for each type of Pokemon
SELECT Type_1 AS Type, COUNT(Type_1)+COUNT(Type_2) AS Total
FROM pokemon
GROUP BY Type_1
HAVING COUNT(Type_1)+COUNT(Type_2) > 100
ORDER BY Total DESC;

-- Categorize Speed and return # for each category
SELECT
CASE
    WHEN Speed > 125 THEN 'Fast'
    WHEN Speed < 100 THEN 'Slow'
    ELSE 'Average Speed'
END AS SpeedGroup, COUNT(*) AS Count
FROM pokemon
GROUP BY SpeedGroup;

-- Return list of pure water type pokemon
SELECT Name
FROM pokemon
WHERE Type_1 = 'Water' AND Type_2 IS NULL
ORDER BY number;

-- Return list of fire type pokemon whether it's their first or second type
SELECT Name
FROM pokemon
WHERE Type_1 = 'Fire' OR Type_2 = 'Fire'
ORDER BY number;
