-- Provide a query that shows the total number of tracks in each playlist.
-- The resultant table should include:
--      Playlist name
--      Total number of tracks on each playlist

SELECT
    p.Name,
    COUNT(pT.TrackId) total_track_count
FROM PlaylistTrack pT
JOIN Playlist p
ON p.PlaylistId = pT.PlaylistId
GROUP BY p.Name
