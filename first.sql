CREATE TABLE `stdent`(
    id INT,
    name VARCHAR(50),
    birth_date DATE,
    phone VARCHAR(10),
    gender VARCHAR(1)
)
INSERT INTO `student`(`id`, `name`, `birth_date`, `phone`, `gender`)
VALUES (
        1,
        'yash borda',
        '2002-04-02',
        '1234567890',
        'm'
    ),
    (
        2,
        'nikunj borda',
        '2000-06-16',
        '1234567890',
        'm'
    );