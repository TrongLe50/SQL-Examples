/*
SQL syntax for Postgres 
Some analysis at the bottom w/ joins and subqueries
*/

/* Fictional character table */
CREATE TABLE fictional_characters(
    id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    nickname TEXT,
    age INTEGER,
    birthday TEXT,
    gender TEXT,
    anime INTEGER
);

INSERT INTO fictional_characters(
        first_name,
        last_name,
        nickname,
        age,
        birthday,
        gender,
        anime
    )
VALUES (
        'Minato',
        'Namikaze',
        'Konohas Yellow Flash',
        24,
        'January 25',
        'male',
        1
    ),
    (
        'Naruto',
        'Uzumaki',
        NULL,
        19,
        'October 10',
        'male',
        1
    ),
    (
        'Kakashi',
        'Hatake',
        'Copy Ninja Kakashi',
        31,
        'September 15',
        'male',
        1
    ),
    (
        'Izuku',
        'Midoriya',
        'Deku',
        16,
        'July 15',
        'male',
        2
    ),
    (
        'Bakugou',
        'Katsuki',
        NULL,
        17,
        'April 20',
        'male',
        2
    ),
    (
        'Rumi',
        'Usagiyama',
        'Mirko',
        27,
        'March 1',
        'female',
        2
    ),
    (
        'Osamu',
        'Dazai',
        NULL,
        22,
        'June 19',
        'male',
        3
    ),
    (
        'Ryuunosuke',
        'Akutagawa',
        NULL,
        20,
        'March 1',
        'male',
        3
    ),
    (
        'Chuuya',
        'Nakahara',
        NULL,
        22,
        'April 29',
        'male',
        3
    ),
    (
        'Koutarou',
        'Bokuto',
        NULL,
        17,
        'September 20',
        'male',
        4
    ),
    (
        'Tobio',
        'Kageyama',
        NULL,
        15,
        'December 22',
        'male',
        4
    ),
    (
        'Shouyou',
        'Hinata',
        NULL,
        16,
        'June 21',
        'male',
        4
    ),
    (
        'Chitoge',
        'Kirisaki',
        NULL,
        17,
        'June 7',
        'female',
        5
    ),
    (
        'Kosaki',
        'Onodera',
        NULL,
        17,
        'June 15',
        'female',
        5
    ),
    (
        'Raku',
        'Ichijou',
        NULL,
        17,
        'December 20',
        'male',
        5
    );

SELECT *
FROM fictional_characters;



/* Anime table */
CREATE TABLE anime(
    id SERIAL PRIMARY KEY,
    name TEXT,
    premiered_season TEXT,
    year INTEGER
);

INSERT INTO anime(name, premiered_season, year)
VALUES (
        'Naruto',
        'Fall',
        2002
    ),
    (
        'My Hero Academia',
        'Spring',
        2016
    ),
    (
        'Bungo Stray Dogs',
        'Spring',
        2016
    ),
    (
        'Haikyuu',
        'Spring',
        2014
    ),
    (
        'Nisekoi',
        'Winter',
        2014
    );

SELECT *
FROM anime;



/* Genre table */
CREATE TABLE genre(
    id SERIAL PRIMARY KEY,
    genre_name TEXT
);

INSERT INTO genre(genre_name)
VALUES ('Action'),
    ('Adventure'),
    ('Fantasy'),
    ('Mystery'),
    ('Supernatural'),
    ('Sports'),
    ('Comedy'),
    ('Romance');

SELECT *
FROM genre;



/* Anime w/ genre table */
CREATE TABLE anime_genre(
    id SERIAL,
    name TEXT,
    genre_id INTEGER
);

INSERT INTO anime_genre(name, genre_id)
VALUES ('Naruto', 1),
    ('Naruto', 2),
    ('Naruto', 3),
    ('My Hero Academia', 1),
    ('Bungo Stray Dogs', 1),
    ('Bungo Stray Dogs', 4),
    ('Bungo Stray Dogs', 5),
    ('Haikyuu', 6),
    ('Nisekoi', 7),
    ('Nisekoi', 8);

SELECT *
FROM anime_genre;



/* Voice Actor table */
CREATE TABLE voice_actor(
    id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    language TEXT,
    gender TEXT,
    character TEXT
);

INSERT INTO voice_actor(
        first_name,
        last_name,
        language,
        gender,
        character
    )
VALUES (
        'Junko',
        'Takeuchi',
        'Japanese',
        'female',
        'Naruto'
    ),
    (
        'Stephanie',
        'Sheh',
        'English',
        'female',
        'Naruto'
    ),
    (
        'Maile',
        'Flanagan',
        'English',
        'female',
        'Naruto'
    ),
    (
        'Ema',
        'Kogure',
        'Japanese',
        'female',
        'Naruto'
    ),
    (
        'Kenichi',
        'Suzumura',
        'Japanese',
        'male',
        'Kakashi'
    ),
    (
        'Kazuhiko',
        'Inoue',
        'Japanese',
        'male',
        'Kakashi'
    ),
    (
        'Kyle',
        'Hebert',
        'English',
        'male',
        'Kakashi'
    ),
    (
        'Dave',
        'Wittenberg',
        'English',
        'male',
        'Kakashi'
    ),
    (
        'Toshiyuki',
        'Morikawa',
        'Japanese',
        'male',
        'Minato'
    ),
    (
        'Miyu',
        'Irino',
        'Japanese',
        'male',
        'Minato'
    ),
    (
        'Tony',
        'Oliver',
        'English',
        'male',
        'Minato'
    ),
    (
        'Akeno',
        'Watanabe',
        'Japanese',
        'female',
        'Izuku'
    ),
        (
        'Lara',
        'Woodhull',
        'English',
        'female',
        'Izuku'
    ),
        (
        'Justin',
        'Briner',
        'English',
        'male',
        'Izuku'
    ),
        (
        'Daiki',
        'Yamashita',
        'Japanese',
        'male',
        'Izuku'
    ),
        (
        'Nobuhiko',
        'Okamoto',
        'Japanese',
        'male',
        'Bakugou'
    ),
        (
        'Kate',
        'Oxley',
        'English',
        'female',
        'Bakugou'
    ),
        (
        'Clifford',
        'Chapin',
        'English',
        'male',
        'Bakugou'
    ),
        (
        'Sachi',
        'Kokuryu',
        'Japanese',
        'female',
        'Bakugou'
    ),
        (
        'Sayaka',
        'Kinoshita',
        'Japanese',
        'female',
        'Rumi'
    ),
        (
        'Anairis',
        'Quinones',
        'English',
        'female',
        'Rumi'
    ),
    (
        'Mamoru',
        'Miyano',
        'Japanese',
        'male',
        'Osamu'
    ),
    (
        'Kaiji',
        'Tang', 
        'English',
        'male',
        'Osamu'
    ),
    (
        'Kensho',
        'Ono', 
        'Japanese',
        'male',
        'Ryuunosuke'
    ),
    (
        'Brian',
        'Beacock',
        'English',
        'male',
        'Ryuunosuke'
    ),
    (
        'Kishou',
        'Taniyama',
        'Japanese',
        'male',
        'Chuuya'
    ),
    (
        'Nicolas',
        'Roye',
        'English',
        'male',
        'Chuuya'
    ),
    (
        'Ryouhei',
        'Kimura',
        'Japanese',
        'male',
        'Koutarou'
    ),
    (
        'Ian',
        'Sinclair',
        'English',
        'male',
        'Koutarou'
    ),
    (
        'Kaito',
        'Ishikawa',
        'Japanese',
        'male',
        'Tobio'
    ),
    (
        'Scott',
        'Gibbs',
        'English',
        'male',
        'Tobio'
    ),
    (
        'Ayumu',
        'Murase',
        'Japanese',
        'male',
        'Shouyou'
    ),
    (
        'Bryson',
        'Baugus',
        'English',
        'male',
        'Shouyou'
    ),
    (
        'Nao',
        'Touyama',
        'Japanese',
        'female',
        'Chitoge'
    ),
    (
        'Kana',
        'Hanazawa',
        'Japanese',
        'female',
        'Kosaki'
    ),
    (
        'Kouki',
        'Uchiyama',
        'Japanese',
        'male',
        'Raku'
    );

SELECT *
FROM voice_actor;



/* Returns list of anime with their genres */
SELECT ag.name, g.genre_name
FROM anime_genre AS ag
    JOIN genre AS g
    ON ag.genre_id = g.id;

/* How many of each genre are there? */
SELECT g.genre_name, COUNT(*) AS total_number
FROM anime_genre AS ag
    JOIN genre AS g
    ON ag.genre_id = g.id
GROUP BY g.genre_name
ORDER BY COUNT(*) DESC, genre_name;

/* Generates a list of English dub voice actors, their characters, and anime */
SELECT a.name AS anime_title, va.first_name, va.last_name, fc.first_name AS character_first_name, fc.last_name AS character_last_name, va.language
FROM fictional_characters AS fc
    JOIN voice_actor AS va
    ON fc.first_name = va.character
    JOIN anime AS a
    ON fc.anime = a.id
WHERE va.language = 'English'
ORDER BY a.name, va.first_name;

/* Return Romance anime with information about anime, character, voice actors */
SELECT fc.first_name AS character_first_name, 
    fc.last_name AS character_last_name,
    fc.age,
    fc.birthday,
    fc.gender,
    va.first_name AS voice_actor_first_name,
    va.last_name AS voice_actor_last_name,
    va.language,
    va.gender AS voice_actor_gender
FROM fictional_characters AS fc
    JOIN voice_actor AS va
    ON fc.first_name = va.character
WHERE anime = (
    SELECT a.id
    FROM anime_genre AS ag
        JOIN genre AS g
        ON ag.genre_id = g.id
        JOIN anime AS a
        ON ag.name = a.name
    WHERE g.genre_name = 'Romance'
    )
;
