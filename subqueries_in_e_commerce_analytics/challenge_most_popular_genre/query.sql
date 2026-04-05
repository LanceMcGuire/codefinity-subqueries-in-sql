select genre,
        borrow_count
from (
    select b.genre,
        count(*) as borrow_count
    from borrowings br
    join books b on br.book_id = b.book_id
    group by b.genre
) as genre_counts
where borrow_count = (
    select max(borrow_count)
    from (
    select count(*) as borrow_count
    from borrowings br2
    join books b2 on br2.book_id = b2.book_id
    group by b2.genre
    ) as counts
);