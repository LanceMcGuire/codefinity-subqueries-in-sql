--Aggregate total quantity per category
select p.category,
    sum(o.quantity) as total_quantity
    
--Join orders to products to get each order’s category
from orders o
join products p on o.product_id = p.product_id
group by p.category

-- Filter to only those whose total matches the maximum
having sum(o.quantity) = (
    select max(total_cat_quantity)
    from(
        select sum(o2.quantity) as total_cat_quantity
        from orders o2
        join products p2 on o2.product_id = p2.product_id
        group by p2.category
    ) as category_totals
);