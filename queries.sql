-- setup steps
https://www.gitpod.io/blog/gitpodify

-- log into client
psql -h localhost -d postgres

-- Show all databases
\l

-- create database
create database test

-- connect to database
\c test

-- create table
CREATE TABLE accounts (
	user_id serial PRIMARY KEY,
	username VARCHAR ( 50 ) UNIQUE NOT NULL,
	password VARCHAR ( 50 ) NOT NULL,
	email VARCHAR ( 255 ) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
        last_login TIMESTAMP 
);

-- show all tables
\dt

-- insert
INSERT INTO accounts (username, password, email, created_on) VALUES ('Paul', 'asd1234', 'a@a.com', now());