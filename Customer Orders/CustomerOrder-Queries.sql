-- Practice Queries

-- AGGREGATION PART OF THE EXERCISE
-- Select the maximum price of any item ordered in the items_ordered table.
-- Hint: Select the maximum price only.
USE CustOrder;
SELECT item, MAX(price)
FROM Orders;

-- Select the average price of all of the items ordered that were purchased in the month of Dec.
USE CustOrder;
SELECT item, AVG(price), EXTRACT(MONTH FROM date_ordered) "Month"
FROM Orders
WHERE orderNum BETWEEN 15 AND 18
GROUP BY orderNum;

-- What is the total number of rows in the items_ordered table?
USE CustOrder;
SELECT COUNT(orderNum)
FROM Orders;

-- For all of the tents that were ordered in the items_ordered table, what is the price of the lowest tent? 
-- Hint: Your query should return the price only.
USE CustOrder;
SELECT item, MIN(price)
FROM Orders
WHERE item = "Tent";

-- GROUP BY EXERCIES
-- How many people are in each unique state in the customers table?
-- Select the state and display the number of people in each.
-- Hint: count is used to count rows in a column, sum works on numeric data only.
USE CustOrder;
SELECT state, COUNT(state)
FROM Customer
GROUP BY state;

-- From the items_ordered table, select the item, maximum price, and minimum price for each specific item in the table.
-- Hint: The items will need to be broken up into separate groups.
USE CustOrder;
SELECT item, MAX(price)
FROM Orders
GROUP BY price
ORDER BY price DESC;

SELECT item, MIN(price)
FROM Orders
GROUP BY price
ORDER BY price ASC;
 
-- How many orders did each customer make? Use the items_ordered table. 
USE CustOrder;
SELECT fname, lname, COUNT(item)
FROM Customer
JOIN Orders 
    ON Customer.custID = Orders.custID
GROUP BY Customer.custID;

-- Select the customerid, number of orders they made, and the sum of their orders.
USE CustOrder;
SELECT Customer.custID, COUNT(item), SUM(quantity)
FROM Customer
JOIN Orders 
    ON Customer.custID = Orders.custID
GROUP BY Customer.custID;

-- HAVING CLAUSE EXERCIES
-- How many people are in each unique state in the customers table that have more than one person in the state? 
-- Select the state and display the number of how many people are in each if it's greater than 1.
USE CustOrder;
SELECT state, COUNT(state)
FROM Customer
GROUP BY state
    HAVING COUNT(state) > 1;

-- From the items_ordered table, select the item, maximum price, and minimum price for each specific item in the table.
-- Only display the results if the maximum price for one of the items is greater than 190.00.
USE CustOrder;
SELECT item, MAX(price), MIN(price)
FROM Orders
GROUP BY item
    HAVING MAX(price) > 190
ORDER BY MAX(price) ASC, MIN(price) DESC;

-- How many orders did each customer make? Use the items_ordered table. 
-- Select the customerid, number of orders they made, and the sum of their orders if they purchased more than 1 item.
USE CustOrder;
SELECT Customer.custID, COUNT(item), SUM(quantity)
FROM Customer
JOIN Orders 
    ON Orders.custID = Customer.custID
GROUP BY Customer.custID
    HAVING SUM(quantity) > 1;

-- ORDER BY EXERCIES
-- Select the lastname, firstname, and city for all customers in the customers table. 
-- Display the results in Ascending Order based on the lastname.
USE CustOrder;
SELECT lname, fname, city
FROM Customer
JOIN Orders 
    ON Orders.custID = Customer.custID
GROUP BY lname
ORDER BY lname ASC;

-- Same thing as exercise #1, but display the results in Descending order.
USE CustOrder;
SELECT lname, fname, city
FROM Customer
JOIN Orders 
    ON Orders.custID = Customer.custID
GROUP BY lname
ORDER BY lname DESC;

-- Select the item and price for all of the items in the items_ordered table that the price is greater than 10.00.
USE CustOrder;
SELECT item, price
FROM Orders
GROUP BY item
    HAVING price > 10
ORDER BY price DESC;

-- Display the results in Ascending order based on the price.
USE CustOrder;
SELECT item, price
FROM Orders
GROUP BY item
    HAVING price > 10
ORDER BY price ASC;

-- IN an BETWEEN EXERCIES
-- Select the date, item, and price from the items_ordered table for all of the rows that have a price value ranging from 10.00 to 80.00.
USE CustOrder;
SELECT date_ordered, item, price
FROM Orders
WHERE price BETWEEN 10 AND 80
GROUP BY item
ORDER BY price ASC;

-- Select the first name, city, and state from the customers table for all of the rows where the state value is either: 
-- Arizona, Washington, Oklahoma, Colorado, or Hawaii.
USE CustOrder;
SELECT fname, city, state
FROM Customer
WHERE state IN ("Arizona", "Colorado", "Oklahoma", "Washington", "Hawaii")
ORDER BY state, fname;