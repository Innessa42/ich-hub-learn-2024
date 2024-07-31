
-- One to one

CREATE TABLE IF NOT EXISTS Person (
id INT PRIMARY KEY,
first_name Varchar(45),
last_name Varchar(50)
-- ..... 
);

CREATE TABLE IF NOT EXISTS Passport (
id INT PRIMARY KEY,
passport_number Varchar(15),
passport_id Varchar(25),
issued_by Varchar(75),
issue_year Date,
exp_date Date,
user_id INT UNIQUE,
FOREIGN KEY (user_id) REFERENCES Person(id)
);

-- one to many
-- many to many


CREATE TABLE IF NOT EXISTS Store (
id INT PRIMARY KEY,
address Varchar(255),
name Varchar(55)
);

CREATE TABLE IF NOT EXISTS Customers (
id INT PRIMARY KEY,
first_name Varchar(45),
last_name Varchar(50)
);

CREATE TABLE IF NOT EXISTS StoreCustomers (
store_id INT,
customer_id INT,
PRIMARY KEY (store_id, customer_id),
FOREIGN KEY (store_id) REFERENCES Store(id),
FOREIGN KEY (customer_id) REFERENCES Customers(id)
);
-- CREATE TABLE IF NOT EXISTS Teacher (
-- id INT PRIMARY KEY,
-- first_name Varchar(45),
-- last_name Varchar(50)
-- ..... 
-- );

-- CREATE TABLE IF NOT EXISTS Class (
-- id INT PRIMARY KEY,
-- class_number INT,
-- teacher_id INT,
-- FOREIGN KEY (teacher_id) REFERENCES Teacher(id)
-- );

-- CREATE TABLE IF NOT EXISTS Student (
-- id INT PRIMARY KEY,
-- first_name Varchar(45),
-- last_name Varchar(50),
-- class_id INT,
-- FOREIGN KEY (class_id) REFERENCES Class(id)
-- );