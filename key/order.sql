CREATE TABLE `order`(
    order_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(50) NOT NULL,
    quantity INT NOT null,
    details VARCHAR(50) NOT NULL,
    PRIMARY KEY (order_id)
);
INSERT INTO `order`(`product_name`, `quantity`, `details`)
VALUES('Chais', 8, '10 boxes x 20 bags'),
    ('Aniseed Syrup', 10, ' 12 - 550 ml bottles'),
    ('Ikura', 1, ' 48 - 6 oz jars'),
    ('Alice Mutton', 4, ' 12 - 200 ml jars'),
    (
        'Queso Manchego La Pastora',
        9,
        '12 - 1 lb pkgs.'
    ),
    ('Sir Rodneys Scones', 6, '16 kg pkg.'),
    ('Tunnbröd', 7, ''),
    ('NuNuCa Nuß-Nougat-Creme ', 4, ''),
    ('Gorgonzola Telino ', 4, '');
    
UPDATE `order`
SET `details` = '48 pieces'
WHERE `order`.`order_id` = 9;