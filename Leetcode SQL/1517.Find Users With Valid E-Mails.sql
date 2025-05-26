# Write your MySQL query statement below
-- | user_id | name    | mail                 |
-- | ------- | ------- | -------------------- |
-- | 1       | Winston | winston@leetcode?com |
select *
FROM Users
where REGEXP_LIKE(mail,'^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com$')
