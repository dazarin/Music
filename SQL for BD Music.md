CREATE TABLE IF NOT EXISTS Ganres (
    ganre_id SERIAL PRIMARY KEY, 
    ganre VARCHAR(40) UNIQUE NOT NULL
);
CREATE TABLE IF NOT EXISTS Artists (
    artist_id SERIAL PRIMARY KEY, 
    artist VARCHAR(128) NOT NULL
);
CREATE TABLE IF NOT EXISTS ArtistsGanres (
    artist_id INTEGER NOT NULL REFERENCES Artists(artist_id),
    ganre_id INTEGER NOT NULL REFERENCES Ganres(ganre_id),
    CONSTRAINT pk_artistsganres PRIMARY KEY (artist_id, ganre_id)
);
CREATE TABLE IF NOT EXISTS Albums (
    album_id SERIAL PRIMARY KEY, 
    album VARCHAR(128) NOT NULL, 
    release_year INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS Songs (
    track_id SERIAL PRIMARY KEY, 
    song_name VARCHAR(128) NOT NULL,
    album_id INTEGER NOT NULL REFERENCES Albums(album_id),
    duration INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS ArtistsAlbums (
    artist_id INTEGER NOT NULL REFERENCES Artists(artist_id),
    album_id INTEGER NOT NULL REFERENCES Albums(album_id),
    CONSTRAINT pk_artistsalbums PRIMARY KEY (artist_id, album_id)
);
CREATE TABLE IF NOT EXISTS Sbornik (
    sbornik_id SERIAL PRIMARY KEY,
    title VARCHAR(128) NOT NULL,
    release_year INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS SbornikSongs (
    sbornik_id INTEGER NOT NULL REFERENCES Sbornik(sbornik_id),
    track_id INTEGER NOT NULL REFERENCES Songs(track_id),
    CONSTRAINT pk_sborniksongs PRIMARY KEY (sbornik_id, track_id)
);