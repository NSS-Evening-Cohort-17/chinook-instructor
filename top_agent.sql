WITH AllSales AS (
    SELECT
        e.FirstName first_name,
        e.LastName last_name,
        SUM(i.Total) Total
    FROM Employee e
    JOIN Customer c
    ON c.SupportRepId = e.EmployeeId
    JOIN Invoice i
    ON i.CustomerId = c.CustomerId
    GROUP BY e.FirstName, e.LastName
    )

SELECT
    MAX(TOTAL),
    first_name, last_name
FROM AllSales
