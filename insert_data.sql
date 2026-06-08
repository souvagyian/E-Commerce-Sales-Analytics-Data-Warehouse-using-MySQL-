-- Customers Data

INSERT INTO Customers VALUES
(1,'Rahul','Kolkata'),
(2,'Amit','Howrah'),
(3,'Priya','Delhi'),
(4,'Riya','Mumbai'),
(5,'Ankit','Pune');

-- Products Data

INSERT INTO Products VALUES
(101,'Laptop',50000),
(102,'Mouse',500),
(103,'Keyboard',1500),
(104,'Monitor',12000),
(105,'Headphone',2000);

-- Orders Data

INSERT INTO Orders VALUES
(1001,1,'2025-01-01'),
(1002,2,'2025-01-02'),
(1003,1,'2025-01-03'),
(1004,3,'2025-01-04'),
(1005,4,'2025-01-05');

-- Order Items Data

INSERT INTO Order_Items VALUES
(1,1001,101,1),
(2,1001,102,2),
(3,1002,103,1),
(4,1003,102,5),
(5,1004,104,1),
(6,1005,105,2);
