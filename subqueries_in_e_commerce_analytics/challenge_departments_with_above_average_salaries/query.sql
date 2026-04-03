select d.name
from departments d
join employees e
 on d.department_id = e.department_id
group by d.department_id, d.name 
having avg(e.salary) > (
    select avg(salary)
    from employees
)