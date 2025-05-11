
select a.id from Weather a INNER JOIN Weather b
-- on a.id!=b.id
where DATEDIFF(a.recordDate,b.recordDate)=1 and 
a.temperature>b.temperature;
