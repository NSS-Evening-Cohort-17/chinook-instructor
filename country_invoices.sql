SELECT
    COUNT(*) no_of_invoices,
    BillingCountry
FROM Invoice
GROUP BY BillingCountry
