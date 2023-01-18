```sql
-- Creates candy_rating table with column names and datatypes
CREATE TABLE candy_rating(
id INTEGER PRIMARY KEY,
name TEXT,
type TEXT,
company TEXT,
rating INTEGER);

-- Adding data into the table
INSERT INTO candy_rating (id, name, type, company, rating)
VALUES
(1, 'Snickers', 'Chocolate', 'Mars Inc', 10),
(2, 'KitKat', 'Chocolate', 'The Hershey Company', 8),
(3, 'Hi-Chew', 'Fruity', 'Morinaga & Company', 10),
(4, 'Reeses Peanut Butter Cups', 'Chocolate', 'The Hershey Company', 9),
(5, 'M&Ms', 'Chocolate', 'Mars Inc', 7),
(6, 'Skittles', 'Fruity', 'Mars Inc', 8),
(7, 'Starbursts', 'Fruity', 'Mars Inc', 8),
(8, 'Sour Patch Kids', 'Fruity', 'Mondelez International', 5),
(9, 'Hershey Bar', 'Chocolate', 'The Hershey Company', 7),
(10, 'Twix', 'Chocolate', 'Mars Inc', 8),
(11, 'AirHeads', 'Fruity', 'Perfetti Van Melle', 6),
(12, 'Laffy Taffy', 'Fruity', 'Ferrara Candy Company', 5),
(13, 'Twizzlers', 'Fruity', 'The Hershey Company', 4),
(14, 'Milky Way', 'Chocolate', 'Mars Inc', 8),
(15, 'Lemonhead', 'Fruity', 'Ferrara Candy Company', 7);

-- Select all columns from table
SELECT *
FROM candy_rating;

-- Return average rating for each candy type, rounded by 1 decimal place
SELECT type, ROUND(AVG(rating), 1) AS Avg_Rating
FROM candy_rating
GROUP BY type
ORDER BY AVG(rating) DESC;

-- Return average rating for each company, rounded by 1 decimal place
SELECT company, ROUND(AVG(rating), 1) AS Avg_Rating
FROM candy_rating
GROUP BY company
ORDER BY AVG(rating) DESC;

```
