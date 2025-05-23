# Write your MySQL query statement below

# Selects All The employee_id Of Only One Department
select employee_id,department_id
FROM Employee
group by employee_id
having count(department_id)=1

union

# Selects All The employee_id Having Primary Department
select employee_id,department_id
FROM Employee
where primary_flag='Y'
and 
employee_id in (select employee_id FROM Employee group by employee_id having count(department_id)>1);
