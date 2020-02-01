SOURCE populateSale.sql;
DROP PROCEDURE if EXISTS prc_restock;

-- Your code begins here
DELIMITER $$


-- Your code ends here
DELIMITER ;

UPDATE PRODUCT
SET P_MIN=20
WHERE P_CODE in ('WR3/TT3','11QER/31','14-Q1/L3');

CALL prc_restock();
