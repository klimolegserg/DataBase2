CREATE TABLE IF NOT EXISTS genre (
	id SERIAL PRIMARY KEY,
	genre_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS person (
	id SERIAL PRIMARY KEY,
	genre_id INTEGER REFERENCES genre(id),
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS albums (
	id SERIAL PRIMARY KEY,
	person_id INTEGER REFERENCES person(id),
	name_album VARCHAR(60) NOT NULL,
	date_album DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS tracks (
	id SERIAL PRIMARY KEY,
	albums_id INTEGER REFERENCES albums(id),
	track_name VARCHAR(80) NOT NULL,
	duration INTERVAL NOT NULL
);