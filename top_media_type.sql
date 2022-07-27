SELECT
    mT.Name,
    COUNT(iL.TrackId) TotalTracksSold
FROM MediaType mT
JOIN Track t
ON mT.MediaTypeId = t.MediaTypeId
JOIN InvoiceLine iL
ON iL.TrackId = t.TrackId
GROUP BY mT.Name
ORDER BY TotalTracksSold DESC