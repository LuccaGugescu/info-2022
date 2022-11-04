SELECT TOP 10, T.Spesa, Customers.*
FROM Orders, Customers, (
    SELECT DISTINCT Products.Price * OrderDetails.Quantity AS Spesa, OrderDetails.OrderID
    FROM Products, OrderDetails
    WHERE Products.ProductID = OrderDetails.ProductID
) AS T
WHERE Orders.OrderID = T.OrderID AND Customers.CustomerId = Orders.CustomerId
ORDER BY T.Spesa DESC