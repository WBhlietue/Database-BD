-- Tsalingiin medeelel
use DB;
go
create proc SalaryTailan
    (@emp_code char(7),
    @date char(7))
as
begin
    select emp_position, Employee.emp_code, emp_lName, emp_fName, emp_salary, sum(workTime) as 'work time' ,sum( bonus) as 'bonus', sum(bonus + emp_salary* workTime) as 'Total'
    from Salary
        join SalaryRegister on SalaryRegister.salary_code = Salary.salary_code
        join Employee on SalaryRegister.emp_code = Employee.emp_code
    where salary_date like @date+'%' and Employee.emp_code = @emp_code
    group by emp_position, Employee.emp_code, emp_lName, emp_fName, emp_salary
end

exec SalaryTailan 'U001001', '2022/12'