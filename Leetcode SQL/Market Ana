# Write your MySQL query statement below
select a.user_id as buyer_id,a.join_date,ifnull(count(b.order_id),0) as orders_in_2019
FROM Users a LEFT JOIN Orders b
on a.user_id=b.buyer_id
# Use and and dont use where since where year=2019 filters out all your unmatched rows containing null value
and year(b.order_date)=2019
group by a.user_id;
