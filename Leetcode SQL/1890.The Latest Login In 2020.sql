# Write your MySQL query statement below
select user_id,max(time_stamp) as last_stamp
from Logins
where year(time_stamp)=2020
group by user_id;

# Using Window Functions

-- select distinct user_id,   FIRST_VALUE(time_stamp)OVER(PARTITION BY user_id ORDER BY time_stamp DESC) as last_stamp
-- FROM Logins
-- where year(time_stamp)='2020'
