CREATE KEYSPACE IF NOT EXISTS studentdb
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE studentdb;

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id text PRIMARY KEY,
    name text,
    major text,
    gpa decimal
);

INSERT INTO students (id, name, major, gpa)
VALUES ('STU00001', 'Cornelius Mulyokela', 'Computer Science', 3.89);

INSERT INTO students (id, name, major, gpa)
VALUES ('STU00002', 'Alice Johnson', 'Data Science', 3.75);

INSERT INTO students (id, name, major, gpa)
VALUES ('STU00003', 'Michael Lee', 'Cybersecurity', 3.92);

SELECT * FROM students;
SELECT name FROM students;
SELECT name, major FROM students;
SELECT * FROM students WHERE major = 'Computer Science' ALLOW FILTERING;