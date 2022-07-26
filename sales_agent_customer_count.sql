SELECT
    e.FirstName, e.Lastname, c.CustomerId
FROM Employee e
LEFT JOIN Customer c
ON c.SupportRepId = e.EmployeeId


SELECT *
FROM Employee