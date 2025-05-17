# Write your MySQL query statement below
-- select a.actor_id,b.director_id 
-- FROM ActorDirector a INNER JOIN ActorDirector b
-- on a.actor_id=b.director_id
-- group by a.actor_id
-- having count(a.actor_id)>=3;
WITH cte as
(
select actor_id,director_id,count(*) as x
FROM ActorDirector
# Group By Both actor_id And director_id 
group by actor_id,director_id
)


select actor_id,director_id from cte
where x>=3;
