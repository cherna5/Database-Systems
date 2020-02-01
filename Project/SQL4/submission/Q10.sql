SOURCE populateSale.sql;
DROP PROCEDURE if EXISTS prc_expunge_cust;

-- Your code begins here
DELIMITER $$


-- Your code ends here
DELIMITER ;

CALL prc_expunge_cust(10011);
SELECT * FROM CUSTOMER;
SELECT * FROM LINE;

