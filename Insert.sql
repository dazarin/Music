INSERT INTO Ganres (ganre)
VALUES
('Rap'),
('Rock'),
('Pop'),
('Ambient');

INSERT INTO Artists (artist)
VALUES
('Anacondaz'),
('Noize MC'),
('The Qemists'),
('Birtday massacre'),
('Roxette'),
('Тату'),
('Zen garden'),
('Carbon based lifeforms');

INSERT INTO Artists_Ganres (artist_id, ganre_id)
VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 4);

INSERT INTO Albums (album, release_year)
VALUES
('Эволюция', 2011),
('The greatest hits', 2020),
('Warrior sound', 2016),
('Pins and needles', 2010),
('Crash! Boom! Bang', 1994),
('200 по встречной', 2001),
('Simple thought', 2010),
('Interloper', 2010);

INSERT INTO Artists_Albums (artist_id, album_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

INSERT INTO Songs (album_id, song_name, duration)
VALUES
(1, 'Эволюция', 257),
(1, '69', 200),
(1, 'Всем писец', 184),
(1, 'Дома посижу', 195),
(2, 'Потерянные страницы красной книги', 120),
(2, 'Пустые места', 257),
(2, 'Хозяин леса', 270),
(2, 'Вьетнам', 240),
(3, 'Run you', 260),
(3, 'Anger', 270),
(3, 'New design', 240),
(3, 'No more', 247),
(4, 'Midnight', 215),
(4, 'Pins and needles', 260),
(4, 'Sleepwalking', 230),
(4, 'Under your spell', 270),
(5, 'It must have been love', 260),
(5, 'Sleeping in my car', 225),
(5, 'Spending my time', 280),
(5, 'Listen to you heart', 330),
(6, '30 минут', 200),
(6, 'Зачем я', 248),
(6, 'Я твоя не первая', 260),
(6, 'Perfect enemy', 250),
(7, 'Nefel', 192),
(7, 'Anasa', 435),
(7, 'Out there', 300),
(7, 'Polymorfia', 376),
(8, 'Interloper', 388),
(8, 'Central plain', 455),
(8, 'Supersede', 490),
(8, 'M', 335);

INSERT INTO Sbornik (title, release_year)
VALUES
('Ржака', 2017),
('Думы', 2018),
('Экшн', 2019),
('Про любовь', 2020);

INSERT INTO Sbornik_songs (sbornik_id, track_id)
VALUES
(1, 8),
(1, 7),
(1, 4),
(1, 3),
(2, 5),
(2, 6),
(2, 1),
(2, 2),
(3, 9),
(3, 11),
(3, 15),
(3, 14),
(4, 17),
(4, 16),
(4, 22),
(4, 32);