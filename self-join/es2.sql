SELECT *
FROM order_details as queso, order_details as singaporean
WHERE queso.OrderID = singaporean.OrderID
    AND queso.ProductID = 11
        AND singaporean.ProductID = 42;