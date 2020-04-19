/**** Row Number ****/

select
	concat(e.first_name, ' ' ,e.last_name)
	,e.title
	,count(o.order_id)
	,sum(od.unit_price)
	,row_number()
from
	employees as e
inner join orders as o
	on e.employee_id = o.employee_id
inner join order_details as od
	on o.order_id = od.order_id
group by
	concat(e.first_name, ' ' ,e.last_name)
	,e.title
	,o.order_id
order by count(o.order_id)
