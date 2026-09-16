# 9/15 

# odd number and not Mx

select  employee_id, 
        (CASE WHEN employee_id % 2 = 1 and name not like 'M%' then salary 
        ELSE 0 end ) as bonus
from    employees
ORDER BY employee_id;