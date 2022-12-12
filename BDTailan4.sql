-- Zahialsan baraanii tuhai medeelel

use DB;

go
create view Zahialga
as
    select ItemOr.itemOrderCode,  item_name, ItemOrderRegister.ITEM_CODE , ItemOrderRegister.num, (ItemOrderRegister.num * Items.item_price) as 'Total', suppName, order_date,dep_code
    from ItemOrderRegister
        join ItemOr on ItemOr.itemOrderCode = ItemOrderRegister.itemOrderCode
        join Items on ItemOrderRegister.item_code = Items.item_code

go
create procedure BaraaZahialga_Tailan
    (@SUPP_NAME VARCHAR(50),
    @ORDER_DATE CHAR(10),
    @Dep_code CHAR(3))
as
begin
    select @SUPP_NAME as 'supp Name', @ORDER_DATE as 'date', @Dep_code as 'depCode'
    select item_name, item_code , num, Total
    from Zahialga
    where suppName = @SUPP_NAME and order_date = @ORDER_DATE
        and dep_code = @Dep_code

    select sum(Total) as 'Total'
    from Zahialga
    where suppName = @SUPP_NAME and order_date = @ORDER_DATE
        and dep_code = @Dep_code
end
go
create procedure BaraaZahialga_TailanAll
    (
    @ORDER_DATE CHAR(10),
    @Dep_code CHAR(3))
as
begin
    select  @ORDER_DATE as 'date', @Dep_code as 'depCode'
    select suppName, item_name, item_code , num, Total
    from Zahialga
    where  order_date = @ORDER_DATE
        and dep_code = @Dep_code

end

go
create procedure BaraaZahialgaTailanWithDugaar
    (@orderCode char(15))
as
begin
    select top 1
        suppName, dep_code, order_date
    from Zahialga
    where itemOrderCode=@orderCode

    select item_name, item_code , num, Total
    from Zahialga
    where itemOrderCode=@orderCode
end


exec BaraaZahialga_Tailan 'Speedwagon Foundation', '2022/12/08', '001'
exec BaraaZahialga_TailanAll  '2022/12/08', '001'
exec BaraaZahialgaTailanWithDugaar 'B20221209001001'