    # Write your MySQL query statement 


    # Select Everything Into Single Table In MovieRating
    WITH cte as
    (
    select a.*,b.name,c.title 
    FROM MovieRating a LEFT JOIN Users b
    on a.user_id=b.user_id
    LEFT JOIN Movies c
    on a.movie_id=c.movie_id
    )

    (select name as results
    FROM cte
    group by user_id
    order by count(*) desc,name asc
    limit 1)
    UNION ALL
    (select title
    FROM cte
    where year(cte.created_at)=2020 and month(cte.created_at)=2
    group by movie_id
    order by avg(rating) desc,title asc
    limit 1
    )
