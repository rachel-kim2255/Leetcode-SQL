
-- SELECT email
-- FROM    person
-- group by email
-- having  count(*)>1;













SELECT  email
FROM    Person
GROUP BY email
having count(*)>1
