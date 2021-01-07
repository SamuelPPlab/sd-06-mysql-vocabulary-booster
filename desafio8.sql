SELECT c.CustomerName AS 'Nome de contato',
s.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o ON o.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers AS s ON o.ShipperID = s.ShipperID
WHERE o.ShipperID BETWEEN 1 AND 2
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido`;
