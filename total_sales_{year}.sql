SELECT DISTINCT
    (
    SELECT SUM(TOTAL)
    FROM Invoice
    WHERE InvoiceDate LIKE "2009%"
    ) as Sales_Total_2009,
    (
    SELECT SUM(TOTAL)
    FROM Invoice
    WHERE InvoiceDate LIKE "2011%"
    ) as Sales_Total_2011
