
CREATE DATABASE IF NOT EXISTS bamazon_db;

USE bamazon_db;

CREATE TABLE IF NOT EXISTS headWear (
  ID INTEGER AUTO_INCREMENT NOT NULL,
  prodcat VARCHAR(40) NOT NULL,
  prodname VARCHAR(40) NOT NULL,
  retailorice DECIMAL(20, 2) NOT NULL,
  inventory INT(6) NOT NULL,
PRIMARY KEY (ID)
);


INSERT INTO headWear (prodcat, prodname, retailprice, inventory)
VALUES ("snap back", "yankees", 25.00, 1000);


INSERT INTO headWear (prodcat, prodname, retailprice, inventory)
VALUES ("snap back", "mets", 25.00, 1000);


INSERT INTO headWear (prodcat, prodname, retailprice, inventory)
VALUES ("snap back", "dodgers", 25.00, 1000);


INSERT INTO headWear (prodcat, prodname, retailprice, inventory)
VALUES ("snap back", "twins", 25.00, 140);


INSERT INTO headWear (prodcat, prodname, retailprice, inventory)
VALUES ("snap back", "cubs", 22.00, 340);


INSERT INTO headWear (prodcat, prodname, retailprice, inventory)
VALUES ("snap back", "mariners", 25.00, 1000);


INSERT INTO headWear (prodcat, prodname, retailprice, inventory)
VALUES ("snap back", "astros", 25.00, 1000);


INSERT INTO headWear (prodcat, prodname, retailprice, inventory)
VALUES ("snap back", "knicks", 25.00, 1000);


INSERT INTO headWear (prodcat, prodname, retailprice, inventory)
VALUES ("snap back", "nets", 25.00, 1000);


INSERT INTO headWear (prodcat, prodname, retailprice, inventory)
VALUES ("snap back", "heat", 25.00, 1000);


INSERT INTO headWear (prodcat, prodname, retailprice, inventory)
VALUES ("snap back", "cavaliers", 25.00, 1000);


INSERT INTO headWear (prodcat, prodname, retailprice, inventory)
VALUES ("snap back", "clippers", 25.00, 1000);


INSERT INTO headWear (prodcat, prodname, retailprice, inventory)
VALUES ("snap back", "devils", 25.00, 1000);


INSERT INTO headWear (prodcat, prodname, retailprice, inventory)
VALUES ("snap back", "cowboys", 25.00, 1000);


INSERT INTO headWear (prodcat, prodname, retailprice, inventory)
VALUES ("snap back", "jets", 23.00, 1000);


INSERT INTO headWear (prodcat, prodname, retailprice, inventory)
VALUES ("snap back", "browns", 15.00, 300);


INSERT INTO headWear (prodcat, prodname, retailprice, inventory)
VALUES ("snap back", "mariners", 21.00, 400);


SELECT * FROM headWear;
