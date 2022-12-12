USE DB;

go
CREATE PROCEDURE NIILUULELTIIN_TAILAN 
(@SUPP_NAME VARCHAR(50), @ORDER_DATE CHAR(10), @Dep_code CHAR(3))
AS
BEGIN
SELECT SupponceOrderRegister.ITEM_CODE , SupponceOrderRegister.num
FROM SupponceOrderRegister
JOIN SupOrder ON SupOrder.order_num = SupponceOrderRegister.order_num
join ItemOr on ItemOr.itemOrderCode = SupOrder.itemOrderCode
WHERE ItemOr.suppName = @SUPP_NAME AND SupOrder.order_date = @ORDER_DATE
AND SupOrder.dep_code = @Dep_code
END
GO;

exec NIILUULELTIIN_TAILAN 'Speedwagon Foundation', '2022/12/08', '001'
