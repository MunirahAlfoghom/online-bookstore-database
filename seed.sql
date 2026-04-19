-- Categories
INSERT INTO Categories VALUES
(1, 'Fiction', NULL),
(2, 'Science', NULL),
(3, 'Technology', NULL);

-- Books
INSERT INTO Books VALUES
('ISBN001', 'The Great Novel', 'John Smith', 'Fiction', '2020-01-01', 50.00, 10, 1),
('ISBN002', 'Science Basics', 'Alice Brown', 'Science', '2019-05-10', 40.00, 15, 2),
('ISBN003', 'Learning SQL', 'David Lee', 'Technology', '2021-03-15', 60.00, 8, 3);

-- Customers
INSERT INTO Customers VALUES
(1, 'Munirah', 'Riyadh', '0500000000', 'munirah@email.com'),
(2, 'Ahmed', 'Jeddah', '0511111111', 'ahmed@email.com');

-- Orders
INSERT INTO Orders VALUES
(1, 1, '2024-01-01', 100.00, 'Paid'),
(2, 2, '2024-01-05', 40.00, 'Pending');

-- OrderDetails
INSERT INTO OrderDetails VALUES
(1, 1, 'ISBN001', 2, 50.00),
(2, 2, 'ISBN002', 1, 40.00);

-- Invoices
INSERT INTO Invoices VALUES
(1, 1, '2024-01-01', 100.00),
(2, 2, '2024-01-05', 40.00);

-- Shipping
INSERT INTO Shipping VALUES
(1, 1, 'Riyadh', 'Delivered', 'TRK123', 10.00, '2024-01-03'),
(2, 2, 'Jeddah', 'Processing', 'TRK456', 8.00, '2024-01-07');

-- Reviews
INSERT INTO Reviews VALUES
(1, 'ISBN001', 1, 5, 'Excellent book!', '2024-01-02'),
(2, 'ISBN002', 2, 4, 'Very useful', '2024-01-06');

-- CustomerAccounts
INSERT INTO CustomerAccounts VALUES
(1, 1, 'munirah_user', '1234', TRUE),
(2, 2, 'ahmed_user', '5678', FALSE);

-- Wishlist
INSERT INTO Wishlist VALUES
(1, 1, 'Learning SQL'),
(2, 2, 'The Great Novel');

-- PopularBooks
INSERT INTO PopularBooks VALUES
(1, 'ISBN001', 1, '2024-01-01'),
(2, 'ISBN002', 2, '2024-01-01');

-- StockAlerts
INSERT INTO StockAlerts VALUES
(1, 'ISBN003', '2024-01-01', 5);

-- BookDetails
INSERT INTO BookDetails VALUES
('ISBN001', 'A great fiction novel', 'cover1.jpg'),
('ISBN002', 'Basic science concepts', 'cover2.jpg'),
('ISBN003', 'Learn SQL easily', 'cover3.jpg');
