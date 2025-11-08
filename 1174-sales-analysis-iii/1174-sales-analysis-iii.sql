# Write your MySQL query statement below


SELECT  product_id, product_name
FROM    Product
WHERE   product_id IN    
        (select product_id 
         from  Sales
         WHERE  sale_date between '2019-01-01' AND '2019-03-31') 
         and product_id NOT IN 
        (SELECT  product_id
         FROM   Sales
         WHERE   sale_date > '2019-03-31' or sale_date < '2019-01-01')
