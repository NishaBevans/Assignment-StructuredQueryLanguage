CREATE DATABASE sql_essentials_db;
USE sql_essentials_db;
CREATE TABLE Members(
	id INT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
    age INT
    );
INSERT INTO Members (id, name, age)
VALUES
(1, 'Alice Smith', 30),
(2, 'Bob Johnson', 25),
(3, 'Charlie Brown', 28),
(4, 'Diana Prince', 35);

CREATE TABLE WorkoutSessions(
	session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255)
);
-- Task 1: Populate tables
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES (1, 1, '2024-10-01', '08:00 AM', 'Yoga'),
(2, 1, '2024-10-02', '09:00 AM', 'Pilates'),
(3, 2, '2024-10-01', '07:00 AM', 'Running'),
(4, 3, '2024-10-03', '06:00 PM', 'Weight Training'),
(5, 4, '2024-10-04', '05:00 PM', 'Swimming'),
(6, 2, '2024-10-05', '08:00 AM', 'Cycling'),
(7, 3, '2024-10-06', '10:00 AM', 'CrossFit');

-- Task 2: Data Update
SET SQL_SAFE_UPDATES = 0;
UPDATE WorkoutSessions
SET session_time = '08:00 PM'
WHERE member_id = 1 AND session_date = '2024-10-01' AND session_time = '08:00 AM';

-- Task 3: Data Deletion - Delete WorkoutSession
DELETE FROM WorkoutSessions
WHERE member_id = 2;

-- Delete Member
DELETE FROM Members
WHERE id = 2;

SELECT * FROM Members, WorkoutSessions;

