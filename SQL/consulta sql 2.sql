SELECT
    g.GenreId,
    g.Name AS Nombre_Genero,
    COUNT(t.TrackId) AS Cantidad_Canciones
FROM Genre g
LEFT JOIN Track t
    ON g.GenreId = t.GenreId
GROUP BY
    g.GenreId,
    g.Name
ORDER BY Cantidad_Canciones DESC;