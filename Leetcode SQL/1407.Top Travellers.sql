# Write your MySQL query statement below
select a.name,IFNULL(sum(b.distance),0) as travelled_distance
from Users a Left Join Rides b
on a.id=b.user_id
# Group By id Since Name Was Duplicate In The Given Hidden Testcase
group by a.id
order by travelled_distance desc,a.name asc;
