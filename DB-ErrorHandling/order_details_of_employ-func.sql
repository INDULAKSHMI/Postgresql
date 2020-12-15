-----order details of particular employee---

create or replace function order_details_of_employ(sender int)
returns table (order_id int,emp_name varchar,products_name varchar,price varchar,shipped_date date)as $$
begin
return query
SELECT o.order_id,e.emp_name,products.product_name,products.product_price,o.shipped_date 
 FROM employee e inner JOIN
     orders o 
     ON o.emp_id = e.emp_id
	 inner join
	 products  on o.order_id=products.order_id
	  where e.emp_id=sender;
	
end;$$
LANGUAGE plpgsql


-------data insert-----
select order_details_of_employ(115)