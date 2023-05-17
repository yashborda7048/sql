CREATE DATABASE personal;
CREATE TABLE user (
    id INT NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL CHECK (age >= 18),
    gender VARCHAR(10) NOT NULL,
    phone VARCHAR(10) NOT NULL UNIQUE,
    city VARCHAR(15) NOT NULL DEFAULT 'Surat'
);
INSERT INTO `user` (`id`, `name`, `age`, `gender`, `phone`, `city`)
VALUES (1, 'yash', 21, 'male', '1472583690', 'rajkot');

INSERT INTO `user` (`id`, `name`, `age`, `gender`, `phone`)
VALUES (2, 'kano', 18, 'male', '4879561237'),
    (3, 'jenish', 20, 'male', '9987546128'),
    (4, 'vinay', 23, 'male', '0258964713');