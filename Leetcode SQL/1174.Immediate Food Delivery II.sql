# Write your MySQL query statement below

WITH cte1 as
(
select distinct a.customer_id,FIRST_VALUE(order_date)OVER(PARTITION BY a.customer_id ORDER BY a.order_date asc) AS im
FROM Delivery a
),
cte2 as
(
select customer_id,customer_pref_delivery_date as del_date from Delivery
)
select round((count(*)/(select count(distinct customer_id) from Delivery))*100,2) as immediate_percentage
from cte1 INNER JOIN cte2
on cte1.customer_id=cte2.customer_id
where cte1.im=cte2.del_date;
-- Output
-- | customer_id | im         |
-- | ----------- | ---------- |
-- | 1           | 2019-08-01 |
-- | 2           | 2019-08-02 |
-- | 3           | 2019-08-21 |
-- | 4           | 2019-08-09 |
