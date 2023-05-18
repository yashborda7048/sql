CREATE DATABASE `order`;
-- TABLE
CREATE TABLE `order`(
    order_id INT NOT NULL UNIQUE,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    price INT NOT NULL,
    quantity INT NOT NULL DEFAULT 1
);
-- add data
INSERT INTO `order`(
        `order_id`,
        `customer_id`,
        `order_date`,
        `price`,
        `quantity`
    )
VALUES (1, 3, '2023-05-18', 500, 3),
    (2, 1, '2023-05-16', 450, 10),
    (3, 1, '2023-04-16', 300, 5),
    (4, 2, '2023-05-12', 350, 9),
    (5, 7, '2023-05-08', 500, 7),
    (6, 4, '2023-05-09', 500, 3),
    (7, 5, '2023-05-12', 500, 2);
-- join table 
SELECT `order.order_id`,
    `user.id`,
    `user.name`
FROM `order`
    INNER JOIN `user` ON `order.customer_id` = `user.id`;