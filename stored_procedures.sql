-- Customer Sales Procedure

DELIMITER //

CREATE PROCEDURE GetCustomerSales()
BEGIN
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
    GROUP BY c.customer_name
    ORDER BY total_sales DESC;
END //

DELIMITER ;

CALL GetCustomerSales();
