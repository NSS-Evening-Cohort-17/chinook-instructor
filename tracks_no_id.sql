-- Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
-- Album name
-- Media type
-- Genre

SELECT
    t.Name TrackName,
    a.Title AlbumName,
    m.Name MediaType,
    g.Name Genre
FROM Track t
JOIN Album a
ON t.AlbumId = a.AlbumId
JOIN MediaType m
ON t.MediaTypeId = m.MediaTypeId
JOIN Genre g
ON t.GenreId = g.GenreId