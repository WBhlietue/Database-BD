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
    set @dep ='001'
    set @date = '2021/09/15';
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

    
    if ((select count(*)
    from Input
    where input_name = 'baraaZahialga') > 0)
    begin
        update Input set input_value = input_value + @addedPrice
    end
    else
    begin
        insert into Input
        values(@sanhuuCode, 'baraaZahialga', @addedPrice)
    end

end

insert into CustomerOrderRegister
values('Z20221208001001', 'C001', 2)


select *
from Input



delete from Input