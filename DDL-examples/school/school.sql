SHOW DATABASES;
CREATE DATABASE school;
USE school;

-- TABLES -- 
CREATE TABLE students(
	student_id int NOT NULL AUTO_INCREMENT,
	first_name varchar(10) NOT NULL,
	last_name varchar(12) NOT NULL, 
	age int NOT NULL,
	PRIMARY KEY (student_id)
);

CREATE TABLE classes(
	class_id int NOT NULL AUTO_INCREMENT,
	subject varchar(60) NOT NULL,
	description varchar(100) NOT NULL,
	class_level int NOT NULL,
	PRIMARY KEY (class_id)
);

CREATE TABLE enrollment(
	enrollment_id int Not Null AUTO_INCREMENT,
	student_id int NOT NULL,
	class_id int NOT NULL,
	PRIMARY KEY (enrollment_id),
	FOREIGN KEY (student_id) REFERENCES students(student_id),
	FOREIGN KEY (class_id) REFERENCES classes(class_id)
);

-- STUDENTS --
INSERT INTO students(first_name, last_name, age)
VALUES('Esperanza', 'Cardenas', 26),
      ('Diego', 'Riviera', 24),
      ('Penelope', 'Cruz', 30)
;

-- CLASSES --
INSERT INTO classes(subject, description, class_level)
VALUES('English', 'critical thinking, reading, and writing', 3),
      ('Math', 'study fundamental math', 1),
      ('Science', 'study of life, math, and related fields', 4)
;

-- ENROLLMENT --
INSERT INTO enrollment(student_id, class_id)
VALUES(1,3),
      (2,1),
      (3,2)
;

INSERT INTO enrollment(student_id, class_id)
VALUES(1,1),
      (2,2),
      (3,3)
;

-- SELECTS --
SELECT * FROM students;
SELECT * FROM enrollment;
SELECT * FROM classes;

SELECT s.*, c.* from enrollment e
JOIN students s ON (e.student_id=s.student_id) 
JOIN classes c ON (e.class_id=c.class_id);



