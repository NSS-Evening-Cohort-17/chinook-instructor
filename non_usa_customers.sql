SELECT
    FirstName || ' ' || Lastname as FullName,
    CustomerId,
    Country
FROM Customer
WHERE Country != "USA"