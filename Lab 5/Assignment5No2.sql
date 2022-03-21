/********************************************************
* This script creates the database for Assignment 5, Question 2
*********************************************************/

DROP DATABASE IF EXISTS AllisonKreiner_studentdata;
CREATE DATABASE AllisonKreiner_studentdata;
USE AllisonKreiner_studentdata;

-- create the tables for the database
CREATE TABLE majors (
  major_id        INT   PRIMARY KEY   AUTO_INCREMENT,
  major_name VARCHAR(30) NOT NUll
 
  
);
CREATE TABLE students (
  student_id      VARCHAR(10)       PRIMARY KEY UNIQUE,
  student_first_name      VARCHAR(40)   NOT NULL,
  student_last_name VARCHAR(40) NOT NULL,
    student_address VARCHAR(50) NOT NULL,
    email_address VARCHAR(50) NOT NULL,
    major_id INT NOT NULL,
    CONSTRAINT students_fk_majors
    FOREIGN KEY(major_id)
    REFERENCES majors(major_id)
    
  
    
);

CREATE TABLE classes (
  class_id        INT   PRIMARY KEY   AUTO_INCREMENT,
  class_name VARCHAR(30) NOT NUll
  
);

CREATE TABLE student_classes (
  student_id VARCHAR(10) NOT NULL,
  class_id INT NOT NULL,
    CONSTRAINT student_classes_fk_students
    FOREIGN KEY(student_id)
    REFERENCES students(student_id),
    CONSTRAINT student_classes_fk_classes
    FOREIGN KEY(class_id)
    REFERENCES classes(class_id)
  
);




-- Insert data into the tables
INSERT INTO majors (major_id, major_name) VALUES
(1, 'Programming'),
(2, 'Networking'),
(3, 'Paralegal Studies'),
(4, 'Web Programming')
;

INSERT INTO classes (class_id, class_name) VALUES
(1, 'IT1025'),
(2, 'MATH1200'),
(3, 'IT1050'),
(4, 'IT2351'),
(5, 'IT1080'),
(6, 'IT2320'),
(7, 'IT1090');



INSERT INTO students (student_id, student_first_name, student_last_name, student_address, email_address, major_id) VALUES
('S1', 'Joe', 'Green', '124 Main St.', 'Joe@school.edu', 1),
('S2', 'Sue', 'Smith', '345 Second St.', 'Sue@school.edu', 1),
('S3', 'Nick', 'Green', '45 York Rd.', 'Nick@school.edu', 2),
('S4', 'Andy', 'Andrews', '600 5th Ave', 'Andy@school.edu', 2),
('S5', 'Allison', 'Kreiner', '14244 Atwater Ave NE', 'Allison@school.edu', 3),
('S6', 'Rae', 'Johnson', '1151 E. Lakeside Dr.', 'Rae@school.edu', 4),
('S7', 'Lucille', 'Fernandez', '2851 Scarborough Rd', 'Lucille@school.edu', 1);



INSERT INTO student_classes (class_id, student_id) VALUES
(1, 'S1'),
(1, 'S2'),
(1, 'S3'),
(1, 'S4'),
(1, 'S5'),
(1, 'S6'),
(1, 'S7'),
(2, 'S1'),
(2, 'S6'),
(3, 'S1'),
(3, 'S2'),
(3, 'S4'),
(4, 'S2'),
(5, 'S5'),
(6, 'S5'),
(7, 'S6');


-- Create a user named mgs_user
CREATE USER IF NOT EXISTS mgs_user@localhost
IDENTIFIED BY 'pa55word';