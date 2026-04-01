select *
from products
where product_id not in (
    select product_id
    from orders
)