select 
    prod.name as 'Product',
    ordd.quantity as 'Quantity',
    ctgr.name as 'Category',
	ord.date as 'OrderDate',
	ord.id as 'OrderNumber', 
    splr.name as 'Supplier',
    shpr.name as 'Shipper',
    concat(emp.first_name, ' ', emp.last_name) as 'Employee'
from orders ord
	inner join customers cust on ord.customer_id = cust.id
	inner join employees emp on ord.employee_id = emp.employee_id
	inner join shippers shpr on ord.shipper_id = shpr.id
	inner join order_details ordd on ord.id = ordd.order_id
	inner join products prod on ordd.product_id = prod.id
	inner join categories ctgr on prod.category_id = ctgr.id
	inner join suppliers splr on prod.supplier_id = splr.id
where cust.name = 'Berglunds snabbkop'
order by 'Product'
;