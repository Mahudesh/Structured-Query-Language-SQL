# Write your MySQL query statement below

# Using Rank Method
WITH cte as
(
select id,salary,DENSE_RANK()OVER(ORDER BY salary DESC) as sal
FROM Employee
)
# IfNull Is Wrapped Inside An Expression
select(
ifnull((select salary from cte
where sal=2
limit 1),null)
)as SecondHighestSalary;
