drop table if exists employee;
create table employee(emp_id int primary key,emp_name varchar(10),address varchar(40),postal_code int,country varchar(20)) 

drop table if exists orders;
create table orders(order_id int primary key,ordered_date date,ship_address varchar(30),ship_city varchar(30),shipped_date date,emp_id int references employee(emp_id))
ALTER TABLE orders ADD FOREIGN KEY (emp_id)
REFERENCES employee(emp_id) ON DELETE CASCADE;
drop table if exists products;
create table products(products_id int primary key,product_name varchar(30),product_price varchar(30),in_stock varchar(20),order_id int references orders(order_id))