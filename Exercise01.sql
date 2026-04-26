CREATE DATABASE bt01;
USE bt01;

CREATE TABLE authors (
	id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    birth_year INT,
    nationality VARCHAR(50)
);
CREATE TABLE books (
	id INT PRIMARY KEY AUTO_INCREMENT,
    book_name VARCHAR(150) NOT NULL,
    category VARCHAR(200),
    author_id INT,
    price DECIMAL(10, 2) NOT NULL DEFAULT 0 CHECK(price > 0),
    publish_year INT,
    FOREIGN KEY (author_id) REFERENCES authors(id)
);
CREATE TABLE customers (
	id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(50) UNIQUE,
    registration_date DATE DEFAULT(CURRENT_DATE)
);