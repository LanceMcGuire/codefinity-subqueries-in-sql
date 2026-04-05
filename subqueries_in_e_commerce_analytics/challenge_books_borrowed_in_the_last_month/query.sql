select *
from books
where book_id in (
    select distinct book_id
from borrowings
where borrow_date >= date '2023-07-01'
);