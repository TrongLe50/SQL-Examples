/*
SQL syntax for Postgres

Database example of an app storing data, updating, and deleting data
 */

-- Create arcade_scoreboard table
CREATE TABLE
    arcade_scoreboard (position INTEGER, name TEXT, score INTEGER);

-- Add column values 
INSERT INTO
    arcade_scoreboard (position, name, score)
VALUES
    (1, 'JIM', 9921),
    (2, 'JAL', 9900),
    (3, 'AAA', 8088),
    (4, 'ABC', 8086),
    (5, 'JAL', 7182),
    (6, 'BOB', 6439),
    (7, 'MAT', 5184),
    (8, 'LEE', 4792),
    (9, 'ZZZ', 3285),
    (10, 'JAL', 2001);

-- Update high score for JAL
UPDATE arcade_scoreboard
SET
    score = 9920
WHERE
    position IN (
        SELECT
            position
        FROM
            arcade_scoreboard
        WHERE
            name = 'JAL'
        ORDER BY
            position ASC
        LIMIT
            1
    );

-- Delete lowest score from the score board for JAL
DELETE FROM arcade_scoreboard
WHERE
    score IN (
        SELECT
            MIN(score)
        FROM
            arcade_scoreboard
        WHERE
            name = 'JAL'
        LIMIT
            1
    );

-- Return all values in table
SELECT
    *
FROM
    arcade_scoreboard
ORDER BY
    position;


/*
-- Remove columns from table 
ALTER TABLE arcade_scoreboard
DROP COLUMN position,
DROP COLUMN name,
DROP COLUMN score;

-- Add columns to table 
ALTER TABLE arcade_scoreboard
ADD COLUMN position INTEGER,
ADD COLUMN name TEXT,
ADD COLUMN score INTEGER;

-- Remove NULLS from table 
DELETE FROM arcade_scoreboard
WHERE
    POSITION IS NULL
    OR name IS NULL
    OR score IS NULL;
*/