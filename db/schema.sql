ALTER USER postgres WITH PASSWORD '1';

CREATE USER repl_user WITH REPLICATION PASSWORD '1';

SELECT pg_create_physical_replication_slot('replication_slot');

CREATE TABLE IF NOT EXISTS email (
    id SERIAL PRIMARY KEY,
    email VARCHAR(40) NOT NULL 
);

CREATE TABLE IF NOT EXISTS phone (
    id SERIAL PRIMARY KEY,
    phone VARCHAR(20) NOT NULL 
);

INSERT INTO email (email)
VALUES('lol@kek.ru');

INSERT INTO phone (phone)
VALUES('89999999999');