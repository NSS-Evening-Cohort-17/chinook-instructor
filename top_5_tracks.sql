SELECT *
FROM
(   SELECT
        Track.TrackID,
        Track.Name,
        COUNT (InvoiceLine.InvoiceId) as MostPurchased
    FROM Track
    JOIN InvoiceLine
    ON Track.TrackId = InvoiceLine.TrackId
    GROUP BY Track.Name
    )
ORDER BY MostPurchased DESC
LIMIT 5

SELECT *
FROM InvoiceLine
WHERE TrackId = 1322

SELECT
    Name
FROM Track
