CREATE TABLE `user`(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL CHECK (age >= 18),
    phone VARCHAR(10) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL,
    city INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (city) REFERENCES city (city_id)
);
INSERT INTO `user` (`name`, `age`, `phone`, `email`, `city`)
VALUES ('Kano', 18, '4879561237', 'kano@gmail.com', 3),
    (
        'Jenish',
        20,
        '9987546128',
        'Jenish@gmail.com',
        5
    ),
    ('Bhano', 19, '9988946128', 'Bhano@gmail.com', 1),
    (
        'Vinay Bhai',
        23,
        '0258964713',
        'kano@gmail.com',
        2
    ),
    ('Yash', 20, '0256574713', 'Vinay@gmail.com', 4),
    (
        'Ankit Bhai',
        20,
        '9987785128',
        'Ankit@gmail.com',
        1
    ),
    (
        'Hardik Bhai',
        20,
        '99875146574',
        'Hardik@gmail.com',
        1
    );
-- update user age 
UPDATE `user`
SET `age` = '26'
WHERE `user`.`id` = 6;
-- INNER  join table 
SELECT `user`.`id`,
    `user`.`name`,
    `user`.`age`,
    `user`.`phone`,
    `user`.`email`,
    `city`.`city_name` As `city`
FROM `user`
    INNER JOIN `city` ON `user`.`city` = `city`.`city_id`;
-- join table only agra city user data and line by name
SELECT `user`.`id`,
    `user`.`name`,
    `user`.`age`,
    `user`.`phone`,
    `user`.`email`,
    `city`.`city_name` As `city`
FROM `user`
    INNER JOIN `city` ON `user`.`city` = `city`.`city_id`
WHERE `city`.`city_name` = 'Agra'
ORDER BY `user`.`name`;
-- city cloumn datatype change not null to null 
ALTER TABLE `user`
MODIFY `city` INT;
-- add user 
INSERT INTO `user`(`name`, `age`, `phone`, `email`)
VALUES (
        'Abhishek',
        '21',
        '4879961237',
        'Abhishek@gmail.com'
    );
-- Left join table 
SELECT *
FROM `user`
    LEFT JOIN `city` ON `user`.`city` = `city`.`city_id`;
-- user id 6 city value update
UPDATE `user`
SET `city` = null
WHERE id = 6;
-- Left join table age above 20
SELECT *
FROM `user`
    LEFT JOIN `city` ON `user`.`city` = `city`.`city_id`
WHERE age >= 20
ORDER BY name,
    city_name;
-- RIGHT join table 
SELECT *
FROM `user`
    RIGHT JOIN `city` ON `user`.`city` = `city`.`city_id`;
-- CROSS JOIN table match multipal data
SELECT *
FROM `user`
    CROSS JOIN `city` ON `user`.`city` = `city`.`city_id`;
-- get all data CROSS JOIN table (9 user * 7 mumbai)
SELECT *
FROM `user`
    CROSS JOIN `city`;
-- add cloumn
ALTER TABLE `user`
ADD `order` INT NOT NULL DEFAULT 1;
-- two table  join table 
SELECT *
FROM `user`
    LEFT JOIN `city` ON `user`.`city` = `city`.`city_id` -- get all data
    INNER JOIN `order` ON `user`.`order` = `order`.`order_id` -- get only match order id data
WHERE `city`.`city_name` = 'Agra';
-- group by table 
SELECT `city`.`city_name` AS `city`,
    COUNT(city) AS `total`
FROM `user`
    INNER JOIN `city` ON `user`.`city` = `city`.`city_id`
GROUP BY `city`;
-- search city Bhopal and Surat
SELECT `name`,
    `email`
FROM `user`
WHERE city IN (
        SELECT `city_id`
        FROM `city`
        WHERE city_name IN ('Bhopal', 'Surat')
    );