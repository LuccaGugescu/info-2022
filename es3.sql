SELECT Orders.ShipperID, COUNT(Orders.ShipperID) AS numero_ordini
FROM Orders
GROUP BY Orders.ShipperID
