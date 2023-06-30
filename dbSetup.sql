CREATE TABLE
    IF NOT EXISTS accounts(
        id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
        name varchar(255) COMMENT 'User Name',
        email varchar(255) COMMENT 'User Email',
        picture varchar(255) COMMENT 'User Picture'
    ) default charset utf8 COMMENT '';

--SECTION Cars

CREATE TABLE
    houses(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        bedrooms INT NOT NULL DEFAULT 1,
        bathrooms INT NOT NULL DEFAULT 1,
        year INT NOT NULL DEFAULT 1900,
        price DOUBLE NOT NULL DEFAULT 1.00,
        sqft INT NOT NULL DEFAULT 100,
        description VARCHAR (500),
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    ) default charset utf8 COMMENT '';

INSERT INTO
    houses (
        bedrooms,
        bathrooms,
        year,
        price,
        sqft,
        description
    )
VALUES (
        2,
        3,
        1948,
        100000,
        2000,
        "dopest house in all the land"
    );

INSERT INTO
    houses (
        bedrooms,
        bathrooms,
        year,
        price,
        sqft,
        description
    )
VALUES (
        3,
        2,
        1989,
        400000,
        3000,
        "wow such nice house"
    );

INSERT INTO
    houses (
        bedrooms,
        bathrooms,
        year,
        price,
        sqft,
        description
    )
VALUES (
        4,
        1,
        1903,
        700000,
        6000,
        "wow such old house"
    )