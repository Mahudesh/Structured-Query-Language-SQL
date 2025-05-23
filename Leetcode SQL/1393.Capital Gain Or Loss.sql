# Write your MySQL query statement below

#CTE For Buy
WITH cte1 as
(
select stock_name as name,sum(price) as buy
FROM Stocks
group by stock_name,operation
having operation="Buy"
),
#CTE For Sell
cte2 as
(
    select stock_name as name,sum(price) as sell
    FROM Stocks
    group by stock_name,operation
    having operation="Sell"
)
#Calculating Gain/Loss
select cte1.name as stock_name, cte2.sell-cte1.buy as capital_gain_loss
from cte1 inner join cte2
on cte1.name=cte2.name
-- where cte1.name="Handbags";
-- select cte1.name,(cte2.sell-cte1.buy) as capital_gain_loss
-- from cte1,cte2;
