SELECT
    ar.Name ArtistName,
    SUM(il.UnitPrice) Sales
FROM InvoiceLine il
JOIN Invoice i
ON il.InvoiceId = i.InvoiceId
JOIN Track t
ON t.TrackId = il.TrackId
JOIN Album a
ON t.AlbumId = a.AlbumId
JOIN Artist ar
ON a.ArtistId = ar.ArtistId
GROUP BY ar.Name
ORDER BY Sales DESC
LIMIT 3