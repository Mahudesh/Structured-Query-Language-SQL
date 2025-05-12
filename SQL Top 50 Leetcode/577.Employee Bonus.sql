# Write your MySQL query statement below
select a.name,b.bonus from Employee a LEFT JOIN Bonus b
on a.empId=b.empId
where b.bonus < 1000 or b.bonus IS NULL;
