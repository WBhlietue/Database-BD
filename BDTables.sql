create database DB;

use DB;


drop table SupponceOrderRegister
drop table SupOrder
drop table ItemOrderRegister
drop table ItemOr
drop table SalaryRegister
drop table Salary
drop table Output
drop table Input
drop table Finance
drop table EmployeeRegister
drop table EmpReg
drop table CustomerOrderRegister
drop table CusOrder
drop table Employee
drop table Items
drop table Depart

-- delete from SupponceOrderRegister
-- delete from SupOrder
-- delete from ItemOrderRegister
-- delete from ItemOr
-- delete from SalaryRegister
-- delete from Salary
-- delete from Output
-- delete from Input
-- delete from Finance
-- delete from EmployeeRegister
-- delete from EmpReg
-- delete from CustomerOrderRegister
-- delete from CusOrder
-- delete from Employee
-- delete from Items
-- delete from Depart






create table Depart
(
    dep_code char(3) primary key,
    dep_name varchar(50),
    dep_adress varchar(50)
)

create table Items
(
    item_code char(4) primary key,
    item_name varchar(50),
    item_price integer
)
create table Employee
(
    emp_code char(7) primary key,
    emp_fName varchar(50),
    emp_lName varchar(50),
    emp_register CHAR(10),
    emp_position varchar(50),
    emp_salary integer
)


create table CusOrder
(
    order_num char(15) primary key,
    dep_code char(3),
    emp_code char(7),
    order_date char(10),
    foreign key (dep_code) references Depart(dep_code),
    foreign key(emp_code) references Employee(emp_code)
)

create table CustomerOrderRegister
(
    order_num char(15),
    item_code char(4),
    num integer,
    foreign key (order_num) references CusOrder(order_num),
    foreign key (item_code) references Items(item_code)
)

create table EmpReg
(
    empReg_code char(12) primary key,
    dep_code char(3),
    empReg_date char(10),
    foreign key (dep_code) references Depart(dep_code)
)

create table EmployeeRegister
(
    empReg_code char(12) ,
    emp_code char(7),
    workTime integer,
    timeTable varchar(50),
    foreign key (empReg_code) references EmpReg(empReg_code),
    foreign key (emp_code) references Employee(emp_code)
)

create table Finance
(
    finance_code char(12) primary key,
    dep_code char(3),
    financeDate char(10),
    foreign key (dep_code) references Depart(dep_code)
)

create table Input
(
    finance_code char(12),
    input_name varchar(50),
    input_value integer,
    foreign key (finance_code) references Finance(finance_code)
)

create table Output
(
    finance_code char(12),
    output_name varchar(50),
    output_value integer,
    foreign key (finance_code) references Finance(finance_code)
)


create table Salary
(
    salary_code char(12) primary key,
    dep_code char(3),
    salary_date char(10),
    foreign key (dep_code) references Depart(dep_code)
)

create table SalaryRegister
(
    salary_code char(12),
    emp_code char(7),
    workTime integer,
    bonus integer,
    foreign key (salary_code ) references Salary(salary_code),
    foreign key (emp_code) references Employee(emp_code)
)


create table ItemOr
(
    itemOrderCode char(15) primary key,
    dep_code char(3),
    order_date char(10),
    suppName varchar(50),
    foreign key (dep_code) references Depart(dep_code)
)
create table ItemOrderRegister
(
    itemOrderCode char(15),
    item_code char(4),
    num integer,
    foreign key (itemOrderCode) references ItemOr(itemOrderCode),
    foreign key (item_code) references Items(item_code)
)

create table SupOrder
(
    order_num char(15) primary key,
    dep_code char(3),
    emp_code char(7),
    order_date char(10),
    itemOrderCode char(15),
    foreign key (itemOrderCode) references ItemOr(itemOrderCode),
    foreign key (dep_code) references Depart(dep_code),
    foreign key(emp_code) references Employee(emp_code)
)

create table SupponceOrderRegister
(
    order_num char(15),
    item_code char(4),
    num integer,
    foreign key (order_num) references SupOrder(order_num),
    foreign key (item_code) references Items(item_code)
)
