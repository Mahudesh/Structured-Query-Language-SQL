# Write your MySQL query statement below
WITH cte as
(
select num,count(num) as freq
FROM MyNumbers
group by num
having freq=1
)

select max(num) as num from cte
where freq=1;
