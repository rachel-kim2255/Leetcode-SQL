# MIN(YEAR), GROUP BY

SELECT  s.product_id, s.year as first_year, s.quantity, s.price
FROM    Sales as s
        JOIN 
        (SELECT product_id, min(year) as year
        FROM    Sales
        GROUP BY product_id) as p
        ON s.year = p.year
        AND s.product_id = p.product_id


