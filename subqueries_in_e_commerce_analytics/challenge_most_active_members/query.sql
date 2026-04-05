select m.member_id,
        m.name,
        sub.borrow_count
from (
    select member_id,
        count(*) as borrow_count
    from borrowings
    group by member_id
) as sub 
join members m
    on m.member_id = sub.member_id
order by sub.borrow_count desc,
    m.member_id asc
limit 2;