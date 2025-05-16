# Write your MySQL query statement below

#Using Subquery
-- select a.name as Customers 
-- FROM Customers a 
-- where a.id <> ALL (select b.customerId from Orders b);

#Using Join
select a.name as Customers
FROM Customers a
LEFT JOIN Orders b
on a.id=b.customerId
# If Values Dones Not Match Left Join Automatically Place NULL Value To It
where b.customerId IS NULL;
