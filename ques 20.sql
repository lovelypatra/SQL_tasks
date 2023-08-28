Create DATABASE IF NOT EXISTS schema1;
Use schema1;

CREATE TABLE IF NOT EXISTS books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    price DECIMAL(10, 2),
    stock_quantity INT
);

-- Create Orders Table
CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    book_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);


INSERT INTO books (book_id, title, author, price, stock_quantity)
VALUES
    (1, 'Book A', 'Author 1', 19.99, 50),
    (2, 'Book B', 'Author 2', 15.99, 30),
    (3, 'Book C', 'Author 3', 12.99, 40),
    (4, 'Book D', 'Author 4', 14.99, 25),
    (5, 'Book E', 'Author 5', 18.99, 60);


INSERT INTO orders (order_id, book_id, quantity, order_date)
VALUES
    (1, 1, 5, '2023-01-15'),
    (2, 2, 3, '2023-02-10'),
    (3, 3, 4, '2023-01-20'),
    (4, 1, 2, '2023-03-05'),
    (5, 4, 6, '2023-02-25'),
    (6, 2, 8, '2023-03-15'),
    (7, 3, 10, '2023-04-02'),
    (8, 5, 7, '2023-04-10'),
    (9, 1, 3, '2023-04-18'),
    (10, 2, 9, '2023-05-10');

SELECT
    B.title,
    SUM(O.quantity) AS TotalQuantitySold
FROM books B
JOIN orders O ON B.book_id = O.book_id
GROUP BY B.title
ORDER BY TotalQuantitySold DESC
LIMIT 3;