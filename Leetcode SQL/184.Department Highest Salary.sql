# Write your MySQL query statement below


# Use Partition By Window Function With MAX() To Find The Maximum Salary For Each Department
WITH cte as
(
select e.name as Employee,d.name as Department,e.salary,MAX(e.salary)OVER(PARTITION BY e.departmentId) as max_salary
FROM Employee e
LEFT JOIN Department d
on e.departmentId=d.id
)

select dept_name as Department,emp_name as Employee,max_salary as Salary
FROM cte
where max_salary=salary;
