# 7/31

select  *
from    users
where   REGEXP_LIKE(mail, '^[a-zA-Z]+[A-Za-z0-9._-]*@leetcode[.]com$','c')
        # REGEXP_LIKE(mail, '^[a-zA-Z]+[a-zA-Z0-9._-]*@leetcode[.]com$') -> contain 'leetcode.COM' (X) 


















-- # learn: case-sensitive - 'c'

-- SELECT *
-- FROM Users
-- WHERE REGEXP_LIKE(mail, '^[a-zA-Z]+[A-Za-z0-9._-]*@leetcode[.]com$','c');

