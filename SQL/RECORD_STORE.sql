CREATE DATABASE reccom;
use reccom;
CREATE TABLE bands(
ID INT NOT NULL auto_increment,
name 	VARCHAR(255) 	NOT NULL,
PRIMARY KEY (id)
);
CREATE TABLE ALBUMS(
id INT NOT NULL AUTO_INCREMENT,
NAME VARCHAR(255) NOT NULL,
Release_year INT,
band_id INT NOT NULL,
primary key (id),
FOREIGN KEY (band_id) References bands (id)
);

INSERT INTO bands (name)
VALUES ('iRON MAIDEN'), ('deuce'),('KANYE'),('ME');

SELECT *FROM bands;

SELECT * FROM bands LIMIT 2;

SELECT NAME FROM BANDS; 

SELECT id AS 'ID', NAME AS 'Band Name'
FROM bands;

SELECT * FROM bands ORDER BY name;

INSERT INTO ALBUMS (NAME, RELEASE_YEAR, band_id)
VALUES ('THe Number of the Beasts', 1985, 1),
('power Slave', 1984,1),
('nightmare', 2018, 2),
('nightmare',2010,3),
('TestAlbum', NULL , 3);

SELECT * FROM albums;

SELECT DISTINCT name FROM albums;

UPDATE albums
SET release_year = 1982
WHERE id = 1;

SELECT * FROM albums
WHERE release_year <2000;

SELECT * FROM ALBUMS
WHERE NAME LIKE '%ER%' OR band_id = 2;

SELECT * FROM albums
WHERE release_year = 1984 AND band_id = 1;

SELECT * FROM albums
WHERE release_year between 2000 and 2018;

Select * FROM albums
WHERE release_year is NULL;

Delete from albums WHERE id = 5;

SELECT * FROM ALBUMS;

SELECT * FROM bands
INNER JOIN albums ON bands.id = albums.band_id;

SELECT * FROM bands
LEFT JOIN albums ON bands.id = albums.band_id;




SELECT AVG(RELEASE_YEAR) FROM albums;




SELECT band_id, COUNT(band_id) FROM albums
GROUP BY band_id;


SELECT b.name as band_name, COUNT(a.id) as num_albums
FROM bands AS b
LEFT JOIN albums as a ON b.id= a.band_id
Group BY b.id
HAVING Num_albums = 1;


