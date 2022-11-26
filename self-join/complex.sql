--check category

SELECT ProductID
FROM products
WHERE productName like '%queso%'
;


SELECT *
FROM order_details as x, order_details as y
WHERE x.OrderDetailID = y.OrderDetailID
AND x.ProductID IN (
    SELECT ProductID
    FROM products
    WHERE productName like '%queso%'
)
AND y.ProductID IN (
    SELECT ProductID
    FROM products
    WHERE productName like '%fried%'
)
;
