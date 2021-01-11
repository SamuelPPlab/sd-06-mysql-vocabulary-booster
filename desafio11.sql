SELECT customers.contactname AS `Nome`,
customers.country AS `País`,
count(customers.country) AS `Número de compatriotas`,
FROM w3schools.customers
group by `País`
ORDER BY `Nome` ASC;
