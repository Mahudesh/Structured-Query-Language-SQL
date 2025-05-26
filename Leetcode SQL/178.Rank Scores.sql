# Write your MySQL query statement below

-- | Function       | Ties Get Same Rank? | Gaps in Rank? |
-- | -------------- | ------------------- | ------------- |
-- | `ROW_NUMBER()` | ❌ No                | ❌ No          |
-- | `RANK()`       | ✅ Yes               | ✅ Yes         |
-- | `DENSE_RANK()` | ✅ Yes               | ❌ No          |

select score,DENSE_RANK()OVER(ORDER BY score DESC) as 'rank'
FROM Scores;
