SELECT product_id,
       year AS first_year,
        quantity,
        price
FROM Sales
WHERE (product_id, year) IN (
    SELECT product_id,
            MIN(year) as first_year_subq
    FROM Sales
    GROUP BY product_id
)