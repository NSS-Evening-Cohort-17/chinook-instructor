SELECT
    i.Total,
    c.FirstName || ' ' || c.LastName as CustomerFullName,
    c.Country,
    e.FirstName || ' ' || e.LastName as AgentFullName
FROM Invoice i
JOIN Customer c
JOIN Employee e