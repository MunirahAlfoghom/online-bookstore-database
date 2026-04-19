-- Categories
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255) NOT NULL,
    ParentCategoryID INT,
    FOREIGN KEY (ParentCategoryID) REFERENCES Categories(CategoryID)
);

-- Books
CREATE TABLE Books (
    ISBN VARCHAR(20) PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255),
    Genre VARCHAR(100),
    PublicationDate DATE,
    Price DECIMAL(10,2),
    QuantityAvailable INT,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- Stock Alerts
CREATE TABLE StockAlerts (
    AlertID INT PRIMARY KEY,
    ISBN VARCHAR(20),
    AlertDate DATE,
    QuantityThreshold INT,
    FOREIGN KEY (ISBN) REFERENCES Books(ISBN)
);

-- Customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(255),
    ShippingAddress TEXT,
    ContactNumber VARCHAR(20),
    Email VARCHAR(255)
);

-- Orders
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    PaymentStatus VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Order Details
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ISBN VARCHAR(20),
    Quantity INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ISBN) REFERENCES Books(ISBN)
);

-- Invoices
CREATE TABLE Invoices (
    InvoiceID INT PRIMARY KEY,
    OrderID INT,
    InvoiceDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Shipping
CREATE TABLE Shipping (
    ShippingID INT PRIMARY KEY,
    OrderID INT,
    ShippingAddress TEXT,
    DeliveryStatus VARCHAR(50),
    TrackingNumber VARCHAR(50),
    ShippingCost DECIMAL(10,2),
    EstimatedDeliveryDate DATE,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Book Details
CREATE TABLE BookDetails (
    ISBN VARCHAR(20) PRIMARY KEY,
    Description TEXT,
    CoverImage VARCHAR(255),
    FOREIGN KEY (ISBN) REFERENCES Books(ISBN)
);

-- Reviews
CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY,
    ISBN VARCHAR(20),
    CustomerID INT,
    Rating INT,
    ReviewText TEXT,
    ReviewDate DATE,
    FOREIGN KEY (ISBN) REFERENCES Books(ISBN),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Popular Books
CREATE TABLE PopularBooks (
    PopularBookID INT PRIMARY KEY,
    ISBN VARCHAR(20),
    Rank INT,
    DateRecorded DATE,
    FOREIGN KEY (ISBN) REFERENCES Books(ISBN)
);

-- Customer Accounts
CREATE TABLE CustomerAccounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    Username VARCHAR(255),
    Password VARCHAR(255),
    EmailPreferences BOOLEAN,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Wishlist
CREATE TABLE Wishlist (
    ID INT PRIMARY KEY,
    CustomerID INT,
    ItemName VARCHAR(255),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
