# Write your MySQL query statement below
-- BruteForce
-- SELECT customer_number 
-- FROM Orders
-- GROUP BY customer_number
-- ORDER BY COUNT(customer_number) DESC
-- LIMIT 1;

-- Optimal 
-- Common Table Expression Is used to build a temporary result set and can query the result set itself
-- Like what i needed for myself
WITH cte as
(
select customer_number,count(customer_number) as x
FROM Orders
group by customer_number
order by x desc
)

select customer_number from cte
where x=(select max(x) from cte);
