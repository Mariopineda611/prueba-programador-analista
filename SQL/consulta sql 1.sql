SELECT
    CONCAT(c.FirstName, ' ', c.LastName) AS Nombre_Completo,
    c.Country AS Pais,
    SUM(i.Total) AS Total_Gastado
FROM Customer c
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
GROUP BY
    c.CustomerId,
    c.FirstName,
    c.LastName,
    c.Country
ORDER BY Total_Gastado DESC;