# Write your MySQL query statement below

# Group_Concat Is A Method In SQL Which Is Used To Dsiplay The List Of Items Grouped By The Key
select sell_date,count(distinct product) as num_sold,GROUP_CONCAT(distinct product) as products
from Activities
group by sell_date
order by sell_date;
