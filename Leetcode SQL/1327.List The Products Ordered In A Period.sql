# Write your MySQL query statement below
select product_name,sum(unit) as unit
FROM Products a
INNER JOIN Orders b
on a.product_id=b.product_id
where year(b.order_date)=2020 and month(b.order_date)=2
group by a.product_name
having sum(unit)>=100;
