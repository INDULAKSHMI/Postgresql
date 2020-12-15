------delete function ---------
create or replace function delete1(s1 int,s2 int)
returns void language plpgsql as $$
begin
delete from products where order_id=s1;
delete from orders where emp_id=s2;
delete from employee where emp_id=s2;
end;$$
------calling function ------
select delete1(301,101)