------to insert on employee table if the data not exist,if exist then update----


CREATE FUNCTION insert_emp_final(id int,name varchar,addr varchar,p_code int,coun varchar) RETURNS VOID AS $$
begin

   update employee set emp_name=name,address=addr,postal_code=p_code,country=coun where emp_id=id;
if found then
    return;
end if;
begin
insert into employee(emp_id,emp_name,address,postal_code,country) values(id,name,addr,p_code,coun);
  return;
    EXCEPTION WHEN unique_violation THEN
   
        END;
    
END;$$
language plpgsql;

------data insert-----
select insert_emp_final(118,'bhagya','no:18a,century st',17181,'USA')