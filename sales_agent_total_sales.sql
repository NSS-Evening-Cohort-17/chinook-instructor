SELECT
    SUM(i.Total),
    e.FirstName || ' ' || e.LastName as SalesRep
FROM Employee e
JOIN Customer c
ON e.EmployeeId = c.SupportRepId
JOIN Invoice i
ON c.CustomerId = i.CustomerId
GROUP BY SalesRep
