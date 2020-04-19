/**** Row Number ****/

select
	concat(e.first_name, ' ' ,e.last_name) AS Employee
	,e.title AS Title
	,sum(od.unit_price) AS 'Total Sales'
	,row_number() over (order by sum(od.unit_price) desc) AS 'Sales Rank'
from
	employees as e
inner join orders as o
	on e.employee_id = o.employee_id
inner join order_details as od
	on o.order_id = od.order_id
group by
	concat(e.first_name, ' ' ,e.last_name)
	,e.title
