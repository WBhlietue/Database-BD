use DB;

insert into DEPART
values
    ('001', 'ROC1', 'BZD 15R HOROO 8R HESEG'),
    ('002', 'ROC2', 'KHAN-UUL DUUREG 20R HOROO 30R HESEG'),
    ('003', 'ROC3', 'BAYNGOL DUUREG 8R HOROO 2R HESEG'),
    ('004', 'ROC4', 'SUKHBAATAR DUUREG 1R HOROO 3R HESEG'),
    ('005', 'ROC5', 'CHINGELTEI DUUREG 3R HOROO 17R HESEG'),
    ('006', 'ROC6', 'SUKHBAATAR DUUREG 16R HOROO 2R HESEG')

insert into ITEMS
values
    ('C001', 'AMERICANO', 7000),
    ('C002', 'ESPRESSO', 6500),
    ('C003', 'LATTE', 8000),
    ('C004', 'LONG BLACK', 7000),
    ('C005', 'CARAMEL LATTE', 8500),
    ('C006', 'VANILLA LATTE', 8500),
    ('C007', 'MOCHA', 8500),
    ('C008', 'CAPPUCHINO', 8000),
    ('C009', 'FLAT WHITE', 7500),
    ('T001', 'TWININGS', 3500),
    ('W001', 'BAIDAL 250 ML', 5000),
    ('W002', 'ORGILUUN 500ML', 3500),
    ('B001', 'POUR OVER SMALL', 13000),
    ('B002', 'POUR OVER LARGE', 18000),
    ('F001', 'CHICKEN SANDWICH', 7300),
    ('F002', 'CHEESE BURGER', 25000),
    ('F003', 'CHICKEN WHINGS', 23000),
    ('F004', 'CARBONARA', 24000),
    ('S001', 'COOCKIE', 2500),
    ('S002', 'BROWNIE', 4500),
    ('S003', 'CHEESECAKE', 6500)

insert into EMPLOYEE
values
    ('Z001001', 'USUKHBAYR', 'SAIKHANTAMIR', 'UP03112210', 'ZAHIRAL', 1500000),
    ('Z002001', 'MUNKHBADRAL', 'JARGALSAIKHAN', 'MY03272611', 'ZAHIRAL', 1500000),
    ('Z003001', 'DEVJREKH', 'TSOGZOL', 'UP03251105', 'ZAHIRAL', 1500000),
    ('Z004001', 'AMIRLAN', 'AMIRLANGUI', 'UP03320115', 'ZAHIRAL', 1500000),
    ('Z005001', 'TUVSHINJARGAL', 'BATBAYR', 'UJ03252611', 'ZAHIRAL', 1500000),
    ('Z006001', 'BOLORERDENE', 'SUKHBAATAR', 'UO04230204', 'ZAHIRAL', 2000000),
    ('M001001', 'GANBOLOR', 'GURRAGCHAA', 'UK03251948', 'MANAGER', 1300000),
    ('M002001', 'MUNKHJIN', 'MYANGANBAYR', 'DD03261548', 'MANAGER', 1300000),
    ('M003001', 'OYUNZAYA', 'GERELCHULUUN', 'MD03211359', 'MANAGER', 1300000),
    ('M004001', 'ERKHEMBAYR', 'DAVAADORJ', 'ET03321563', 'MANAGER', 1300000),
    ('M005001', 'TUSHIGERDENE', 'JAMIYANSUREN', 'HI03211124', 'MANAGER', 1300000),
    ('M006001', 'TUVSHINTUR', 'GANBAYR', 'MB03261579', 'MANAGER', 1300000),
    ('N001001', 'EGSHIGLEN', 'ZORIG', 'UK03262311', 'NYAGTLAN', 1200000),
    ('N002001', 'MARGAD', 'DAMID', 'MK03184977', 'NYAGTLAN', 1200000),
    ('N003001', 'TUSHIGBAYR', 'MUNGUNKHULEG', 'UD95154872', 'NYAGTLAN', 1200000),
    ('N004001', 'SARANTUYA', 'TSERENNYAM', 'MD89152633', 'NYAGTLAN', 1200000),
    ('N005001', 'CHIMGEE', 'TSERENNYAM', 'OK96154758', 'NYAGTLAN', 1200000),
    ('N006001', 'GANBAT', 'BATBAATAR', 'YU05261342', 'NYAGTLAN', 1200000),
    ('U001001', 'OTGONDELGER', 'GANBOLD', 'KK04154326', 'UNDSEN AJILTAN', 900000),
    ('U002001', 'BAYRTSETSEG', 'TSERENOCHIR', 'BH02351242', 'UNDSEN AJILTAN', 900000),
    ('U003001', 'ENKHJIN', 'BATSUURI', 'KJ01154236', 'UNDSEN AJILTAN', 900000),
    ('U004001', 'ENKHJIN', 'BATHUYG', 'DT98354512', 'UNDSEN AJILTAN', 900000),
    ('T001001', 'ENKHSUVD', 'BAYTHUYG', 'TE99320212', 'TSAGIIN AJILTAN', 700000),
    ('T001002', 'CHIMEDBADRAKH', 'BATHUYG', 'GH00361542', 'TSAGIIN AJILTAN', 700000),
    ('T002001', 'NOMINERDENE', 'SUKHBAATAR', 'FF00235315', 'TSAGIIN AJILTAN', 700000),
    ('T002002', 'BATTUVSHIN', 'CHIMEDBADRAKH', 'AD00362514', 'TSAGIIN AJILTAN', 700000)

insert into CusOrder
values
    ('Z20221208001001', '001', 'U001001', '2022/12/08'),
    ('Z20221208001002', '001', 'U001001', '2022/12/08'),
    ('Z20221208001003', '001', 'U001001', '2022/12/08'),
    ('Z20221208002001', '002', 'U002001', '2022/12/08'),
    ('Z20221208002002', '002', 'U002001', '2022/12/08'),
    ('Z20221208002003', '002', 'U002001', '2022/12/08'),
    ('Z20221208003001', '003', 'U003001', '2022/12/08'),
    ('Z20221208003002', '003', 'U003001', '2022/12/08'),
    ('Z20221208003003', '003', 'U003001', '2022/12/08'),
    ('Z20221208004001', '004', 'U004001', '2022/12/08'),
    ('Z20221208004002', '004', 'U004001', '2022/12/08'),
    ('Z20221208004003', '004', 'U004001', '2022/12/08'),
    ('Z20221209001001', '001', 'U001001', '2022/12/09'),
    ('Z20221209001002', '001', 'U001001', '2022/12/09'),
    ('Z20221209003001', '003', 'U003001', '2022/12/09'),
    ('Z20221209003003', '003', 'U003001', '2022/12/09'),
    ('Z20221209002001', '002', 'U002001', '2022/12/09'),
    ('Z20221209002002', '002', 'U002001', '2022/12/09'),
    ('Z20221209004001', '004', 'U004001', '2022/12/09'),
    ('Z20221209004002', '004', 'U004001', '2022/12/09'),
    ('Z20221209004003', '004', 'U004001', '2022/12/09');

insert into CustomerOrderRegister
values
    ('Z20221208001001', 'C001', 2),
    ('Z20221208001001', 'C002', 2),
    ('Z20221208001001', 'C002', 3),
    ('Z20221208002002', 'C003', 1),
    ('Z20221208002002', 'C004', 2),
    ('Z20221208002002', 'C006', 3),
    ('Z20221208002002', 'C008', 2),
    ('Z20221208003003', 'C007', 1),
    ('Z20221208003003', 'T001', 2),
    ('Z20221208003003', 'W001', 2),
    ('Z20221209004003', 'B001', 1),
    ('Z20221209004003', 'B001', 4),
    ('Z20221209004003', 'F001', 2),
    ('Z20221209001001', 'F002', 3),
    ('Z20221209001001', 'F003', 1),
    ('Z20221209001001', 'F004', 2),
    ('Z20221209002002', 'S001', 3),
    ('Z20221209002002', 'S002', 2),
    ('Z20221209003003', 'S003', 2);


delete from EmpReg
insert into EmpReg
values
    ('A20221212001', '001', '2022/12/12'),
    ('A20221212002', '002', '2022/12/12'),
    ('A20221212003', '003', '2022/12/12'),
    ('A20221212004', '004', '2022/12/12'),
    ('A20221212005', '005', '2022/12/12'),
    ('A20221212006', '006', '2022/12/12'),
    ('A20221213001', '001', '2022/12/13'),
    ('A20221213002', '002', '2022/12/13'),
    ('A20221213003', '003', '2022/12/13'),
    ('A20221213004', '004', '2022/12/13'),
    ('A20221213005', '005', '2022/12/13'),
    ('A20221213006', '006', '2022/12/13'),
    ('A20221214001', '001', '2022/12/14'),
    ('A20221214002', '002', '2022/12/14'),
    ('A20221214003', '003', '2022/12/14'),
    ('A20221214004', '004', '2022/12/14'),
    ('A20221214005', '005', '2022/12/14'),
    ('A20221214006', '006', '2022/12/14'),
    ('A20221215001', '001', '2022/12/15'),
    ('A20221215002', '002', '2022/12/15'),
    ('A20221215003', '003', '2022/12/15'),
    ('A20221215004', '004', '2022/12/15'),
    ('A20221215005', '005', '2022/12/15'),
    ('A20221215006', '006', '2022/12/15');;
use DB
delete from EmployeeRegister
insert into EmployeeRegister
values
    ('A20221212001', 'U001001', 8, 'udees umnu'),
    ('A20221212002', 'U002001', 8, 'udees hoish'),
    ('A20221212003', 'U003001', 8, 'udees umnu'),
    ('A20221212004', 'U004001', 8, 'udees hoish'),
    ('A20221212001', 'M001001', 8, 'udees hoish'),
    ('A20221212002', 'M002001', 8, 'udees umnu'),
    ('A20221212003', 'M003001', 8, 'udees hoish'),
    ('A20221212004', 'M004001', 8, 'udees umnu'),
    ('A20221212005', 'M005001', 8, 'udees hoish'),
    ('A20221212006', 'M006001', 8, 'udees umnu'),
    ('A20221212001', 'N001001', 8, 'udees umnu'),
    ('A20221212002', 'N002001', 8, 'udees hoish'),
    ('A20221212003', 'N003001', 8, 'udees hoish'),
    ('A20221212004', 'N004001', 8, 'udees umnu'),
    ('A20221212005', 'N005001', 8, 'udees hoish'),
    ('A20221212006', 'N006001', 8, 'udees umnu'),
    ('A20221212001', 'T001001', 8, 'udees hoish'),
    ('A20221212002', 'T002001', 8, 'udees umnu'),
    ('A20221212001', 'T001002', 8, 'udees hoish'),
    ('A20221212002', 'T002002', 8, 'udees hoish'),
    ('A20221213001', 'U001001', 8, 'udees umnu'),
    ('A20221213002', 'U002001', 8, 'udees hoish'),
    ('A20221213003', 'U003001', 8, 'udees umnu'),
    ('A20221213004', 'U004001', 8, 'udees hoish'),
    ('A20221213001', 'M001001', 8, 'udees hoish'),
    ('A20221213002', 'M002001', 8, 'udees umnu'),
    ('A20221213003', 'M003001', 8, 'udees hoish'),
    ('A20221213004', 'M004001', 8, 'udees umnu'),
    ('A20221213005', 'M005001', 8, 'udees hoish'),
    ('A20221213006', 'M006001', 8, 'udees umnu'),
    ('A20221213001', 'N001001', 8, 'udees umnu'),
    ('A20221213002', 'N002001', 8, 'udees hoish'),
    ('A20221213003', 'N003001', 8, 'udees hoish'),
    ('A20221213004', 'N004001', 8, 'udees umnu'),
    ('A20221213005', 'N005001', 8, 'udees hoish'),
    ('A20221213006', 'N006001', 8, 'udees umnu'),
    ('A20221213001', 'T001001', 8, 'udees hoish'),
    ('A20221213002', 'T002001', 8, 'udees umnu'),
    ('A20221213001', 'T001002', 8, 'udees hoish'),
    ('A20221213002', 'T002002', 8, 'udees hoish'),
    ('A20221214001', 'U001001', 8, 'udees umnu'),
    ('A20221214002', 'U002001', 8, 'udees hoish'),
    ('A20221214003', 'U003001', 8, 'udees umnu'),
    ('A20221214004', 'U004001', 8, 'udees hoish'),
    ('A20221214001', 'M001001', 8, 'udees hoish'),
    ('A20221214002', 'M002001', 8, 'udees umnu'),
    ('A20221214003', 'M003001', 8, 'udees hoish'),
    ('A20221214004', 'M004001', 8, 'udees umnu'),
    ('A20221214005', 'M005001', 8, 'udees hoish'),
    ('A20221214006', 'M006001', 8, 'udees umnu'),
    ('A20221214001', 'N001001', 8, 'udees umnu'),
    ('A20221214002', 'N002001', 8, 'udees hoish'),
    ('A20221214003', 'N003001', 8, 'udees hoish'),
    ('A20221214004', 'N004001', 8, 'udees umnu'),
    ('A20221214005', 'N005001', 8, 'udees hoish'),
    ('A20221214006', 'N006001', 8, 'udees umnu'),
    ('A20221214001', 'T001001', 8, 'udees hoish'),
    ('A20221214002', 'T002001', 8, 'udees umnu'),
    ('A20221214001', 'T001002', 8, 'udees hoish'),
    ('A20221214002', 'T002002', 8, 'udees hoish'),
    ('A20221215001', 'U001001', 8, 'udees umnu'),
    ('A20221215002', 'U002001', 8, 'udees hoish'),
    ('A20221215003', 'U003001', 8, 'udees umnu'),
    ('A20221215004', 'U004001', 8, 'udees hoish'),
    ('A20221215001', 'M001001', 8, 'udees hoish'),
    ('A20221215002', 'M002001', 8, 'udees umnu'),
    ('A20221215003', 'M003001', 8, 'udees hoish'),
    ('A20221215004', 'M004001', 8, 'udees umnu'),
    ('A20221215005', 'M005001', 8, 'udees hoish'),
    ('A20221215006', 'M006001', 8, 'udees umnu'),
    ('A20221215001', 'N001001', 8, 'udees umnu'),
    ('A20221215002', 'N002001', 8, 'udees hoish'),
    ('A20221215003', 'N003001', 8, 'udees hoish'),
    ('A20221215004', 'N004001', 8, 'udees umnu'),
    ('A20221215005', 'N005001', 8, 'udees hoish'),
    ('A20221215006', 'N006001', 8, 'udees umnu'),
    ('A20221215001', 'T001001', 8, 'udees hoish'),
    ('A20221215002', 'T002001', 8, 'udees umnu'),
    ('A20221215001', 'T001002', 8, 'udees hoish'),
    ('A20221215002', 'T002002', 8, 'udees hoish')
;

INSERT INTO Finance VALUES

('S20221212001', '001', '2022/12/12'),
('S20221212002', '002', '2022/12/12'),
('S20221213003', '003', '2022/12/13'),
('S20221213004', '004', '2022/12/13'),
('S20221213001', '001', '2022/12/13'),
('S20221213002', '002', '2022/12/13'),
('S20221214003', '003', '2022/12/14'),
('S20221214004', '004', '2022/12/14'),
('S20221214005', '005', '2022/12/14'),
('S20221214006', '006', '2022/12/14'),
('S20221215001', '001', '2022/12/15'),
('S20221215002', '002', '2022/12/15'),
('S20221215003', '003', '2022/12/15'),
('S20221215004', '004', '2022/12/15'),
('S20221216005', '005', '2022/12/16'),
('S20221216006', '006', '2022/12/16'),
('S20221216001', '001', '2022/12/16'),
('S20221216002', '002', '2022/12/16'),
('S20221217003', '003', '2022/12/17'),
('S20221217004', '004', '2022/12/17');


INSERT INTO Input VALUES
('S20221212002', 'tog', 120000),
('S20221213003', 'ayga', 20000),
('S20221213004', 'coffee chanagch', 140000),
('S20221213001', 'baraa materialin hudaldan awalt', 300000),
('S20221214005', 'tog', 130000),
('S20221214006', 'baraa materialin hudaldan awalt', 340000),
('S20221215001', 'mini hurgugch', 400000),
('S20221215002', 'halbaga seree', 30000),
('S20221215003', 'salfetka', 20000),
('S20221216001', 'coffeenii ur', 50000),

insert into Salary
values
    ('T20221212001', '001', '2022/12/12'),
    ('T20221212002', '002', '2022/12/12'),
    ('T20221212003', '003', '2022/12/12'),
    ('T20221213004', '004', '2022/12/13'),
    ('T20221213001', '001', '2022/12/13'),
    ('T20221213002', '002', '2022/12/13'),
    ('T20221213003', '003', '2022/12/13'),
    ('T20221214004', '004', '2022/12/14'),
    ('T20221214005', '005', '2022/12/14'),
    ('T20221214006', '006', '2022/12/14'),
    ('T20221215001', '001', '2022/12/15'),
    ('T20221215002', '002', '2022/12/15'),
    ('T20221215003', '003', '2022/12/15'),
    ('T20221216004', '004', '2022/12/16'),
    ('T20221216005', '005', '2022/12/16'),
    ('T20221216006', '006', '2022/12/16'),
    ('T20221216001', '001', '2022/12/16'),
    ('T20221217002', '001', '2022/12/17'),
    ('T20221217003', '001', '2022/12/17'),
    ('T20221217004', '001', '2022/12/17');
    
 INSERT INTO SalaryRegister VALUES
('T20221212001', 'U001001', 8, 100000),
('T20221212002', 'U002002', 8, 120000),
('T20221212003', 'U003003', 8, ),
('T20221213004', 'U004004', 8, ),
('T20221213001', 'U001001', 8, 50000),
('T20221213002', 'U002002', 8, ),
('T20221213003', 'U003003', 8, 100000),
('T20221214004', 'U004004', 8, ),
('T20221214005', 'U005005', 8, 120000),
('T20221214006', 'U006006', 8, ),
('T20221215001', 'U001001', 8, 70000),
('T20221215002', 'U002002', 8, 80000),
('T20221215003', 'U003003', 8, ),
('T20221216004', 'U004004', 8, 130000),
('T20221216005', 'U005005', 8, ),
('T20221216006', 'U006006', 8, 90000),
('T20221216001', 'U001001', 8, ),
('T20221217002', 'U002002', 8, 120000),
('T20221217003', 'U003003', 8, 120000),
('T20221217004', 'U004004', 8, 90000);
