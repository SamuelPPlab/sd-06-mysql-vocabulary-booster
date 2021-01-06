SELECT DISTINCT c.ContactName AS Nome,
c.Country AS "País",
CountryNumbers.compatriotas AS "Número de compatriotas"
FROM (
SELECT Country, COUNT(Country) AS compatriotas
FROM w3schools.customers
GROUP BY Country
) as CountryNumbers
INNER JOIN w3schools.customers AS c ON CountryNumbers.Country = c.Country
ORDER BY Nome
