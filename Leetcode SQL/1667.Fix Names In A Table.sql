# Write your MySQL query statement below
select user_id,CONCAT(UPPER(SUBSTRING(name,1,1)),LOWER(SUBSTRING(name,2,LENGTH(name)-1))) as name
FROM Users
order by user_id;
