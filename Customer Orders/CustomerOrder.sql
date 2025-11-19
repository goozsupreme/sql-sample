DROP DATABASE IF EXISTS CustOrder;
CREATE DATABASE CustOrder;
USE CustOrder;

DROP TABLE IF EXISTS Customer;
CREATE TABLE  Customer (
    custID       VARCHAR(20),
    fname        VARCHAR(20),
    lname        VARCHAR(20),
    city         VARCHAR(15),
    state        VARCHAR(15),
    CONSTRAINT   customer_PK PRIMARY KEY (custID)
);

-- insert values into Customer table
INSERT INTO Customer (custID, fname, lname, city, state)
    Values ("10101" , "John" ,"Gray", "Lynden", "Washington");
INSERT INTO Customer (custID, fname, lname, city, state)
    Values ("10298" , "Leroy", "Brown", "Pinetop", "Arizona");
INSERT INTO Customer (custID, fname, lname, city, state)
    Values ("10299" , "Elroy", "Keller", "Snoqualmie", "Washington");
INSERT INTO Customer (custID, fname, lname, city, state)
    Values ("10315" , "Lisa", "Jones", "Oshkosh", "Wisconsin");
INSERT INTO Customer (custID, fname, lname, city, state)
    Values ("10325" , "Ginger", "Schultz", "Pocatello", "Idaho");
INSERT INTO Customer (custID, fname, lname, city, state)
    Values ("10329" , "Kelly", "Mendoza" "Kailua", "Hawaii");
INSERT INTO Customer (custID, fname, lname, city, state)
    Values ("10330" , "Shawn", "Dalton", "Cannon Beach", "Oregon");
INSERT INTO Customer (custID, fname, lname, city, state)
    Values ("10338" , "Michael", "Howell", "Tillamook", "Oregon");
INSERT INTO Customer (custID, fname, lname, city, state)
    Values ("10339" , "Anthony", "Sanchez", "Winslow", "Arizona");
INSERT INTO Customer (custID, fname, lname, city, state)
    Values ("10408" , "Elroy", "Cleaver", "Globe", "Arizona");
INSERT INTO Customer (custID, fname, lname, city, state)
    Values ("10410" , "Mary Ann", "Howell", "Charleston", "South Carolina");
INSERT INTO Customer (custID, fname, lname, city, state)
    Values ("10413" , "Donald", "Davids", "Gila Bend", "Arizona");
INSERT INTO Customer (custID, fname, lname, city, state)
    Values ("10419" , "Linda", "Sakahara", "Sakahara", "Arizona");
INSERT INTO Customer (custID, fname, lname, city, state)
    Values ("10429" , "Sarah", "Graham", "Greensboro", "North Carolina");
INSERT INTO Customer (custID, fname, lname, city, state)
    Values ("10438" , "Kevin", "Smith", "Durango", "Colorado");
INSERT INTO Customer (custID, fname, lname, city, state)
    Values ("10449" , "Isabela", "Moore", "Yuma", "Yuma");
INSERT INTO Customer (custID, fname, lname, city, state)
    Values ("10439" , "Conrad", "Giles", "Telluride", "Colorado");

DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    orderNum      INT AUTO_INCREMENT,
    custID        VARCHAR(5),
    Date_ordered  DATE,
    item          VARCHAR(20),
    quantity      INT,
    price         DOUBLE,
    CONSTRAINT orders_PK PRIMARY KEY (orderNum),
    CONSTRAINT orders_FK1 FOREIGN KEY (custID) REFERENCES Customer(custID)
);

-- insert values into Orders table				
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10330", "1999-6-30", "Pogo stick", 1,28.00);               
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10101", "1999-6-30", "Raft", 1,58.00);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10298", "1999-6-30", "Skateboard", 1, 33.00);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10101", "1999-7-01", "Life Vest", 4, 125.00);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10299", "1999-7-06", "Parachute", 1, 1250.00);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10339", "1999-7-27", "Umbrella", 1, 4.50);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10449", "1999-8-13", "Unicycle", 1, 180.79);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10439", "1999-8-14", "Ski Poles", 2, 25.50);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10101", "1999-8-18", "Rain Coat", 1, 18.30);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10449", "1999-9-01", "Snow Shoes", 1, 45.00);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10298", "1999-9-19", "Lantern", 2, 29.00);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10410", "1999-10-28", "Sleeping Bag", 1, 89.22);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10410", "1999-11-01", "Umbrella", 1, 6.75);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10438", "1999-11-02", "Pillow", 1, 8.50);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10298", "1999-12-01", "Helmet", 1, 22.00);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10449", "1999-12-15", "Bicycle", 1, 380.50);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10449", "1999-12-22", "Canoe", 1, 280.00);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10101", "1999-12-30", "Hoola Hoop", 3, 14.75);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10330", "2000-1-01", "Flashlight", 4, 28.00);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10101", "2000-1-02", "Lantern", 1, 16.00);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10299", "2000-1-18", "Inflatable Mattress", 1, 38.00);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10438", "2000-1-18", "Tent", 1, 79.99);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10413", "2000-1-19", "Lawn chair", 4, 32.00);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10410", "2000-1-30", "Unicycle", 1, 192.50);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10315", "2000-2-02", "Compass", 1, 8.00);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10449", "2000-2-29", "Flashlight", 1, 4.50);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10101", "2000-3-08", "Sleeping Bag", 2, 88.70);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10298", "2000-3-18", "Pocket Knife", 1, 22.38);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10298", "2000-3-18", "Pocket Knife", 1, 22.38);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10449", "2000-3-19", "Canoe Paddle", 2, 40.00);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10298", "2000-4-01", "Ear Muffs", 1, 12.50);
INSERT INTO Orders (custID, date_ordered, item, quantity, price)
    VALUES  ("10330", "2000-4-19", "Shovel", 1, 16.75);