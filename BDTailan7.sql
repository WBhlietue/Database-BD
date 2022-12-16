use DB;

go
create view CustomerZahialga
as
    select CusOrder.order_num, item_name, CustomerOrderRegister.ITEM_CODE , CustomerOrderRegister.num, (CustomerOrderRegister.num * Items.item_price) as 'Total', CusOrder.order_date, CusOrder.dep_code, Employee.emp_code, emp_fName
    from CustomerOrderRegister
        join CusOrder on CusOrder.order_num = CustomerOrderRegister.order_num
        join Items on CustomerOrderRegister.item_code = Items.item_code
        join Employee on Employee.emp_code = CusOrder.emp_code

go
create procedure CustomerZahialgaTailan
    (
    @ORDER_DATE CHAR(10),
    @Dep_code CHAR(3))
as
begin
    select @ORDER_DATE as 'date', @Dep_code as 'depCode'
    select order_num, emp_code, item_name, item_code , num, Total
    from CustomerZahialga
    where  order_date = @ORDER_DATE
        and dep_code = @Dep_code

    select sum(Total) as 'Total'
    from CustomerZahialga
    where order_date = @ORDER_DATE
        and dep_code = @Dep_code
end


go
create procedure CustomerZahialgaWithDugaar
    (@supCode char(15))
as
begin
    select top 1
        emp_code, dep_code, order_date, order_num
    from CustomerZahialga
    where order_num=@supCode

    select item_name, item_code , num, Total
    from CustomerZahialga
    where order_num=@supCode

    select sum ( num* Total) as Total
    from CustomerZahialga
    where order_num=@supCode
end


exec CustomerZahialgaTailan  '2022/12/08', '001'
exec CustomerZahialgaWithDugaar 'Z20221209001001'

select * from CustomerZahialga