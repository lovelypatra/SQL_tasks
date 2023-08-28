CREATE DATABASE IF NOT EXISTS ineuron;
USE ineuron;
CREATE TABLE IF NOT EXISTS Student (
    ID INT PRIMARY KEY NOT NULL,
    Name VARCHAR(20) NOT NULL,
    Age INT NOT NULL,
    Address VARCHAR(25)
);

-- Insert 5 Records
INSERT INTO Student (ID, Name, Age, Address)
VALUES
    (1, 'Amit', 25, 'ward 1'),
    (2, 'Rahul', 24, 'ward 2'),
    (3, 'Rohit', 16, 'ward 3'),
    (4, 'priya', 19, 'ward 4'),
    (5, 'aliva', 18, 'ward 5');