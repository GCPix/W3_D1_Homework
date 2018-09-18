## Questions

1. Return ALL the data in the 'movies' table.

SELECT * FROM movies;
| show_time
----+-------------------------------------+------+-----------
 1 | Iron Man                            | 2008 | 23:50
 2 | The Incredible Hulk                 | 2008 | 19:50
 3 | Iron Man 2                          | 2010 | 13:10
 4 | Thor                                | 2011 | 19:25
 5 | Captain America: The First Avenger  | 2011 | 15:50
 6 | Avengers Assemble                   | 2012 | 20:20
 7 | Iron Man 3                          | 2013 | 22:25
 8 | Thor: The Dark World                | 2013 | 21:25
 9 | Batman Begins                       | 2005 | 13:00
10 | Captain America: The Winter Soldier | 2014 | 21:45
11 | Guardians of the Galaxy             | 2014 | 15:50
12 | Avengers: Age of Ultron             | 2015 | 14:55
13 | Ant-Man                             | 2015 | 16:55
14 | Captain America: Civil War          | 2016 | 20:30
15 | Doctor Strange                      | 2016 | 14:25
16 | Guardians of the Galaxy 2           | 2017 | 14:45
17 | Spider-Man: Homecoming              | 2017 | 20:50
18 | Thor: Ragnarok                      | 2017 | 21:10
19 | Black Panther                       | 2018 | 23:25
(19 rows)

2. Return ONLY the name column from the 'people' table

SELECT p.name FROM people p;

-- name
-- -------------------
-- Henrique Batista
-- David Bell
-- Valentina Bonetti
-- Andrew Brown
-- Gillian Campbell
-- Jordan Davidson
-- Neil Davidson
-- Craig Dunlop
-- Gil Franca
-- Hadsan Geeele
-- Stephen Hart
-- Anna Henderson
-- Alistair Kane
-- Asma Malik
--  Leah Meromy
--  Drew Neillie
--  Neal Rethvun
--  David Telfer
--  Raymond Yau
-- (19 rows)

-- 3. Oh bother! Someone at CodeClan spelled Neil R's name wrong! Change it to reflect the proper spelling (change 'Neal Rethvun' to 'Neil Ruthven').

SELECT * from people; -- to get ID

-- id |       name
-- ----+-------------------
--  1 | Henrique Batista
--  2 | David Bell
--  3 | Valentina Bonetti
--  4 | Andrew Brown
--  5 | Gillian Campbell
--  6 | Jordan Davidson
--  7 | Neil Davidson
--  8 | Craig Dunlop
--  9 | Gil Franca
-- 10 | Hadsan Geeele
-- 11 | Stephen Hart
-- 12 | Anna Henderson
-- 13 | Alistair Kane
-- 14 | Asma Malik
-- 15 | Leah Meromy
-- 16 | Drew Neillie
-- 17 | Neal Rethvun
-- 18 | David Telfer
-- 19 | Raymond Yau
-- (19 rows)

UPDATE people SET name = ('Neil Ruthven') WHERE id = 17;

--UPDATE 1
-- 4. Return ONLY your name from the 'people' table.

SELECT p.name FROM people p WHErE p.name = 'Gillian Campbell'

-- name
-- ------------------
-- Gillian Campbell
-- (1 row)

-- 5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE FROM movies m WHERE m.title = 'Batman Begins';

-- DELETE 1
-- 6. Create a new entry in the 'people' table with the name of one of the instructors.

INSERT INTO people(name) VALUES ('Colin');
--INSERT 0 1

7. Oh no! Nefarious G7 instructor Alistair Kane has decided to hijack our movie evening! Remove him from the table of people.

SELECT * FROM people p WHERE p.name LIKE ('%Kane%'); -- to get id
-- id |     name
----+---------------
--  13 | Alistair Kane
-- (1 row)
DELETE FROM people p WHERE p.id = 13;
--DELETE 1
-- 8. The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.

INSERT INTO movies m (title, show_time) VALUES ('Avengers: Infinity War', '00:00');

9. The cinema would also like to make the Guardian movies a back-to-back feature. Update the 'Guardians of the Galaxy 2' show time from 14:45 to 18:00

SELECT * FROM movies WHERE m.title LIKE ('%Guard%'); -- find ID
-- INSERT 0 1

marvel=# SELECT * from movies m WHERE m.title LIKE ('%Guard%');

--  id |           title           | year | show_time
-- ----+---------------------------+------+-----------
--  11 | Guardians of the Galaxy   | 2014 | 15:50
--  16 | Guardians of the Galaxy 2 | 2017 | 18:00

UPDATE movies SET show_time = ('18:00') WHERE id = 16;

-- id |           title           | year | show_time
-- ----+---------------------------+------+-----------
-- 11 | Guardians of the Galaxy   | 2014 | 15:50
-- 16 | Guardians of the Galaxy 2 | 2017 | 18:00
-- (2 rows)

## Extension

1. Research how to delete multiple entries from your table in a single command.

-- DELETE FROM table WHERE fieldname in (value1, value2, value3);

-- DELETE FROM table WHERE fieldname BETWEEN x AND Y;-- would work I think for INTS/FLOATS/DOUBLES

-- using <,>,=<,=> would have the same affect

--ALTER TABLE tablename DROP columnName;

-- DELETE FROM table WHERE value1 IN (SELECT fieldname FROM table2 ) -- based on the same field being available in both tables

-- There is also an exists command.  DELETE FROM table WHERE exists (SELECT t.fieldname FROM table2 WHERE condition)

--Anywhere I can use WHERE I can also use AND/OR/NOT to be more specific about what I want to delete.

-- I think there are more but some seem to be specific to a database and others need another language, ie Python, PHP.
