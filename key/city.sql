CREATE TABLE city (
    city_id INT NOT NULL AUTO_INCREMENT,
    city_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (city_id)
);
-- add some data 
INSERT INTO `city`(`city_name`)
VALUES ('Agra'),
    ('Delhi'),
    ('Bhopal'),
    ('Surat'),
    ('Jaypur');
-- add value for right join table 
INSERT INTO `city` (`city_name`) value ('Rajkot'),
    ('Mumbai');

    