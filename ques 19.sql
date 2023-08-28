Use ineuron;
CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);


CREATE TABLE IF NOT EXISTS Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Customers (CustomerID, CustomerName)
VALUES
    (1, 'Raj'),
    (2, 'Rohan'),
    (3, 'Rohit'),
    (4, 'Asit'),
    (5, 'kebo');


INSERT INTO Orders (OrderID, CustomerID, OrderDate)
VALUES
    (1, 1, '2023-01-15'),
    (2, 2, '2023-02-10'),
    (3, 3, '2023-01-20'),
    (4, 1, '2023-03-05'),
    (5, 4, '2023-02-25'),
    (6, 2, '2023-03-15'),
    (7, 3, '2023-04-02'),
    (8, 5, '2023-04-10'),
    (9, 1, '2023-04-18'),
    (10, 2, '2023-05-10');
    
    SELECT
    C.CustomerName,
    COUNT(O.OrderID) AS OrderCount
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName
ORDER BY OrderCount DESC, CustomerName ASC
LIMIT 5;