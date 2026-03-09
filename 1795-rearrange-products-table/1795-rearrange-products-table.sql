SELECT  product_id, 'store1' as store, store1 as price
FROM    products 
WHERE   store1 is not null
UNION ALL
SELECT  product_id, 'store2', store2 
FROM    products
WHERE   store2 is not null
UNION ALL
SELECT  product_id, 'store3', store3
FROM    Products 
WHERE   store3 IS NOT NULL;