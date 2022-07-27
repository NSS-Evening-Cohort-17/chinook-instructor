SELECT
    BillingCountry,
    SUM(Total)
FROM Invoice
GROUP BY BillingCountry
ORDER BY Total DESC
LIMIT 1