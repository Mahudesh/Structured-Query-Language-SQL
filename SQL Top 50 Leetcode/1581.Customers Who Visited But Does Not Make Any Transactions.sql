
#Left Join Retrieves You The Null Values Too Which Means Visited But Either Paid Or Not Paid
# From That You Explicitly Separate Who Did Not Have Any Transactions
select a.customer_id,count(*) as count_no_trans from Visits a LEFT JOIN Transactions b
on a.visit_id=b.visit_id
where b.transaction_id IS NULL
group by a.customer_id;
