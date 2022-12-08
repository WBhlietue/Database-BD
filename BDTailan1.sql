-- Sanhiigiin tailan

create proc FinanceTailan1
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


go
alter proc FinanceTailanOutput
    (@date char(10),
    @depCode char(3))
as
begin
    select @date as 'Date', @depCode as 'Depart'
    select output_name, output_value
    from Output
        join Finance on Finance.finance_code = Output.finance_code
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
    from Input
        join Finance on Finance.finance_code = Input.finance_code
    where financeDate = @date and dep_code = @depCode
end

go
alter proc FinanceTailanSalary
    (@date char(10),
    @depCode char(3))
as
begin
    select @date as 'Date', @depCode as 'Depart'
    select emp_position, Employee.emp_code, emp_lName, emp_fName, emp_salary, workTime , bonus, (bonus + emp_salary) as 'Total'
    from Salary
        join SalaryRegister on SalaryRegister.salary_code = Salary.salary_code
        join Employee on SalaryRegister.emp_code = Employee.emp_code
    where salary_date = @date and dep_code = @depCode
    select  sum(bonus + emp_salary) as 'Total'
    from Salary
        join SalaryRegister on SalaryRegister.salary_code = Salary.salary_code
        join Employee on SalaryRegister.emp_code = Employee.emp_code
    where salary_date = @date and dep_code = @depCode
end


use DB;

exec FinanceTailan1 '2022/12/12', '002'

exec FinanceTailanOutput '2022/12/12', '002'

exec FinanceTailanInput '2022/12/12', '002'

exec FinanceTailanSalary '2022/12/12', '001'