SOURCE populateSale.sql;
DROP PROCEDURE if EXISTS prc_add_to_invoice;

-- Your code begins here
DELIMITER $$




-- Your code ends here
DELIMITER ;

call prc_add_to_invoice(1001, 'PVC23DRT', 50);

SELECT * FROM LINE;










