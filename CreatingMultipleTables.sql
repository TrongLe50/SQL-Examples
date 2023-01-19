/* Creating multiple tables about people and characters I like */

-- Create table of all people and characters with datatypes
CREATE TABLE famous_people(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  other_name TEXT,
  age INTEGER,
  city_born TEXT,
  occupation INTEGER);
  
-- Add in people and characters to table
INSERT INTO famous_people(first_name, last_name, other_name, age, city_born, occupation)
VALUES
  ('Casey', 'Luong', 'Keshi', 28, 'Houston, TX', 1),
  ('George', 'Miller', 'Joji', 30, 'Osaka, Japan', 1),
  ('Nicholas', 'Miller', 'ILLENIUM', 32, 'Downers Grove, IL', 1),
  ('Trevor', 'Christensen', 'Said The Sky', 29, 'Denver, CO', 1),
  ('Nathan', 'Feuerstein', 'NF', 31, 'Gladwin, MI', 1),
  ('Jarad', 'Higgins', 'Juice WRLD', 21, 'Chicago, IL', 1),
  ('Jackie', 'Chan', NULL, 68, 'Victoria Peak, Hong Kong', 2),
  ('Robert', 'Downy Jr.', NULL, 57, 'Manhattan, New York, NY', 2),
  ('Tom', 'Hanks', NULL, 66, 'Concord, CA', 2),
  ('Leonardo', 'DeCaprio', NULL, 48, 'Los Angeles, CA', 2),
  ('Tarik', 'Celik', 'Tarik', 26, 'New York, NY', 3),
  ('Michael', 'Grzesiek', 'Shroud', 28, 'Toronto, Canada', 3),
  ('Saqib', 'Zahid', 'Lirik', 32, NULL, 3),
  ('Maximillian', 'Christensen', 'Maximilian Dood', 39, NULL, 3),
  ('Minato', 'Namikaze', 'Konohas Yellow Flash', 24, NULL, 4),
  ('Izuku', 'Midoriya', 'Deku', 16, NULL, 4),
  ('Osamu', 'Dazai', NULL, 22, NULL, 4),
  ('Koutarou', 'Bokuto', NULL, 17, NULL, 4),
  ('Chitoge', 'Kirisaki', NULL, 17, NULL, 4);



-- Create occupation table with datatypes
CREATE TABLE occupations(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  occupation_id INTEGER);

-- Add occupations associated with number/code
INSERT INTO occupations(name, occupation_id)
VALUES
  ('Musician', 1),
  ('Actor/Actress', 2),
  ('Content Creator', 3),
  ('Fictional Character', 4);



-- Create table of songs with datatypes
CREATE TABLE songs(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  artist_name TEXT,
  song_name TEXT,
  number_of_streams INTEGER);

-- Add songs to table
INSERT INTO songs(artist_name, song_name, number_of_streams)
VALUES
  ('Joji', 'Glimpse of Us', 747887186),
  ('Joji', 'SLOW DANCING IN THE DARK', 1009968276),
  ('Keshi', 'beside you', 106376945),
  ('Keshi', 'like i need you', 137236226),
  ('ILLENIUM', 'Feel Good (feat. Daya)', 243004912),
  ('ILLENIUM', 'All That Really Matters', 15874035),
  ('Said The Sky', 'Potions', 26299889),
  ('Said The Sky', 'Superstar', 9601642),
  ('NF', 'Let You Down', 1242994908),
  ('NF', 'The Search', 409472831),
  ('Juice WRLD', 'Lucid Dreams', 213980891),
  ('Juice WRLD', 'All Girls Are The Same', 1180433070);



-- Create table of movies with datatypes
CREATE TABLE movies(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  movie TEXT,
  actor_first_name TEXT,
  actor_last_name TEXT);

-- Add movie titles and actors/actresses
INSERT INTO movies(movie, actor_first_name, actor_last_name)
VALUES
  ('Rush Hour', 'Jackie', 'Chan'),
  ('Police Story', 'Jackie', 'Chan'),
  ('Iron Man', 'Robert', 'Downy Jr.'),
  ('Avengers: Endgame', 'Robert', 'Downy Jr.'),
  ('Saving Private Ryan', 'Tom', 'Hanks'),
  ('Forrest Gump', 'Tom', 'Hanks'),
  ('Catch Me If You Can', 'Leonardo', 'DeCaprio'),
  ('The Wolf of Wall Street', 'Leonardo', 'DeCaprio');



-- Create content creators table with datatypes
CREATE TABLE content_creators(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  content_type TEXT,
  platform TEXT,
  game TEXT,
  game_genre TEXT);

-- Add content creators
INSERT INTO content_creators(name, content_type, platform, game, game_genre)
VALUES
  ('Tarik', 'Streamer', 'Twitch', 'Valorant', 'FPS'),
  ('Shroud', 'Streamer', 'Twitch', 'Variety', 'FPS'),
  ('Lirik', 'Streamer', 'Twitch', 'Variety', 'Variety'),
  ('JWong', 'Streamer/Youtuber', 'Twitch/Youtube', 'Variety', 'FGC'),
  ('Maximillian Dood', 'Streamer/Youtuber', 'Twitch/Youtube', 'Variety', 'FGC');



-- Create fictional characters table with datatypes
CREATE TABLE fictional_characters(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  gender TEXT,
  anime TEXT);

-- Add fictional characters
INSERT INTO fictional_characters(name, gender, anime)
  VALUES
  ('Minato Namikaze', 'Male', 'Naruto'),
  ('Izuku Midoriya', 'Male', 'My Hero Academia'),
  ('Osamu Dazai', 'Male', 'Bungo Stray Dogs'),
  ('Koutarou Bokuto', 'Male', 'Haikyuu'),
  ('Chitoge Kirisaki', 'Female', 'Nisekoi');
  SELECT * FROM famous_people;
