# Write your MySQL query statement below
-- select product_id,product_name FROM Product
-- where product_id not in(
-- select product_id from Sales where sale_date<'2019-01-01' or sale_date>'2019-03-31')
select distinct a.product_id,a.product_name
FROM Product a INNER JOIN Sales b
on a.product_id=b.product_id
where a.product_id not in(select product_id from Sales where sale_date NOT BETWEEN '2019-01-01' AND '2019-03-31');
