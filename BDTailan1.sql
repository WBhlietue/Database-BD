-- Sanhiigiin tailan

create proc FinanceTailan1
    (@date char(10),
    @depCode char(3))
as
begin
    select @date as 'Date', @depCode as 'Depart'
end

use DB;
select financeDate as 'Date', dep_code as 'Depart'
from Finance
where financeDate = '2022/12/12' and dep_code = '001'
