# Write your MySQL query statement below
UPDATE Salary
SET sex = CASE
    WHEN sex='m' THEN 'f'
    WHEN sex='f' THEN 'm'
    ELSE NULL
    END;    

    -- Syntax For CASE WHEN THEN END
    -- CASE
    -- WHEN      THEN
    -- WHEN      THEN
    -- WHEN      THEN
    -- WHEN      THEN
    -- ELSE NULL
    -- END
