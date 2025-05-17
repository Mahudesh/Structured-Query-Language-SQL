# Write your MySQL query statement below
select query_name,round((sum(rating/position))/count(*),2) as quality,
-- round((
-- sum(
-- case 
-- when rating<3 then 1
-- else 0
-- end
-- )/count(*))*100,2) as poor_query_percentage
round((sum(rating<3)/count(*)*100),2) as poor_query_percentage
FROM Queries
group by query_name;

# Count(ratings<3) Will Anyway Count The Non-Null Values
# It Counts Both 0 Or 1 Thats The Result Given By This Boolean Expression ratings<3
# Use Sum(rating<3) Since If Yes Returns 1 Else Returns 0 So While Adding It Makes Sense
