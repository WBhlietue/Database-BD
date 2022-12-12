use DB;

go
create view Niiluulelt
as
    select item_name, SupponceOrderRegister.ITEM_CODE , SupponceOrderRegister.num, (SupponceOrderRegister.num * Items.item_price) as 'Total', suppName, SupOrder.order_date, SupOrder.dep_code
    from SupponceOrderRegister
        join SupOrder on SupOrder.order_num = SupponceOrderRegister.order_num
        join ItemOr on ItemOr.itemOrderCode = SupOrder.itemOrderCode
        join Items on SupponceOrderRegister.item_code = Items.item_code

go
create procedure NIILUULELTIIN_TAILAN
    (@SUPP_NAME VARCHAR(50),
    @ORDER_DATE CHAR(10),
    @Dep_code CHAR(3))
as
begin
    select @SUPP_NAME as 'supp Name', @ORDER_DATE as 'date', @Dep_code as 'depCode'
    select item_name, item_code , num, Total
    from Niiluulelt
    where suppName = @SUPP_NAME and order_date = @ORDER_DATE
        and dep_code = @Dep_code

    select sum(Total) as 'Total'
    from Niiluulelt
    where suppName = @SUPP_NAME and order_date = @ORDER_DATE
        and dep_code = @Dep_code
end


exec NIILUULELTIIN_TAILAN 'Speedwagon Foundation', '2022/12/08', '001'
