select name
from members m
where m.member_id not in (
    select distinct member_id
    from borrowings 
);