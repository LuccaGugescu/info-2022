--numero ordini in base agli ordini
SELECT Orders.CustomerId, COUNT(*) AS numero_ordini
FROM Orders
GROUP BY Orders.CustomerId

--media oridini
SELECT AVG(T.numero_ordini) AS media_ordini
FROM
(
    SELECT Orders.CustomerId, COUNT(*) AS numero_ordini
    FROM Orders
    GROUP BY Orders.CustomerId
) AS T

--completo
SELECT Customers.*, COUNT(*) AS numero_ordini
FROM Orders, Customers
WHERE Orders.CustomerId = Customers.CustomerId
GROUP BY Orders.CustomerId
HAVING COUNT(*) > (
SELECT AVG(T.numero_ordini) AS media_ordini
FROM
(
    SELECT Orders.CustomerId, COUNT(*) AS numero_ordini
    FROM Orders
    GROUP BY Orders.CustomerId
) AS T
)
