# Write your MySQL query statement below

#You Need To Match That
#It Shouldd Have Same Machine Number
#It Shouldd Have Same Process Number
#It Should Have Properly Matched With Start And End Of The Activity Type Correctly
select a.machine_id,round(avg(a.timestamp-b.timestamp),3) as processing_time 
from Activity a
join Activity b
on a.machine_id=b.machine_id 
and a.process_id=b.process_id
and a.activity_type='end' and b.activity_type='start'
group by machine_id;
