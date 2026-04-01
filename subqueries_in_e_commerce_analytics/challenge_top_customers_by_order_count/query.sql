select  c.customer_id, 
        c.name, 
        sub.order_count
from customers as c
join (
    select customer_id, 
           count(*) as order_count
    from orders 
    group by customer_id  
) as sub
  on c.customer_id = sub.customer_id
order by sub.order_count desc, 
         c.customer_id asc
limit 3;