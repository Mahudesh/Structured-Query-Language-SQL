# Write your MySQL query statement below

# Using If() Two Way Decisions
-- select *,IF(x+y>z and y+z>x and z+x>y,"Yes","No") as triangle
-- from Triangle;

# Using When Then For Complex Decisions
select *,CASE
         WHEN x+y>z and y+z>x and z+x>y THEN "Yes"
         ELSE "No"
         END as triangle
from Triangle;
