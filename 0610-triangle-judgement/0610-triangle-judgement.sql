-- 7/20 : 두변의 합이 다른 하나보다 작던가

select  x, y, z, 
        (CASE WHEN x + y > z and x + z > y and y + z > x THEN 'Yes'
        ELSE 'No' END) as triangle
from    triangle



















-- SELECT  x,y,z, 
--         (CASE 
--             WHEN ( x+y > z and y+z > x and x+z > y) THEN 'Yes'
--             ELSE 'No'
--             END)
--             as triangle
-- FROM    Triangle
 
# 그 열만 찾아라( 트라이앵글 열없이)
-- SELECT  x, y, z
-- FROM    triangle
-- WHERE   (x + y > z) and (x+z > y) and (z+y > x)

-- SELECT x, y, z
-- FROM triangle
-- WHERE (CASE WHEN x + y > z AND x + z > y AND y + z > x THEN 1 ELSE 0 END) = 1;