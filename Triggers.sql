use DB;


go


alter trigger addCustomerOrder 
on CustomerOrderRegister
for insert 
as 
begin
    declare @sanhuuCode char(12);
    declare @date char(10);
    declare @dep char(3);
    select @date = order_date
    from inserted join CusOrder on inserted.order_num = CusOrder.order_num;
    select @dep = dep_code
    from inserted join CusOrder on inserted.order_num = CusOrder.order_num;

    set @sanhuuCode = 'S' + substring(@date, 0, 5) + substring(@date, 6, 2) + substring(@date, 9, 2) + @dep;

    if(select count(*)
    from Finance
    where finance_code=@sanhuuCode ) = 0
        insert into Finance
    values
        (@sanhuuCode, @dep, @date);

    declare @addedPrice integer
    select @addedPrice = num * item_price
    from inserted join Items
        on inserted.item_code = Items.item_code
1

    if ((select count(*)
    from Input
    where input_name = 'baraaZahialga' and finance_code=@sanhuuCode) > 0)
    begin
        update Input set input_value = input_value + @addedPrice
    end
    else
    begin
        insert into Input
        values(@sanhuuCode, 'baraaZahialga', @addedPrice)
    end

end


go
alter trigger addSalary 
on SalaryRegister
for insert 
as 
begin
    declare @sanhuuCode char(12);
    declare @date char(10);
    declare @dep char(3);
    select @date = salary_date
    from inserted join Salary on inserted.salary_code = Salary.salary_code;
    select @dep = dep_code
    from inserted join Salary on inserted.salary_code = Salary.salary_code;

    set @sanhuuCode = 'S' + substring(@date, 0, 5) + substring(@date, 6, 2) + substring(@date, 9, 2) + @dep;

    if(select count(*)
    from Finance
    where finance_code=@sanhuuCode ) = 0
        insert into Finance
    values
        (@sanhuuCode, @dep, @date);

    declare @addedPrice integer
    select @addedPrice = (workTime * emp_salary + bonus)
    from inserted join Employee
        on inserted.emp_code = Employee.emp_code


    if ((select count(*)
    from Output
    where output_name = 'Salary' and finance_code=@sanhuuCode) > 0)
    begin
        update Output set output_value = output_value + @addedPrice
    end
    else
    begin
        insert into [Output]
        values(@sanhuuCode, 'Salary', @addedPrice)
    end

end

go
alter trigger addSupponser 
on SupponceOrderRegister
for insert 
as 
begin
    declare @sanhuuCode char(12);
    declare @date char(10);
    declare @dep char(3);
    select @date = order_date
    from inserted join SupOrder on inserted.order_num = SupOrder.order_num;
    select @dep = dep_code
    from inserted join SupOrder on inserted.order_num = SupOrder.order_num;

    set @sanhuuCode = 'S' + substring(@date, 0, 5) + substring(@date, 6, 2) + substring(@date, 9, 2) + @dep;

    if(select count(*)
    from Finance
    where finance_code=@sanhuuCode ) = 0
        insert into Finance
    values
        (@sanhuuCode, @dep, @date);

    declare @addedPrice integer
    select @addedPrice = (num * item_price)
    from inserted join Items
        on inserted.item_code = Items.item_code


    if ((select count(*)
    from Output
    where output_name = 'order from supponser' and finance_code=@sanhuuCode) > 0)
    begin
        update Output set output_value = output_value + @addedPrice
    end
    else
    begin
        insert into Output
        values(@sanhuuCode, 'order from supponser', @addedPrice)
    end

end
