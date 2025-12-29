# Write your MySQL query statement below

-- WITH sales AS(
--     SELECT  stock_name, operation, SUM(price) as price
--     FROM    Stocks
--     GROUP BY stock_name, operation
-- )
-- SELECT  stock_name, SUM(IF(operation = 'Sell', price, -price)) AS capital_gain_loss
-- FROM    sales
-- GROUP BY stock_name;


SELECT  stock_name,
        SUM(CASE WHEN operation='Sell' THEN price ELSE -price END) AS capital_gain_loss
FROM    Stocks
GROUP BY stock_name
