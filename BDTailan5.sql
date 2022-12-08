-- Ajilchdiin tsagiin huvaari

alter proc GetTimeTable
    (@empCode char(7))
as
begin
    select @empCode as 'Code', (
    select top 1
            dep_code
        from
            EmployeeRegister
            join EmpReg on EmployeeRegister.empReg_code = EmpReg.empReg_code
        where emp_code = @empCode
) as 'Depart'
    select empReg_date, timeTable
    from EmployeeRegister
        join EmpReg on EmployeeRegister.empReg_code = EmpReg.empReg_code
    where emp_code = @empCode
    order by empReg_date
end

use DB;


exec GetTimeTable 'U001001'