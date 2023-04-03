ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
-- creating database
CREATE DATABASE crudnodejs;

-- using the database
use crudnodejs;


-- creating a table
CREATE TABLE customer (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    phone VARCHAR(15)
);

-- show all tables
SHOW TABLES;

-- to describe the table
describe customer;
