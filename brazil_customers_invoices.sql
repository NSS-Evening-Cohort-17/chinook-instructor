SELECT
    c.FirstName,
    c.LastName,
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry
FROM Customer c
JOIN Invoice i 
On c.CustomerId = i.CustomerId
WHERE i.BillingCountry is "Brazil"