-- database
CREATE DATABASE `personal`;
-- table
CREATE TABLE `user`(
    id INT NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL CHECK (age >= 18),
    gender VARCHAR(10) NOT NULL,
    phone VARCHAR(10) NOT NULL UNIQUE,
    city VARCHAR(15) NOT NULL DEFAULT 'Surat'
);
-- add data
CREATE
INSERT INTO `user` (`id`, `name`, `age`, `gender`, `phone`, `city`)
VALUES (1, 'yash', 21, 'male', '1472583690', 'rajkot');
INSERT INTO `user` (`id`, `name`, `age`, `gender`, `phone`)
VALUES (2, 'kano', 18, 'male', '4879561237'),
    (3, 'jenish', 20, 'male', '9987546128'),
    (4, 'vinay', 23, 'male', '0258964713');
-- only rajkot data display
SELECT *
FROM `user`
WHERE city = 'rajkot';
-- a-z line data print
SELECT *
FROM `user`
ORDER BY name;
-- name and age order by line data
SELECT *
FROM `user`
ORDER BY name,
    age;
-- data update
WHERE id = 1
UPDATE `user`
SET `city` = 'Bhavnager'
WHERE id = 1;
-- only get top 2 data IN TABLE
SELECT *
FROM `user`
LIMIT 2;
-- add 2 user
INSERT INTO `user` (`id`, `name`, `age`, `gender`, `phone`, `city`)
VALUES (5, 'pooja', 21, 'female', '998561147', 'rajkot');
INSERT INTO `user` (`id`, `name`, `age`, `gender`, `phone`, `city`)
VALUES (
        6,
        'shivani',
        23,
        'female',
        '7894561230',
        'rajkot'
    );
-- update user moblie number UPDATE `user`
SET `phone` = '0147852369'
WHERE name = 'pooja';
-- only get top 2 data IN TABLE
WHERE city is 'surat'
SELECT *
FROM `user`
WHERE city = 'Surat'
LIMIT 2;
-- delete pooja
DELETE pooja
DELETE FROM `user`
WHERE id = 5;
-- add pooja
INSERT INTO `user` (`id`, `name`, `age`, `gender`, `phone`, `city`)
VALUES (5, 'pooja', 21, 'female', '998561147', 'rajkot');
-- min age number IN this TABLE (single value data not all) 18 years
SELECT MIN(age)
FROM `user`;
-- min age number IN this TABLE (all value data)
SELECT *
FROM `user`
WHERE age = (
        SELECT MIN(age)
        FROM `user`
    );
-- finds the number of users
SELECT COUNT(id)
FROM `user`;
-- finds the average number of user age
SELECT AVG(age)
FROM `user`;
-- add jatin AND jemisha user
INSERT INTO `user` (`id`, `name`, `age`, `gender`, `phone`, `city`)
VALUES (
        7,
        'jatin',
        21,
        'male',
        '4785120369',
        'Bhavnager'
    ),
    (
        8,
        'jemisha',
        26,
        'female',
        '4785465469',
        'junaghadh'
    );
-- get data start name with 'je'
SELECT *
FROM `user`
WHERE name LIKE 'je%';
-- Surat and Bhavnager user data
SELECT *
FROM `user`
WHERE city IN ('Surat', 'Bhavnager');
-- age 20,21 order by line data age and city name
SELECT *
FROM `user`
WHERE age BETWEEN 20 AND 21
ORDER BY age,
    city;
-- Surat and Bhavnager user, name and age order by line data but only first four
SELECT *
FROM `user`
WHERE city IN ('Surat', 'Bhavnager', 'junaghadh')
ORDER BY city,
    age
LIMIT 4;
-- short form using in form display
SELECT *
FROM `user` AS u
WHERE u.age >= 21;
-- add `email` cloumn 
ALTER TABLE `user`
ADD `email` varchar(255);
-- all user email set demo@gmail.com 
UPDATE `user`
SET `email` = 'demo@gmail.com';
-- remove cloumn email    
ALTER TABLE `user` DROP COLUMN `email`;
-- rename old cloumnname phone to new cloumnname moblie_number
ALTER TABLE `user`
    RENAME COLUMN `phone` to `mobile`;