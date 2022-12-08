-- Sanhiigiin tailan

alter proc FinanceTailan1
    (@date char(10),
    @depCode char(3))
as
begin
    select @date as 'Date', @depCode as 'Depart'
    declare @orlogo int;
    select @orlogo =  sum(input_value)
    from Input
        join Finance on Finance.finance_code = Input.finance_code
    where financeDate = @date and dep_code = @depCode


    declare @zarlaga int;
    select @zarlaga = sum(output_value)
    from Output
        join Finance on Finance.finance_code = Output.finance_code
    where financeDate = @date and dep_code = @depCode
    select @orlogo as 'Orlogo', @zarlaga as 'Zarlaga', (@orlogo - @zarlaga) as 'Ashig'
end

use DB;

exec FinanceTailan1 '2022/12/12', '002'