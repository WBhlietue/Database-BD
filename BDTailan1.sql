-- Sanhiigiin tailan
use DB;
go;
create view FinanceView
as
    select Finance.finance_code, input_name, input_value, output_name, output_value, financeDate, dep_code
    from Finance
        join Output on Finance.finance_code = Output.finance_code
        join Input on  Finance.finance_code = Input.finance_code

go;
alter proc FinanceTailan1
    (@date char(10),
    @depCode char(3))
as
begin
    select @date as 'Date', @depCode as 'Depart'
    declare @orlogo int;
    select @orlogo =  sum(input_value)
    from FinanceView
    where financeDate = @date and dep_code = @depCode


    declare @zarlaga int;
    select @zarlaga = sum(output_value)
    from FinanceView
    where financeDate = @date and dep_code = @depCode
    select @orlogo as 'Orlogo', @zarlaga as 'Zarlaga', (@orlogo - @zarlaga) as 'Ashig'
end


go
alter proc FinanceTailanOutput
    (@date char(10),
    @depCode char(3))
as
begin
    select @date as 'Date', @depCode as 'Depart'
    select output_name, output_value
    from FinanceView
    where financeDate = @date and dep_code = @depCode
    select sum( output_value) as 'Total'
    from FinanceView
    where financeDate = @date and dep_code = @depCode
end

go
alter proc FinanceTailanInput
    (@date char(10),
    @depCode char(3))
as
begin
    select @date as 'Date', @depCode as 'Depart'
    select input_name, input_value
    from FinanceView
    where financeDate = @date and dep_code = @depCode
    select sum(input_value) as 'Total'
    from FinanceView
    where financeDate = @date and dep_code = @depCode
end

go
alter proc FinanceTailanSalary
    (@date char(10),
    @depCode char(3))
as
begin
    select @date as 'Date', @depCode as 'Depart'
    select emp_position, Employee.emp_code, emp_lName, emp_fName, emp_salary, workTime , bonus, (bonus + emp_salary*workTime) as 'Total'
    from Salary
        join SalaryRegister on SalaryRegister.salary_code = Salary.salary_code
        join Employee on SalaryRegister.emp_code = Employee.emp_code
    where salary_date = @date and dep_code = @depCode
    select sum(bonus + emp_salary) as 'Total'
    from Salary
        join SalaryRegister on SalaryRegister.salary_code = Salary.salary_code
        join Employee on SalaryRegister.emp_code = Employee.emp_code
    where salary_date = @date and dep_code = @depCode
end

select *
from Input


exec FinanceTailan1 '2022/12/10', '002'

exec FinanceTailanOutput '2022/12/10', '002'

exec FinanceTailanInput '2022/12/10', '002'

exec FinanceTailanSalary '2022/12/10', '001'