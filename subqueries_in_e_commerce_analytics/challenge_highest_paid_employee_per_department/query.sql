select d.name as department_name,
       e.name as employee_name,
       e.salary
from employees e
join departments d
  on e.department_id = d.department_id    
where e.salary = (
    select max(e2.salary) 
    from employees e2
    where e2.department_id = e.department_id
)
order by d.name,
         e.name;