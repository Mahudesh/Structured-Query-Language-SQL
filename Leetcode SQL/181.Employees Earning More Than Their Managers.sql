# Write your MySQL query statement below

# Using Subquery
-- select name as Employee from Employee a
-- where salary > (select salary from Employee b where a.managerId=b.id);

#Using Inner Join
select a.name as Employee from Employee a
INNER JOIN Employee b
on a.managerId=b.id
where a.salary>b.salary;
