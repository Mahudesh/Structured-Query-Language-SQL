# Write your MySQL query statement below

# Lead Gives You The Next Row Value Of The Specific Column

-- +----+-----+
-- | id | num | next_1 | next_2
-- +----+-----+
-- | 1  | 1   | 1           1
-- | 2  | 1   | 1           2
-- | 3  | 1   | 2           1
-- | 4  | 2   | 1           2
-- | 5  | 1   | 2           2
-- | 6  | 2   | 2           null
-- | 7  | 2   | null        null
WITH cte as
(
select *,LEAD(num,1) OVER()as next_1,
LEAD(num,2) OVER() as next_2
FROM logs)

SELECT DISTINCT num as ConsecutiveNums
FROM cte
where num=next_1
and num=next_2;
