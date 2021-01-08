SELECT p.ProductName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.ProductID), 2) AS 'Média'
FROM w3schools.products AS p
JOIN order_details AS od
ON p.ProductID = od.ProductID
GROUP BY od.ProductID
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
