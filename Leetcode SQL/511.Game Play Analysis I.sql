# Write your MySQL query statement below

select DISTINCT player_id, FIRST_VALUE(event_date) OVER(PARTITION BY player_id ORDER BY event_date asc) as first_login
FROM Activity
-- select player_id, min(event_date) as first_login
-- FROM Activity
-- group by player_id;
