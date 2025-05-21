# Write your MySQL query statement below

select a.employee_id
FROM Employees a
LEFT JOIN Salaries b
on a.employee_id=b.employee_id
where b.salary IS NULL
UNION
select a.employee_id
FROM Salaries a
LEFT JOIN Employees b
on a.employee_id=b.employee_id
where b.name IS NULL
order by employee_id;
