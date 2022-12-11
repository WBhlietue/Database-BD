USE DB

CREATE PROCEDURE NIILUULELTIIN_TAILAN 
(@SUPP_NAME VARCHAR(50), @ORDER_DATE CHAR(10), @Dep_code CHAR(3))
AS
BEGIN
SELECT SupponceOrderRegister.ITEM_CODE , SupponceOrderRegister.num
FROM SupponceOrderRegister
JOIN SupOrder ON SupOrder.order_num = SupponceOrderRegister.order_num
WHERE SupOrder.suppName = @SUPP_NAME AND SupOrder.order_date = @ORDER_DATE
AND SupOrder.dep_code = @Dep_code
END
GO;
