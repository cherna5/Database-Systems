SOURCE populateSale.sql;

DROP PROCEDURE if EXISTS prc_place_order;

-- Your code begins here
DELIMITER $$




-- Your code ends here
DELIMITER ;

call prc_place_order(10012, 'PVC23DRT', 100 ,@T_INV_NUMBER, @T_LINE_NUMBER, @V_INV_TOTAL);

SELECT @T_INV_NUMBER, @T_LINE_NUMBER, @V_INV_TOTAL;












