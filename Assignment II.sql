show pdbs
CREATE PLUGGABLE DATABASE wed_26598_pdb_assI 
ADMIN USER pdb_admin IDENTIFIED BY gauthier123 
FILE_NAME_CONVERT = ('C:\APP\GAUTHIER\PRODUCT\21C\ORADATA\XE\PDBSEED', 
                     'C:\APP\GAUTHIER\PRODUCT\21C\ORADATA\XE\wed_26598_pdb_assI');
ALTER PLUGGABLE DATABASE wed_26598_pdb_assI  OPEN;    
ALTER SESSION SET CONTAINER =wed_26598_pdb_assI ;

CREATE TABLE Users (
    user_id INTEGER PRIMARY KEY,
    name VARCHAR2(100),
    email VARCHAR2(100) UNIQUE
);


CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    order_date DATE,
    CONSTRAINT Orders_Users_FK FOREIGN KEY (user_id) REFERENCES Users(user_id)
);


CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY,
    name VARCHAR2(50),
    price INTEGER
);


CREATE TABLE Transactions (
    transaction_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    CONSTRAINT Transactions_Orders_FK FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    CONSTRAINT Transactions_Products_FK FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Users (user_id, name, email) VALUES (1, 'John Doe', 'john@example.com');
INSERT INTO Users (user_id, name, email) VALUES (2, 'Alice Smith', 'alice@example.com');
INSERT INTO Users (user_id, name, email) VALUES (3, 'Michael Johnson', 'michael@example.com');
INSERT INTO Users (user_id, name, email) VALUES (4, 'Emily Davis', 'emily@example.com');
INSERT INTO Users (user_id, name, email) VALUES (5, 'David Wilson', 'david@example.com');


INSERT INTO Orders (order_id, user_id, order_date) VALUES (101, 1, TO_DATE('2024-03-28', 'YYYY-MM-DD'));
INSERT INTO Orders (order_id, user_id, order_date) VALUES (102, 2, TO_DATE('2024-03-27', 'YYYY-MM-DD'));
INSERT INTO Orders (order_id, user_id, order_date) VALUES (103, 3, TO_DATE('2024-03-26', 'YYYY-MM-DD'));
INSERT INTO Orders (order_id, user_id, order_date) VALUES (104, 4, TO_DATE('2024-03-25', 'YYYY-MM-DD'));
INSERT INTO Orders (order_id, user_id, order_date) VALUES (105, 5, TO_DATE('2024-03-24', 'YYYY-MM-DD'));


INSERT INTO Products (product_id, name, price) VALUES (201, 'Laptop', 1000);
INSERT INTO Products (product_id, name, price) VALUES (202, 'Mouse', 50);
INSERT INTO Products (product_id, name, price) VALUES (203, 'Keyboard', 80);
INSERT INTO Products (product_id, name, price) VALUES (204, 'Monitor', 300);
INSERT INTO Products (product_id, name, price) VALUES (205, 'USB Drive', 20);



INSERT INTO Transactions (transaction_id, order_id, product_id, quantity) VALUES (301, 101, 201, 1);
INSERT INTO Transactions (transaction_id, order_id, product_id, quantity) VALUES (302, 102, 202, 2);
INSERT INTO Transactions (transaction_id, order_id, product_id, quantity) VALUES (303, 103, 203, 2);
INSERT INTO Transactions (transaction_id, order_id, product_id, quantity) VALUES (304, 104, 204, 1);
INSERT INTO Transactions (transaction_id, order_id, product_id, quantity) VALUES (305, 105, 205, 5);
INSERT INTO Transactions (transaction_id, order_id, product_id, quantity) VALUES (306, 101, 202, 3);
INSERT INTO Transactions (transaction_id, order_id, product_id, quantity) VALUES (307, 102, 201, 1);


SELECT * FROM Users;
SELECT * FROM Orders;
SELECT * FROM Products;
SELECT * FROM Transactions;



UPDATE Users
SET email = 'john.doe@newmail.com'
WHERE user_id = 1;


DELETE FROM Transactions
WHERE transaction_id = 302;

SELECT o.order_id, u.name, o.order_date
FROM Orders o
JOIN Users u ON o.user_id = u.user_id;

SELECT o.order_id, u.name, p.name AS product_name, t.quantity, p.price
FROM Orders o
JOIN Users u ON o.user_id = u.user_id
JOIN Transactions t ON o.order_id = t.order_id
JOIN Products p ON t.product_id = p.product_id;

SELECT * FROM Orders
WHERE order_date >= SYSDATE -7 ;


SELECT * FROM Products
ORDER BY price DESC
FETCH FIRST 5 ROWS ONLY;


SELECT u.user_id, u.name, COUNT(t.transaction_id) AS transaction_count
FROM Users u
JOIN Orders o ON u.user_id = o.user_id
JOIN Transactions t ON o.order_id = t.order_id
GROUP BY u.user_id, u.name
HAVING COUNT(t.transaction_id) > 3;















