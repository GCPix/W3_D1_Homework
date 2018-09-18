DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);INSERT INTO people (name) VALUES ('Henrique Batista');
INSERT INTO people (name) VALUES ('David Bell');
INSERT INTO people (name) VALUES ('Valentina Bonetti');
INSERT INTO people (name) VALUES ('Andrew Brown');
INSERT INTO people (name) VALUES ('Gillian Campbell');
INSERT INTO people (name) VALUES ('Jordan Davidson');
INSERT INTO people (name) VALUES ('Neil Davidson');
INSERT INTO people (name) VALUES ('Craig Dunlop');
INSERT INTO people (name) VALUES ('Gil Franca');
INSERT INTO people (name) VALUES ('Hadsan Geeele');
INSERT INTO people (name) VALUES ('Stephen Hart');
INSERT INTO people (name) VALUES ('Anna Henderson');
INSERT INTO people (name) VALUES ('Alistair Kane');
INSERT INTO people (name) VALUES ('Asma Malik');
INSERT INTO people (name) VALUES ('Leah Meromy');
INSERT INTO people (name) VALUES ('Drew Neillie');
INSERT INTO people (name) VALUES ('Neal Rethvun');
INSERT INTO people (name) VALUES ('David Telfer');
INSERT INTO people (name) VALUES ('Raymond Yau');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '23:50');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '19:50');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '13:10');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '19:25');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '15:50');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '20:20');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '22:25');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '21:25');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '13:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '21:45');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '15:50');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '14:55');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '16:55');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '20:30');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '14:25');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '14:45');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '20:50');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '21:10');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '23:25');

