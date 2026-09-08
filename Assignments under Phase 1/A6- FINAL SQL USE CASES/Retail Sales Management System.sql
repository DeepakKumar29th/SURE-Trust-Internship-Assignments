                                    -- Retail Sales Management System--


--1. Data Definition Language (DDL)

CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50)
);

CREATE TABLE Employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(50)
);

CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price NUMERIC(10,2) NOT NULL,
    stock INT DEFAULT 0,
    CHECK (price > 0)
);

CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    employee_id INT NOT NULL,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

CREATE TABLE Order_Items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE INDEX idx_orders_customer ON Orders(customer_id);

-- ALTER statements 

ALTER TABLE Customers
ADD phone VARCHAR(15);

ALTER TABLE Order_Items
ADD CONSTRAINT quantity_check CHECK (quantity > 0);

ALTER TABLE Orders
ALTER COLUMN order_date SET NOT NULL;

CREATE TABLE Test_Table (
    id SERIAL PRIMARY KEY
);

DROP TABLE Test_Table;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--2. Data Manipulation Language (DML)

-- Customers
INSERT INTO Customers (name, email, city) VALUES
('Rahul Sharma','rahul@gmail.com','Delhi'),
('Priya Singh','priya@gmail.com','Mumbai'),
('Amit Kumar','amit@gmail.com','Lucknow'),
('Rohit Yadav','rohit@gmail.com','Noida'),
('Anjali Gupta','anjali@gmail.com','Jaipur'),
('Vikas Singh','vikas@gmail.com','Bhopal'),
('Neha Sharma','neha@gmail.com','Chandigarh'),
('Karan Mehta','karan@gmail.com','Ahmedabad'),
('Pooja Mishra','pooja@gmail.com','Indore'),
('Suresh Patel','suresh@gmail.com','Surat');

-- Employees
INSERT INTO Employees (name, role) VALUES
('Amit Verma','Sales Executive'),
('Neha Gupta','Manager'),
('Ravi Singh','Sales Executive'),
('Kavita Sharma','HR'),
('Manoj Kumar','Sales Executive');

-- Products
INSERT INTO Products (name, price, stock) VALUES
('Laptop',60000,10),
('Phone',25000,20),
('Headphones',2000,50),
('Keyboard',1500,40),
('Mouse',800,60),
('Monitor',12000,15),
('Printer',9000,10),
('Tablet',18000,12),
('Speaker',3000,25),
('Power Bank',1200,30);

-- Orders
INSERT INTO Orders (customer_id, employee_id, order_date) VALUES
(1,1,'2026-03-01'),
(2,2,'2026-03-02'),
(3,1,'2026-03-03'),
(4,3,'2026-03-04'),
(5,2,'2026-03-05'),
(6,1,'2026-03-06'),
(7,2,'2026-03-07'),
(8,3,'2026-03-08');

-- Order Items
INSERT INTO Order_Items (order_id, product_id, quantity) VALUES
(1,1,1),
(1,3,2),
(2,2,1),
(3,4,2),
(3,6,1),
(4,5,3),
(4,2,1),
(5,7,1),
(5,3,2),
(6,8,1),
(6,9,2),
(7,10,3),
(7,1,1),
(8,2,2),
(8,4,1);


-- Update 
UPDATE Products
SET price = price - 200
WHERE name = 'Headphones';

-- Delete
DELETE FROM Customers
WHERE customer_id = 10;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--3. Data Query Language (DQL)

SELECT * FROM Customers;

-- Filter + sort
SELECT * FROM Products
WHERE price > 2000
ORDER BY price DESC;

-- Total number of orders
SELECT COUNT(*) AS total_orders FROM Orders;

-- Orders per customer
SELECT customer_id, COUNT(order_id) AS total_orders
FROM Orders
GROUP BY customer_id
ORDER BY total_orders DESC;

-- Customers having more than 1 order
SELECT customer_id, COUNT(order_id) AS total_orders
FROM Orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

-- Join query (customer + employee + order)
SELECT c.name AS customer, e.name AS employee, o.order_id, o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Employees e ON o.employee_id = e.employee_id;

-- Total sales per product
SELECT p.name, SUM(oi.quantity * p.price) AS total_sales
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name;

-- Subquery (products above average price)
SELECT name FROM Products
WHERE price > (SELECT AVG(price) FROM Products);

-- Average product price
SELECT AVG(price) AS avg_price FROM Products;

-- Maximum and minimum price
SELECT MAX(price) AS max_price, MIN(price) AS min_price
FROM Products;

-- Window function (ranking products by price)
SELECT name, price,
RANK() OVER (ORDER BY price DESC) AS rank_price
FROM Products;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------

--4. Transaction Control Language (TCL)

BEGIN;

INSERT INTO Orders (customer_id, employee_id, order_date)
VALUES (1,1,'2026-03-10');

SAVEPOINT before_items;

INSERT INTO Order_Items (order_id, product_id, quantity)
VALUES (9,2,1);

ROLLBACK TO before_items;

COMMIT;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--5. Data Control Language (DCL)

CREATE USER analyst WITH PASSWORD '12345';

CREATE ROLE sales_role;

GRANT SELECT, INSERT ON Customers TO sales_role;
GRANT SELECT ON Products TO sales_role;

GRANT sales_role TO analyst;

REVOKE INSERT ON Customers FROM sales_role;

------------------------------------------------------------------------------------------------------------------------------------------------------------