-- a 
select count(1) from (
select 
	cust.name as 'Customer',
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
order by 'Product') subselect
;

-- b
select count(1) from (
select 
	cust.name as 'Customer',
    prod.name as 'Product',
    ordd.quantity as 'Quantity',
    ctgr.name as 'Category',
	ord.date as 'OrderDate',
	ord.id as 'OrderNumber', 
    splr.name as 'Supplier',
    shpr.name as 'Shipper',
    concat(emp.first_name, ' ', emp.last_name) as 'Employee'
from orders ord 
	right join customers cust on cust.id = ord.customer_id
	left join employees emp on ord.employee_id = emp.employee_id
	left join shippers shpr on ord.shipper_id = shpr.id
	left join order_details ordd on ord.id = ordd.order_id
	left join products prod on ordd.product_id = prod.id
	left join categories ctgr on prod.category_id = ctgr.id
	left join suppliers splr on prod.supplier_id = splr.id
order by 'Product') subselect
;

-- c
select 
	cust.name as 'Customer',
    prod.name as 'Product',
    ordd.quantity as 'Quantity',
    ctgr.name as 'Category',
	ord.date as 'OrderDate',
	ord.id as 'OrderNumber', 
    splr.name as 'Supplier',
    shpr.name as 'Shipper',
    concat(emp.first_name, ' ', emp.last_name) as 'Employee'
from orders ord 
	inner join customers cust on cust.id = ord.customer_id
	inner join employees emp on ord.employee_id = emp.employee_id
	inner join shippers shpr on ord.shipper_id = shpr.id
	inner join order_details ordd on ord.id = ordd.order_id
	inner join products prod on ordd.product_id = prod.id
	inner join categories ctgr on prod.category_id = ctgr.id
	inner join suppliers splr on prod.supplier_id = splr.id
where emp.employee_id > 3 and emp.employee_id <= 10
order by 'Product';

-- d 
select 
    ctgr.name as 'Category',
    count(1) as 'Count',
    avg(ordd.quantity) as 'Average quantity'
from orders ord 
	inner join customers cust on cust.id = ord.customer_id
	inner join employees emp on ord.employee_id = emp.employee_id
	inner join shippers shpr on ord.shipper_id = shpr.id
	inner join order_details ordd on ord.id = ordd.order_id
	inner join products prod on ordd.product_id = prod.id
	inner join categories ctgr on prod.category_id = ctgr.id
	inner join suppliers splr on prod.supplier_id = splr.id
group by ctgr.name
order by 'Product';

-- e
select 
    ctgr.name as 'Category',
    count(1) as 'Count',
    avg(ordd.quantity) as 'Average quantity'
from orders ord 
	inner join customers cust on cust.id = ord.customer_id
	inner join employees emp on ord.employee_id = emp.employee_id
	inner join shippers shpr on ord.shipper_id = shpr.id
	inner join order_details ordd on ord.id = ordd.order_id
	inner join products prod on ordd.product_id = prod.id
	inner join categories ctgr on prod.category_id = ctgr.id
	inner join suppliers splr on prod.supplier_id = splr.id
group by ctgr.name
having avg(ordd.quantity) > 21
order by 'Product';

-- f
select 
    ctgr.name as 'Category',
    count(1) as 'Count',
    avg(ordd.quantity) as 'Average quantity'
from orders ord 
	inner join customers cust on cust.id = ord.customer_id
	inner join employees emp on ord.employee_id = emp.employee_id
	inner join shippers shpr on ord.shipper_id = shpr.id
	inner join order_details ordd on ord.id = ordd.order_id
	inner join products prod on ordd.product_id = prod.id
	inner join categories ctgr on prod.category_id = ctgr.id
	inner join suppliers splr on prod.supplier_id = splr.id
group by ctgr.name
having avg(ordd.quantity) > 21
order by Count(1) desc;

-- g
select 
    ctgr.name as 'Category',
    count(1) as 'Count',
    avg(ordd.quantity) as 'Average quantity'
from orders ord 
	inner join customers cust on cust.id = ord.customer_id
	inner join employees emp on ord.employee_id = emp.employee_id
	inner join shippers shpr on ord.shipper_id = shpr.id
	inner join order_details ordd on ord.id = ordd.order_id
	inner join products prod on ordd.product_id = prod.id
	inner join categories ctgr on prod.category_id = ctgr.id
	inner join suppliers splr on prod.supplier_id = splr.id
group by ctgr.name
having avg(ordd.quantity) > 21
order by Count(1) desc
limit 4 offset 1;