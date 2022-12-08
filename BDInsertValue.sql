use DB;

INSERT INTO DEPART VALUES
('001','ROC1', 'BZD 15R HOROO 8R HESEG'),
('002','ROC2','KHAN-UUL DUUREG 20R HOROO 30R HESEG'),
('003','ROC3','BAYNGOL DUUREG 8R HOROO 2R HESEG'),
('004','ROC4','SUKHBAATAR DUUREG 1R HOROO 3R HESEG'),
('005','ROC5','CHINGELTEI DUUREG 3R HOROO 17R HESEG'),
('006','ROC6','SUKHBAATAR DUUREG 16R HOROO 2R HESEG')

INSERT INTO ITEMS VALUES
('C001','AMERICANO',7000),
('C002','ESPRESSO',6500),
('C003','LATTE',8000),
('C004','LONG BLACK',7000),
('C005','CARAMEL LATTE',8500),
('C006','VANILLA LATTE',8500),
('C007','MOCHA',8500),
('C008','CAPPUCHINO',8000),
('C009','FLAT WHITE',7500),
('T001','TWININGS',3500),
('W001','BAIDAL 250 ML',5000),
('W002','ORGILUUN 500ML',3500),
('B001','POUR OVER SMALL',13000),
('B002','POUR OVER LARGE',18000),
('F001','CHICKEN SANDWICH',7300),
('F002','CHEESE BURGER',25000),
('F003','CHICKEN WHINGS',23000),
('F004','CARBONARA',24000)
('S001','COOCKIE',2500),
('S002','BROWNIE',4500),
('S003','CHEESECAKE',6500)

INSERT INTO EMPLOYEE VALUES
('Z001','USUKHBAYR','SAIKHANTAMIR','UP03112210','ZAHIRAL',1500000),
('Z002','MUNKHBADRAL','JARGALSAIKHAN','MY03272611','ZAHIRAL',1500000),
('Z003','DEVJREKH','TSOGZOL','UP03251105','ZAHIRAL',1500000),
('Z004','AMIRLAN','AMIRLANGUI','UP03320115','ZAHIRAL',1500000),
('Z005','TUVSHINJARGAL','BATBAYR','UJ03252611','ZAHIRAL',1500000),
('Z006','BOLORERDENE','SUKHBAATAR','UO04230204','ZAHIRAL',2000000),
('M001','GANBOLOR','GURRAGCHAA','UK03251948','MANAGER',1300000),
('M002','MUNKHJIN','MYANGANBAYR','DD03261548','MANAGER',1300000),
('M003','OYUNZAYA','GERELCHULUUN','MD03211359','MANAGER',1300000),
('M004','ERKHEMBAYR','DAVAADORJ','ET03321563','MANAGER',1300000),
('M005','TUSHIGERDENE','JAMIYANSUREN','HI03211124','MANAGER',1300000),
('M006','TUVSHINTUR','GANBAYR','MB03261579','MANAGER',1300000),
('N001','EGSHIGLEN','ZORIG','UK03262311','NYAGTLAN',1200000),
('N002','MARGAD','DAMID','MK03184977','NYAGTLAN',1200000),
('N003','TUSHIGBAYR','MUNGUNKHULEG','UD95154872','NYAGTLAN',1200000),
('N004','SARANTUYA','TSERENNYAM','MD89152633','NYAGTLAN',1200000),
('N005','CHIMGEE','TSERENNYAM','OK96154758','NYAGTLAN',1200000),
('N006','GANBAT','BATBAATAR','YU05261342','NYAGTLAN',1200000),
('U001','OTGONDELGER','GANBOLD','KK04154326','UNDSEN AJILTAN',900000),
('U002','BAYRTSETSEG','TSERENOCHIR','BH02351242','UNDSEN AJILTAN',900000),
('U003','ENKHJIN','BATSUURI','KJ01154236','UNDSEN AJILTAN',900000),
('U004','ENKHJIN','BATHUYG','DT98354512','UNDSEN AJILTAN',900000),
('T001','ENKHSUVD','BAYTHUYG','TE99320212','TSAGIIN AJILTAN',700000),
('T001','CHIMEDBADRAKH','BATHUYG','GH00361542','TSAGIIN AJILTAN',700000),
('T001','NOMINERDENE','SUKHBAATAR','FF00235315','TSAGIIN AJILTAN',700000),
('T001','BATTUVSHIN','CHIMEDBADRAKH','AD00362514','TSAGIIN AJILTAN',700000)

INSERT INTO CusOrder VALUES
('C20221208001U001', '001', 'U001', '2022/12/08'),
('T20221208001U001', '001', 'U001', '2022/12/08'),
('F20221208001U001', '001', 'U001', '2022/12/08'),
('C20221208002U002', '002', 'U002', '2022/12/08'),
('W20221208002U002', '002', 'U002', '2022/12/08'),
('S20221208002U002', '002', 'U002', '2022/12/08'),
('A20221208003U003', '003', 'U003', '2022/12/08'),
('A20221208003U003', '003', 'U003', '2022/12/08'),
('H20221208003U003', '003', 'U003', '2022/12/08'),
('S20221208004U004', '004', 'U004', '2022/12/08'),
('W20221208004U004', '004', 'U004', '2022/12/08'),
('A20221208004U004', '004', 'U004', '2022/12/08'),
('C20221208001U001', '001', 'U001', '2022/12/09'),
('B20221208001U001', '001', 'U001', '2022/12/09'),
('F20221208003U003', '003', 'U003', '2022/12/09'),
('M20221208003U003', '003', 'U003', '2022/12/09'),
('O20221208002U002', '002', 'U002', '2022/12/09'),
('O20221208002U002', '002', 'U002', '2022/12/09'),
('S20221208004U004', '004', 'U004', '2022/12/09'),
('H20221208004U004', '004', 'U004', '2022/12/09'),
('F20221208004U004', '004', 'U004', '2022/12/09');

INSERT INTO CustomerOrderRegister VALUES
('C20221208001U001', 'C001', 2),
('C20221208001U001', 'C002', 2),
('C20221208001U001', 'C002', 3),
('C20221209002U002', 'C003', 1),
('C20221209002U002', 'C004', 2),
('C20221209002U002', 'C006', 3),
('C20221209002U002', 'C008', 2),
('C20221210003U003', 'C007', 1),
('T20221210003U003', 'T001', 2),
('W20221210003U003', 'W001', 2),
('B20221211004U004', 'B001', 1),
('B20221212004U004', 'B001', 4),
('F20221212004U004', 'F001', 2),
('F20221213001U001', 'F002', 3),
('F20221213001U001', 'F003', 1),
('F20221213001U001', 'F004', 2),
('S20221214002U002', 'S001', 3),
('S20221214002U002', 'S002', 2),
('S20221215003U003', 'S003', 2);


INSERT INTO CustomerOrderRegister VALUES
('C20221208001U001', 'C001', 2),
('C20221208001U001', 'C002', 2),
('C20221208001U001', 'C002', 3),
('C20221209002U002', 'C003', 1),
('C20221209002U002', 'C004', 2),
('C20221209002U002', 'C006', 3),
('C20221209002U002', 'C008', 2),
('C20221210003U003', 'C007', 1),
('T20221210003U003', 'T001', 2),
('W20221210003U003', 'W001', 2),
('B20221211004U004', 'B001', 1),
('B20221212004U004', 'B001', 4),
('F20221212004U004', 'F001', 2),
('F20221213001U001', 'F002', 3),
('F20221213001U001', 'F003', 1),
('F20221213001U001', 'F004', 2),
('S20221214002U002', 'S001', 3),
('S20221214002U002', 'S002', 2),
('S20221215003U003', 'S003', 2);


INSERT INTO EmpReg VALUES
(),
('U20221212001', '001', '2022/12/08'),
('U20221212002', '002', '2022/12/08'),
('U20221212003', '003', '2022/12/08'),
('U20221212004', '004', '2022/12/08'),
('M20221212001', '001', '2022/12/08'),
('M20221212002', '002', '2022/12/08'),
('M20221212003', '003', '2022/12/08'),
('M20221212004', '004', '2022/12/08'),
('M20221212005', '005', '2022/12/08'),
('M20221212006', '006', '2022/12/08'),
('N20221212001', '001', '2022/12/08'),
('N20221212002', '002', '2022/12/08'),
('N20221212003', '003', '2022/12/08'),
('N20221212004', '004', '2022/12/08'),
('N20221212005', '005', '2022/12/08'),
('N20221212006', '006', '2022/12/08'),
('T20221212001', '001', '2022/12/08'),
('T20221212002', '002', '2022/12/08'),
('T20221212003', '003', '2022/12/08'),
('T20221212004', '004', '2022/12/08');

INSERT INTO EmployeeRegister VALUES
('U20221212001', 'U001001', 8, 'udees umnu'),
('U20221212002', 'U002002', 8, 'udees hoish'),
('U20221212003', 'U003003', 8, 'udees umnu'),
('U20221212004', 'U004004', 8, 'udees hoish'),
('M20221212001', 'M001001', 8, 'udees hoish'),
('M20221212002', 'M002002', 8, 'udees umnu'),
('M20221212003', 'M003003', 8, 'udees hoish'),
('M20221212004', 'M004004', 8, 'udees umnu'),
('M20221212005', 'M005005', 8, 'udees hoish'),
('M20221212006', 'M006006', 8, 'udees umnu'),
('N20221212001', 'N001001', 8, 'udees umnu'),
('N20221212002', 'N002002', 8, 'udees hoish'),
('N20221212003', 'N003003', 8, 'udees hoish'),
('N20221212004', 'N004004', 8, 'udees umnu'),
('N20221212005', 'N005005', 8, 'udees hoish'),
('N20221212006', 'N006006', 8, 'udees umnu'),
('T20221212001', 'T001001', 8, 'udees hoish'),
('T20221212002', 'T002002', 8, 'udees umnu'),
('T20221212003', 'T003003', 8, 'udees hoish'),
('T20221212004', 'T004004', 8, 'udees hoish');


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
('S20221212001', 'baraa materialin hudaldan awalt', 1000000),
('S20221212002', 'tog', 120000),
('S20221213003', 'ayga', 20000),
('S20221213004', 'coffee chanagch', 140000),
('S20221213001', 'baraa materialin hudaldan awalt', 300000),
('S20221213002', 'ayga', 15000),
('S20221214003', 'tawag', 20000),
('S20221214004', 'gal togooni heregsel', 300000),
('S20221214005', 'tog', 130000),
('S20221214006', 'baraa materialin hudaldan awalt', 340000),
('S20221215001', 'mini hurgugch', 400000),
('S20221215002', 'halbaga seree', 30000),
('S20221215003', 'salfetka', 20000),
('S20221215004', 'ayga', 20000),
('S20221216005', 'tog', 130000),
('S20221216006', 'baraa materialin hudaldan awalt', 200000),
('S20221216001', 'coffeenii ur', 50000),
('S20221216002', 'coffee chanagch', 140000),
('S20221217003', 'mixer', 250000),
('S20221217004', 'tawag', 20000);


