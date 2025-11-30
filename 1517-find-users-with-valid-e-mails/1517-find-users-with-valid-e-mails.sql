# learn: case-sensitive - 'c'

SELECT *
FROM Users
WHERE REGEXP_LIKE(mail, '^[a-zA-Z]+[A-Za-z0-9._-]*@leetcode[.]com$','c');

