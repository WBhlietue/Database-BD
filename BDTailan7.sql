use DB;

go
create view CustomerZahialga
as
    select SupOrder.order_num, item_name, SupponceOrderRegister.ITEM_CODE , SupponceOrderRegister.num, (SupponceOrderRegister.num * Items.item_price) as 'Total', suppName, SupOrder.order_date, SupOrder.dep_code
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
go
create procedure NIILUULELTIIN_TAILANallSupp
    (
    @ORDER_DATE CHAR(10),
    @Dep_code CHAR(3))
as
begin
    select @ORDER_DATE as 'date', @Dep_code as 'depCode'
    select suppName, item_name, item_code , num, Total
    from Niiluulelt
    where  order_date = @ORDER_DATE
        and dep_code = @Dep_code

end

go
create procedure NiluuleltTailanWithDugaar
    (@supCode char(15))
as
begin
    select top 1
        suppName, dep_code, order_date
    from Niiluulelt
    where order_num=@supCode

    select item_name, item_code , num, Total
    from Niiluulelt
    where order_num=@supCode
end


exec NIILUULELTIIN_TAILAN 'Speedwagon Foundation', '2022/12/08', '001'
exec NIILUULELTIIN_TAILANallSupp  '2022/12/08', '001'
exec NiluuleltTailanWithDugaar 'N20221209001001'