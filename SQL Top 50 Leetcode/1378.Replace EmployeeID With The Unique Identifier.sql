# Write your MySQL query statement below

# Left Join Allows Us To Retrieve All The Rows From The Left Table
# And The Matching Rows From The Right Table
# If No Matching Is Found Then It Returns NULL
select b.unique_id,a.name from Employees a left join EmployeeUNI b
on a.id=b.id;
