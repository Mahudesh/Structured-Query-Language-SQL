# Write your MySQL query statement below

# Without Using Inbuilt Methods
-- select activity_date as day, count(distinct user_id) as active_users
-- FROM Activity
-- where activity_date>='2019-06-28' and activity_date<='2019-07-27'
-- group by activity_date;


select activity_date as day, count(distinct user_id) as active_users
FROM Activity
where activity_date BETWEEN DATE_ADD('2019-07-27',INTERVAL -29 DAY) AND '2019-07-27'
group by activity_date;
