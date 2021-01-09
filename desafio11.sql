SELECT A.ContactName AS Nome,
A.Country AS `País`,
COUNT(B.ContactName) AS `Número de compatriotas`
FROM w3schools.customers AS A,
w3schools.customers AS B
WHERE A.Country = B.Country AND A.ContactName <> B.ContactName
GROUP BY A.ContactName
ORDER BY A.ContactName;
