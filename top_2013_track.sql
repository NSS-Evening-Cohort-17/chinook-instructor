SELECT 
    Name,
    InvoiceDate,
    MAX(MostPurchased),
FROM (
    SELECT
        t.TrackId,
        t.Name,
        i.InvoiceDate,
        COUNT(il.InvoiceId) as MostPurchased
    FROM Track t
    JOIN InvoiceLine il
    ON t.TrackId = il.TrackId
    JOIN Invoice i
    ON i.InvoiceId = il.InvoiceId
    GROUP BY i.InvoiceDate
    )
WHERE InvoiceDate LIKE '2013%'
ORDER BY Name

SELECT *
FROM InvoiceLine
ORDER BY Quantity DESC