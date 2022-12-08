-- Ajilchdiin medeelel

use DB;
select emp_position, Employee.emp_code, sum(workTime) as 'Work time', emp_fName from Employee
join EmployeeRegister on EmployeeRegister.emp_code = Employee.emp_code
group by Employee.emp_code, Employee.emp_fName, Employee.emp_position

