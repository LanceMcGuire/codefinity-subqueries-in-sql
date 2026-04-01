select customer_id, name, city
from customers
where city in ('New York', 'Los Angeles') AND customer_id in (
    select customer_id
    from orders   
)