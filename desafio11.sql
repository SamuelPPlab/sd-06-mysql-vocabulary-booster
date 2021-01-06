SELECT
a.ContactName AS 'Nome',
a.Country AS 'País',
COUNT(b.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS a, w3schools.customers AS b
WHERE a.Country = b.Country
GROUP BY a.CustomerID
ORDER BY a.ContactName;
