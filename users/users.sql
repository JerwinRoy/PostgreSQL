-- Grant CONNECT to the database:
GRANT CONNECT ON DATABASE database_name TO username;

-- Grant USAGE on schema:
GRANT USAGE ON SCHEMA schema_name TO username;

-- Grant on all tables for DML statements: SELECT, INSERT, UPDATE, DELETE:
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA schema_name TO username;

-- Grant all privileges on all tables in the schema:
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA schema_name TO username;

-- Grant all privileges on all sequences in the schema:
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA schema_name TO username;

-- Grant all privileges on the database:
GRANT ALL PRIVILEGES ON DATABASE database_name TO username;

-- Grant permission to create database:
ALTER USER username CREATEDB;

-- Make a user superuser:
ALTER USER myuser WITH SUPERUSER;

-- Remove superuser status:
ALTER USER username WITH NOSUPERUSER;

-- For newly created tables need to use alter default
ALTER DEFAULT PRIVILEGES
FOR USER username
IN SCHEMA schema_name
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO username;

-- Create a READ USER
CREATE DATABASE db_name;
CREATE USER read_user WITH PASSWORD 'pass';
GRANT ALL PRIVILEGES ON DATABASE "db_name" to read_user;
ALTER DATABASE db_name OWNER TO read_user;

-- Create a READ_WRITE USER
CREATE DATABASE db_name;
CREATE USER read_write_user WITH PASSWORD 'pass';
\c db_name
GRANT SELECT,INSERT,UPDATE ON ALL TABLES IN SCHEMA public TO read_write_user;
GRANT ALL PRIVILEGES ON DATABASE "db_name" to read_write_user;