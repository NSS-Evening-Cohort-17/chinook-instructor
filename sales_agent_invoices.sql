SELECT
    e.LastName,
    e.FirstName,
    i.InvoiceId
FROM Employee e
JOIN Invoice i
ON c.CustomerId = i. CustomerId
JOIN Customer c
ON e.EmployeeId = c.SupportRepId
ORDER BY e.LastName
