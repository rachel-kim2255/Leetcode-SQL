# Write your MySQL query statement below

with Categories as(
    SELECT  'Low Salary' as category
    UNION
    SELECT  'Average Salary'
    UNION
    SELECT  'High Salary'
)
SELECT  c.category,
        COUNT(a.account_id) as accounts_count
FROM    Categories as c LEFT JOIN Accounts as a
        ON c.category = (
            CASE 
            WHEN a.income < 20000 THEN 'Low Salary'
            WHEN a.income <= 50000 THEN 'Average Salary'
            ELSE 'High Salary'
            END)
GROUP BY c.category;