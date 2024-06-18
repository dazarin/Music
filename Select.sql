-- 2.1 Название и продолжительность самого длительного трека

SELECT song_name, duration FROM Songs
ORDER BY duration DESC
LIMIT 1;

-- или

SELECT song_name, duration FROM Songs
WHERE duration = (SELECT MAX(duration) from Songs);

-- 2.2 Название треков, продолжительность которых не менее 3,5 минут
SELECT song_name FROM Songs
WHERE duration >= 210;

-- 2.3 Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT title FROM Sbornik
WHERE release_year BETWEEN 2018 AND 2020;

-- 2.4 Исполнители, чьё имя состоит из одного слова
SELECT artist FROM Artists
WHERE artist NOT LIKE '% %';

-- 2.5 Название треков, которые содержат слово «мой» или «my»
SELECT song_name FROM Songs
WHERE song_name LIKE '% my %' 
OR song_name LIKE '% мой %';

-- 3.1 Количество исполнителей в каждом жанре
SELECT ganre, COUNT (artist_id) FROM ganres g
JOIN artists_ganres ag ON g.ganre_id = ag.ganre_id
GROUP BY ganre
ORDER BY ganre;

-- 3.2 Количество треков, вошедших в альбомы 2019–2020 годов
SELECT album, COUNT (track_id) FROM albums
JOIN Songs ON albums.album_id = songs.album_id
WHERE release_year BETWEEN 2019 AND 2020
GROUP BY album;

-- 3.3 Средняя продолжительность треков по каждому альбому
SELECT album, AVG(duration) FROM albums
JOIN Songs ON albums.album_id = songs.album_id
GROUP BY album
ORDER BY album;

-- 3.4 Все исполнители, которые не выпустили альбомы в 2020 году
SELECT artist FROM artists
WHERE artist_id NOT IN (
SELECT artists.artist_id FROM artists
JOIN artists_albums aa ON artists.artist_id = aa.artist_id
JOIN albums ON aa.album_id = albums.album_id
WHERE albums.release_year = 2020);

-- 3.5 Названия сборников, в которых присутствует конкретный исполнитель
SELECT DISTINCT title FROM sbornik
JOIN sbornik_songs ss ON sbornik.sbornik_id = ss.sbornik_id
JOIN Songs ON ss.track_id = songs.track_id
JOIN artists_albums aa ON songs.album_id = aa.album_id
JOIN Artists ON aa.artist_id = artists.artist_id
WHERE Artist = 'Birtday massacre';