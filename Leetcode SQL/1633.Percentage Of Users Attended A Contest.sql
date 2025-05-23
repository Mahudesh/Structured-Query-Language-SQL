# Write your MySQL query statement below
WITH cte1 as
(select count(user_id) as user_count
from Users)

select contest_id,round((count(distinct user_id))/(cte1.user_count)*100,2) as percentage
from Register join cte1
group by contest_id
order by percentage desc,contest_id asc;


-- select 
