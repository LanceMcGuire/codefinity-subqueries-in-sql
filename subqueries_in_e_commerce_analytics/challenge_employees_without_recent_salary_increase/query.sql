select employee_id, name 
from employees e
where not exists (
    select 1
    from salaries s
    where s.employee_id = e.employee_id
        and s.salary_date >= '2023-04-27'
)