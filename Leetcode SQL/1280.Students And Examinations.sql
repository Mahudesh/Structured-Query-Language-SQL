# Write your MySQL query statement below
WITH cte1 as
(
select * from Students
CROSS JOIN Subjects
),

# 1 Alice Math
# 1 Alice Physics
# 1 Alice Programming
# 2 Bob Math
# 2 Bob Physics
# 2 Bob Programming
cte2 as
(
select *,count(*) as cnt from Examinations
group by student_id,subject_name
)

# 1 Math 3
# 1 Physics 2
# 1 Programming 1
# 2 Math 1
# 2 Physics 0
# 2 Programming 1
select cte1.student_id,cte1.student_name,cte1.subject_name,ifnull(cnt,0) as attended_exams
FROM cte1 LEFT JOIN cte2
on cte1.student_id=cte2.student_id
and cte1.subject_name=cte2.subject_name
order by cte1.student_id,cte1.subject_name;

