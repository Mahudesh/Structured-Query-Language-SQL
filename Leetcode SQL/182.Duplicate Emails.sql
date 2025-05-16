# Write your MySQL query statement below
-- select distinct(a.email) as Email
-- FROM Person a
-- INNER JOIN Person b
-- on a.email=b.email and a.id!=b.id;

#Using Group By Function
select email as Email
from Person
group by email
having count(email)>1;
