
--Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.






--Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

--SELECT COUNT(ArtistId), ArtistId
--FROM song
--GROUP BY ArtistId;


--select * FROM song;

--Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

--SELECT COUNT(a.Title), a.Title
--FROM Song s
--LEFT JOIN Album a on s.AlbumId = a.Id
--GROUP BY a.Title;

--Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.

--SELECT s.Title,
--       b.title,
--       a.ArtistName
--  FROM Song s
--       LEFT JOIN Artist a on s.ArtistId = a.id
--       LEFT JOIN Album b on s.AlbumId = b.Id
--      WHERE a.Id = 28;

--SELECT * FROM Song;

-------------------------------------------------------
--Using the INSERT statement, add some songs that are on that album to the Song table.

--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Die Kunst der Fuge', 3600, '01/01/1740', 10, 28, 23);
--SELECT * FROM Song

-------------------------------

--Using the INSERT statement, add one, or more, albums by your artist to the Album table.

--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('The Art of Fugue', '01/01/1740', 3600, 'Bach', 28, 10);


-----------------------------
--Using the INSERT statement, add one of your favorite artists to the Artist table.

--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('JS Bach', 1685);


--------------------------
--Write a SELECT statement that lists the Albums with no songs

--SELECT * 

--FROM Song s

--FULL OUTER JOIN Album a on s.AlbumId = a.id

--WHERE s.id is NULL;



---------------------------------------------------------------------------------
--Write a SELECT query that lists all the Artists that have a Jazz or Rock Album

--SELECT * FROM Genre

--SELECT ArtistName
--    FROM Song s
--JOIN Artist a on s.ArtistId = a.id
--WHERE GenreId = 4 or GenreId = 2;




-------------------------
-- Write a SELECT query that lists all the Artists that have a Pop Album

--SELECT ArtistName
--    FROM Song s
--JOIN Artist a on s.ArtistId = a.id
--WHERE GenreId = 7;

/*
SELECT s.Title,
       a.ArtistName
  FROM Song s
       LEFT JOIN Artist a on s.ArtistId = a.id;

*/