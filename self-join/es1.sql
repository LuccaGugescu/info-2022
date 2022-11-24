SELECT Orders.*
FROM order_details as product1, order_details as product2, order_details as product3, orders 
WHERE orders.OrderID = product1.OrderID
    AND product1.OrderID = product2.OrderID
    AND product2.OrderID = product3.OrderID 
    AND product1.ProductID = 40
    AND product2.ProductID = 1
    AND product3.ProductID = 28;