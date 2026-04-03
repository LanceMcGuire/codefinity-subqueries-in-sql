select *
from employees
where hire_date >= (
    select date '2021-01-02' - interval '6 months'
)
