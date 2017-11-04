
CREATE DATABASE IF NOT EXISTS bamazon_db;

USE bamazon_db;

CREATE TABLE IF NOT EXISTS albums(
  item_ID INTEGER AUTO_INCREMENT NOT NULL,
  artist VARCHAR(50) NOT NULL,
  album VARCHAR(50) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  stock_quantity INT(5) NOT NULL,
PRIMARY KEY (item_ID)
);


INSERT INTO albums (artist, album, price, stock_quantity)
VALUES ("Ed Sheeran", "Divide", 20.00, 2000);

INSERT INTO albums (artist, album, price, stock_quantity)
VALUES ("Taylor Swift", "Red", 20.00, 2000);

INSERT INTO albums (artist, album, price, stock_quantity)
VALUES ("Alan Jackson", "Greatest Hits", 24.00, 1500);

INSERT INTO albums (artist, album, price, stock_quantity)
VALUES ("Marshall Tucker", "Greatest Hits", 10.00, 2000);

INSERT INTO albums (artist, album, price, stock_quantity)
VALUES ("Toby Keith", "35 Big Hits", 20.00, 2000);

INSERT INTO albums (artist, album, price, stock_quantity)
VALUES ("Carrie Underwood", "Greatest Hits: Decade #1", 25.00, 2000);

INSERT INTO albums (artist, album, price, stock_quantity)
VALUES ("Waylon Jennings", "Greatest Hits", 12.00, 200);

INSERT INTO albums (artist, album, price, stock_quantity)
VALUES ("John Denver", "Greatest Hits", 7.00, 1000);

INSERT INTO albums (artist, album, price, stock_quantity)
VALUES ("Joe Nichols", "Greatest Hits", 5.00, 200);





SELECT * FROM albums;