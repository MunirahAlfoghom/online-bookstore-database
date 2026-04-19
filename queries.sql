-- 1. Display all books
SELECT * FROM Books;

-- 2. Display all customers
SELECT * FROM Customers;

-- 3. Show books with their category names
SELECT 
    b.ISBN,
    b.Title,
    b.Author,
    c.CategoryName
FROM Books b
JOIN Categories c ON b.CategoryID = c.CategoryID;

-- 4. Show all orders with customer names
SELECT 
    o.OrderID,
    c.Name AS CustomerName,
    o.OrderDate,
    o.TotalAmount,
    o.PaymentStatus
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;

-- 5. Show order details with book titles
SELECT 
    od.OrderDetailID,
    od.OrderID,
    b.Title,
    od.Quantity,
    od.Price
FROM OrderDetails od
JOIN Books b ON od.ISBN = b.ISBN;

-- 6. Find books that cost more than 45
SELECT Title, Price
FROM Books
WHERE Price > 45;

-- 7. Find customers from Riyadh
SELECT *
FROM Customers
WHERE ShippingAddress = 'Riyadh';

-- 8. Show delivered shipments
SELECT *
FROM Shipping
WHERE DeliveryStatus = 'Delivered';

-- 9. Count total books in each category
SELECT 
    c.CategoryName,
    COUNT(b.ISBN) AS TotalBooks
FROM Categories c
LEFT JOIN Books b ON c.CategoryID = b.CategoryID
GROUP BY c.CategoryName;

-- 10. Find the total sales amount
SELECT SUM(TotalAmount) AS TotalSales
FROM Orders;

-- 11. Show customer reviews with book titles
SELECT 
    r.ReviewID,
    b.Title,
    c.Name AS CustomerName,
    r.Rating,
    r.ReviewText
FROM Reviews r
JOIN Books b ON r.ISBN = b.ISBN
JOIN Customers c ON r.CustomerID = c.CustomerID;

-- 12. Show wishlist items with customer names
SELECT 
    w.ID,
    c.Name AS CustomerName,
    w.ItemName
FROM Wishlist w
JOIN Customers c ON w.CustomerID = c.CustomerID;

-- 13. Find the most popular book
SELECT 
    pb.Rank,
    b.Title
FROM PopularBooks pb
JOIN Books b ON pb.ISBN = b.ISBN
ORDER BY pb.Rank ASC
LIMIT 1;

-- 14. Show stock alerts
SELECT 
    sa.AlertID,
    b.Title,
    sa.AlertDate,
    sa.QuantityThreshold
FROM StockAlerts sa
JOIN Books b ON sa.ISBN = b.ISBN;

-- 15. List customer accounts
SELECT 
    ca.AccountID,
    c.Name,
    ca.Username,
    ca.EmailPreferences
FROM CustomerAccounts ca
JOIN Customers c ON ca.CustomerID = c.CustomerID;
