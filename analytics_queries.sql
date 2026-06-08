-- Show All Customers

SELECT * FROM Customers;

-- Show All Products

SELECT * FROM Products;

-- Customer Wise Total Spending

SELECT
    c.customer_name,
    SUM(p.price * oi.quantity) AS total_spent
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
JOIN Order_Items oi
ON o.order_id = oi.order_id
JOIN Products p
ON oi.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- Product Wise Revenue

SELECT
    p.product_name,
    SUM(p.price * oi.quantity) AS revenue
FROM Products p
JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;

-- Best Selling Products

SELECT
    p.product_name,
    SUM(oi.quantity) AS total_quantity
FROM Products p
JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC;

-- Customer Sales View

CREATE VIEW Customer_Sales AS
SELECT
    c.customer_name,
    SUM(p.price * oi.quantity) AS total_sales
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
JOIN Order_Items oi
ON o.order_id = oi.order_id
JOIN Products p
ON oi.product_id = p.product_id
GROUP BY c.customer_name;

SELECT * FROM Customer_Sales;

-- Product Ranking Using Window Function

SELECT
    product_name,
    price,
    RANK() OVER (ORDER BY price DESC) AS ranking
FROM Products;
