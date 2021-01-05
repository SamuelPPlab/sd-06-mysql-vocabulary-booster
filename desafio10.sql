SELECT P.ProductName AS 'Produto',
MIN(O.Quantity) AS 'Mínima',
MAX(O.Quantity) AS 'Máxima',
CASE
WHEN ROUND(AVG(O.Quantity), 2) > 20 THEN ROUND(AVG(O.Quantity), 2)
ELSE ''
END AS 'Média'
FROM w3schools.order_details AS O
INNER JOIN w3schools.products AS P
ON P.ProductID = O.ProductID
GROUP BY P.ProductName
ORDER BY ROUND(AVG(O.Quantity), 2)
LIMIT 2000 OFFSET 29